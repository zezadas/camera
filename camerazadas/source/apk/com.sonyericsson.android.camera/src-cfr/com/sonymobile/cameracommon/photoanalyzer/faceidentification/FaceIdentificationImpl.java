/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.photoanalyzer.content.PhotoAnalyzerIntent
 *  com.sonymobile.photoanalyzer.service.FaceRecognitionParam
 *  com.sonymobile.photoanalyzer.service.FaceRecognitionParam$RectParams
 *  com.sonymobile.photoanalyzer.service.FaceRecognitionResult
 *  com.sonymobile.photoanalyzer.service.FaceRecognitionResult$FaceInfo
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognition
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognition$Stub
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognitionCallback
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognitionCallback$Stub
 */
package com.sonymobile.cameracommon.photoanalyzer.faceidentification;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.photoanalyzer.content.PhotoAnalyzerIntent;
import com.sonymobile.photoanalyzer.service.FaceRecognitionParam;
import com.sonymobile.photoanalyzer.service.FaceRecognitionResult;
import com.sonymobile.photoanalyzer.service.IRemoteFaceRecognition;
import com.sonymobile.photoanalyzer.service.IRemoteFaceRecognitionCallback;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

class FaceIdentificationImpl
implements FaceIdentification {
    private static final int DELAYED_IMMEDIATELY_RESULT_CALLBACK_TIME = 500;
    private static final boolean IS_FACE_ID_DEBUG = false;
    private static final String TAG = FaceIdentification.class.getSimpleName();
    private Map<String, FaceIdentification.FaceIdentificationCallback> mCallbackMap = new ConcurrentHashMap<String, FaceIdentification.FaceIdentificationCallback>();
    private ServiceConnection mConnection;
    private Context mContext;
    private Map<String, FaceCharacteristic> mFaceIdVsCharacteristicCache = new ConcurrentHashMap<String, FaceCharacteristic>();
    private Handler mHandler = new Handler();
    private boolean mIsAlreadyRequested = false;
    private volatile boolean mIsReleased = false;
    private final PrepareTask mPrepareTask;
    private final ReleaseTask mReleaseTask;
    private IRemoteFaceRecognition mRemoteFaceRecognition = null;
    private String mRequestUUid = null;
    private Map<String, List<FaceIdentification.FaceIdentificationResult>> mResultListMap = new ConcurrentHashMap<String, List<FaceIdentification.FaceIdentificationResult>>();
    private IRemoteFaceRecognitionCallback mServiceCallback;
    private ExecutorService mServiceSyncThread = Executors.newSingleThreadExecutor();

    public FaceIdentificationImpl(Context context) {
        this.mConnection = new ServiceConnection(){

            @Override
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                FaceIdentificationImpl.this.mRemoteFaceRecognition = IRemoteFaceRecognition.Stub.asInterface((IBinder)iBinder);
            }

            @Override
            public void onServiceDisconnected(ComponentName componentName) {
            }
        };
        this.mPrepareTask = new PrepareTask();
        this.mReleaseTask = new ReleaseTask();
        this.mServiceCallback = new IRemoteFaceRecognitionCallback.Stub(){

            public void onRecognitionComplete(FaceRecognitionResult faceRecognitionResult) throws RemoteException {
                FaceIdentificationImpl.this.mServiceSyncThread.execute(new CallbackTask(faceRecognitionResult));
            }
        };
        this.mContext = context;
        this.prepare();
    }

    @Override
    public void cancel() {
        this.mIsAlreadyRequested = false;
        if (this.mRequestUUid != null) {
            this.mResultListMap.remove(this.mRequestUUid);
            this.mCallbackMap.remove(this.mRequestUUid);
        }
        this.mRequestUUid = null;
    }

    @Override
    public boolean isBusy() {
        if (this.mIsReleased) {
            return true;
        }
        return this.mIsAlreadyRequested;
    }

    public void prepare() {
        Intent intent = PhotoAnalyzerIntent.getServiceIntent();
        intent.setAction("com.sonymobile.photoanalyzer.intent.action.BIND_FACE_RECOGNITION");
        this.mContext.bindService(intent, this.mConnection, 1);
        this.mServiceSyncThread.execute(this.mPrepareTask);
    }

    @Override
    public void release() {
        synchronized (this) {
            this.cancel();
            this.mIsReleased = true;
            this.mContext.unbindService(this.mConnection);
            this.mServiceSyncThread.execute(this.mReleaseTask);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void request(byte[] object, int n, int n2, int n3, int n4, List<FaceIdentification.FaceIdentificationRequest> list, FaceIdentification.FaceIdentificationCallback faceIdentificationCallback) throws IllegalArgumentException, IllegalStateException {
        synchronized (this) {
            if (object == null || list == null || list.size() == 0) {
                throw new IllegalArgumentException("YUV is null, or Request is null or empty.");
            }
            if (this.mIsAlreadyRequested) {
                throw new IllegalStateException("Currently, service is busy.");
            }
            this.mIsAlreadyRequested = true;
            object = new RequestTask((byte[])object, n, n2, n3, n4, list, faceIdentificationCallback);
            this.mServiceSyncThread.execute((Runnable)object);
            return;
        }
    }

    private class CallbackTask
    implements Runnable {
        private final FaceRecognitionResult mResult;

        public CallbackTask(FaceRecognitionResult faceRecognitionResult) {
            this.mResult = faceRecognitionResult;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            if (FaceIdentificationImpl.this.mIsReleased) {
                CameraLogger.e("TraceLog", "[TIME = " + System.currentTimeMillis() + "] [FaceIdentification..onRecognitionComplete():[Already Released]");
                FaceIdentificationImpl.this.mIsAlreadyRequested = false;
                return;
            }
            if (FaceIdentificationImpl.this.mRequestUUid == null) {
                CameraLogger.e("TraceLog", "[TIME = " + System.currentTimeMillis() + "] [FaceIdentification..onRecognitionComplete():[Already canceled]");
                FaceIdentificationImpl.this.mIsAlreadyRequested = false;
                return;
            }
            if (!FaceIdentificationImpl.this.mRequestUUid.equals(this.mResult.mRequestUuid)) {
                CameraLogger.e("TraceLog", "[TIME = " + System.currentTimeMillis() + "] [FaceIdentification..onRecognitionComplete():[Not Own Request]");
                FaceIdentificationImpl.this.mIsAlreadyRequested = false;
                return;
            }
            Iterator iterator = this.mResult.mFaceInfoList.iterator();
            do {
                Object object;
                if (!iterator.hasNext()) {
                    FaceIdentificationImpl.this.mHandler.post(new NotifyFaceIdentifiedTask((FaceIdentification.FaceIdentificationCallback)FaceIdentificationImpl.this.mCallbackMap.get(FaceIdentificationImpl.this.mRequestUUid), (List)FaceIdentificationImpl.this.mResultListMap.get(FaceIdentificationImpl.this.mRequestUUid)));
                    FaceIdentificationImpl.this.mResultListMap.remove(FaceIdentificationImpl.this.mRequestUUid);
                    FaceIdentificationImpl.this.mCallbackMap.remove(FaceIdentificationImpl.this.mRequestUUid);
                    FaceIdentificationImpl.this.mRequestUUid = null;
                    return;
                }
                FaceRecognitionResult.FaceInfo faceInfo = (FaceRecognitionResult.FaceInfo)iterator.next();
                if (faceInfo.mName != null && faceInfo.mName.length() > 0) {
                    object = faceInfo.mName;
                    FaceCharacteristic faceCharacteristic = new FaceCharacteristic((String)object);
                    FaceIdentificationImpl.this.mFaceIdVsCharacteristicCache.put(faceInfo.mFaceUuid, faceCharacteristic);
                } else {
                    object = "NO NAME";
                }
                object = new FaceIdentification.FaceIdentificationResult(faceInfo.mFaceUuid, (String)object, faceInfo.mFaceRect);
                ((List)FaceIdentificationImpl.this.mResultListMap.get(FaceIdentificationImpl.this.mRequestUUid)).add(object);
            } while (true);
        }
    }

    private static class FaceCharacteristic {
        private static final int LIFE_TIME_LIMIT_MILLIS = 3000;
        private final long mTimestampOnConstructed;
        public final String name;

        public FaceCharacteristic(String string) {
            this.name = string;
            this.mTimestampOnConstructed = System.currentTimeMillis();
        }

        public boolean isExpired() {
            if (3000 < System.currentTimeMillis() - this.mTimestampOnConstructed) {
                return true;
            }
            return false;
        }
    }

    private class NotifyFaceIdentifiedTask
    implements Runnable {
        private final FaceIdentification.FaceIdentificationCallback mCallback;
        private final List<FaceIdentification.FaceIdentificationResult> mResultList;

        public NotifyFaceIdentifiedTask(FaceIdentification.FaceIdentificationCallback faceIdentificationCallback, List<FaceIdentification.FaceIdentificationResult> list) {
            this.mCallback = faceIdentificationCallback;
            this.mResultList = list;
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onFaceIdentified(this.mResultList);
                FaceIdentificationImpl.this.mIsAlreadyRequested = false;
            }
        }
    }

    private class PrepareTask
    implements Runnable {
        private PrepareTask() {
        }

        @Override
        public void run() {
            while (!(FaceIdentificationImpl.this.mRemoteFaceRecognition != null || FaceIdentificationImpl.this.mIsReleased)) {
                try {
                    Thread.sleep(100);
                    continue;
                }
                catch (InterruptedException var1_1) {
                    var1_1.printStackTrace();
                    CameraLogger.e(TAG, "FaceIdentification.PrepareTask.run():[Interrupted]");
                    continue;
                }
                break;
            }
            return;
        }
    }

    private class ReleaseTask
    implements Runnable {
        private ReleaseTask() {
        }

        @Override
        public void run() {
            FaceIdentificationImpl.this.mRequestUUid = null;
            FaceIdentificationImpl.this.mResultListMap.clear();
            FaceIdentificationImpl.this.mCallbackMap.clear();
            FaceIdentificationImpl.this.mFaceIdVsCharacteristicCache.clear();
            FaceIdentificationImpl.this.mIsAlreadyRequested = false;
            FaceIdentificationImpl.this.mRemoteFaceRecognition = null;
        }
    }

    private class RequestTask
    implements Runnable {
        private final FaceIdentification.FaceIdentificationCallback mCallback;
        private final List<FaceIdentification.FaceIdentificationRequest> mRequestList;
        private final byte[] mYuvByteArray;
        private final int mYuvFormat;
        private final int mYuvHeight;
        private final int mYuvOrientation;
        private final int mYuvWidth;

        public RequestTask(byte[] arrby, int n, int n2, int n3, int n4, List<FaceIdentification.FaceIdentificationRequest> list, FaceIdentification.FaceIdentificationCallback faceIdentificationCallback) {
            this.mYuvByteArray = arrby;
            this.mYuvFormat = n;
            this.mYuvWidth = n2;
            this.mYuvHeight = n3;
            this.mYuvOrientation = n4;
            this.mRequestList = list;
            this.mCallback = faceIdentificationCallback;
        }

        private void eraseOldResultsInCache() {
            Iterator iterator = FaceIdentificationImpl.this.mFaceIdVsCharacteristicCache.keySet().iterator();
            while (iterator.hasNext()) {
                String string = (String)iterator.next();
                if (!((FaceCharacteristic)FaceIdentificationImpl.this.mFaceIdVsCharacteristicCache.get(string)).isExpired()) continue;
                iterator.remove();
            }
        }

        private void splitRequestsIntoResultsInCacheAndNonHitRequests(List<FaceIdentification.FaceIdentificationRequest> object, List<FaceIdentification.FaceIdentificationResult> list, List<FaceIdentification.FaceIdentificationRequest> list2) {
            for (FaceIdentification.FaceIdentificationRequest faceIdentificationRequest : object) {
                if (FaceIdentificationImpl.this.mFaceIdVsCharacteristicCache.containsKey(faceIdentificationRequest.mUUid)) {
                    list.add(new FaceIdentification.FaceIdentificationResult(faceIdentificationRequest.mUUid, ((FaceCharacteristic)FaceIdentificationImpl.access$700((FaceIdentificationImpl)FaceIdentificationImpl.this).get((Object)faceIdentificationRequest.mUUid)).name, faceIdentificationRequest.mRect));
                    continue;
                }
                list2.add(faceIdentificationRequest);
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            this.eraseOldResultsInCache();
            FaceRecognitionParam faceRecognitionParam = new FaceRecognitionParam();
            Object object = new ArrayList<FaceIdentification.FaceIdentificationRequest>();
            this.splitRequestsIntoResultsInCacheAndNonHitRequests(this.mRequestList, (List<FaceIdentification.FaceIdentificationResult>)faceRecognitionParam, (List<FaceIdentification.FaceIdentificationRequest>)object);
            if (object.isEmpty()) {
                FaceIdentificationImpl.this.mHandler.postDelayed(new NotifyFaceIdentifiedTask(this.mCallback, (List<FaceIdentification.FaceIdentificationResult>)faceRecognitionParam), 500);
                return;
            }
            Object object2 = new YuvImage(this.mYuvByteArray, this.mYuvFormat, this.mYuvWidth, this.mYuvHeight, null);
            Object object32 = new ByteArrayOutputStream();
            object2.compressToJpeg(new Rect(0, 0, this.mYuvWidth, this.mYuvHeight), 80, (OutputStream)object32);
            object2 = object32.toByteArray();
            try {
                object32.close();
            }
            catch (Exception var4_6) {
                var4_6.printStackTrace();
            }
            if (FaceIdentificationImpl.this.mIsReleased) return;
            {
                FaceIdentificationImpl.this.mRequestUUid = UUID.randomUUID().toString();
                FaceIdentificationImpl.this.mResultListMap.put(FaceIdentificationImpl.this.mRequestUUid, faceRecognitionParam);
                FaceIdentificationImpl.this.mCallbackMap.put(FaceIdentificationImpl.this.mRequestUUid, this.mCallback);
                faceRecognitionParam = new FaceRecognitionParam();
                faceRecognitionParam.mRequestUuid = FaceIdentificationImpl.this.mRequestUUid;
                faceRecognitionParam.mJpgbinary = object2;
                faceRecognitionParam.mAngle = this.mYuvOrientation;
                object2 = new ArrayList();
                for (Object object32 : object) {
                    FaceRecognitionParam.RectParams rectParams = new FaceRecognitionParam.RectParams();
                    rectParams.mFaceUuid = object32.mUUid;
                    rectParams.mFaceRect = object32.mRect;
                    object2.add(rectParams);
                }
            }
            faceRecognitionParam.mRectList.addAll(object2);
            try {
                FaceIdentificationImpl.this.mRemoteFaceRecognition.requestFaceRecognition(faceRecognitionParam, FaceIdentificationImpl.this.mServiceCallback);
                return;
            }
            catch (RemoteException var1_3) {
                var1_3.printStackTrace();
                FaceIdentificationImpl.this.mHandler.post(new NotifyFaceIdentifiedTask((FaceIdentification.FaceIdentificationCallback)FaceIdentificationImpl.this.mCallbackMap.get(FaceIdentificationImpl.this.mRequestUUid), null));
                FaceIdentificationImpl.this.mResultListMap.remove(FaceIdentificationImpl.this.mRequestUUid);
                FaceIdentificationImpl.this.mCallbackMap.remove(FaceIdentificationImpl.this.mRequestUUid);
                FaceIdentificationImpl.this.mRequestUUid = null;
                FaceIdentificationImpl.this.mIsAlreadyRequested = false;
                return;
            }
        }
    }

}

