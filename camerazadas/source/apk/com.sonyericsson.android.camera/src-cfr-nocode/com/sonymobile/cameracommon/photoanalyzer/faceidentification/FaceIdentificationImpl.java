/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.photoanalyzer.service.FaceRecognitionResult
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognition
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognitionCallback
 *  com.sonymobile.photoanalyzer.service.IRemoteFaceRecognitionCallback$Stub
 */
package com.sonymobile.cameracommon.photoanalyzer.faceidentification;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.photoanalyzer.service.FaceRecognitionResult;
import com.sonymobile.photoanalyzer.service.IRemoteFaceRecognition;
import com.sonymobile.photoanalyzer.service.IRemoteFaceRecognitionCallback;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class FaceIdentificationImpl
implements FaceIdentification {
    private static final int DELAYED_IMMEDIATELY_RESULT_CALLBACK_TIME = 500;
    private static final boolean IS_FACE_ID_DEBUG = false;
    private static final String TAG;
    private Map<String, FaceIdentification.FaceIdentificationCallback> mCallbackMap;
    private ServiceConnection mConnection;
    private Context mContext;
    private Map<String, FaceCharacteristic> mFaceIdVsCharacteristicCache;
    private Handler mHandler;
    private boolean mIsAlreadyRequested;
    private volatile boolean mIsReleased;
    private final PrepareTask mPrepareTask;
    private final ReleaseTask mReleaseTask;
    private IRemoteFaceRecognition mRemoteFaceRecognition;
    private String mRequestUUid;
    private Map<String, List<FaceIdentification.FaceIdentificationResult>> mResultListMap;
    private IRemoteFaceRecognitionCallback mServiceCallback;
    private ExecutorService mServiceSyncThread;

    static;

    public FaceIdentificationImpl(Context var1);

    static /* synthetic */ IRemoteFaceRecognition access$000(FaceIdentificationImpl var0);

    static /* synthetic */ IRemoteFaceRecognition access$002(FaceIdentificationImpl var0, IRemoteFaceRecognition var1);

    static /* synthetic */ boolean access$100(FaceIdentificationImpl var0);

    static /* synthetic */ Handler access$1000(FaceIdentificationImpl var0);

    static /* synthetic */ IRemoteFaceRecognitionCallback access$1100(FaceIdentificationImpl var0);

    static /* synthetic */ ExecutorService access$1200(FaceIdentificationImpl var0);

    static /* synthetic */ String access$200();

    static /* synthetic */ String access$400(FaceIdentificationImpl var0);

    static /* synthetic */ String access$402(FaceIdentificationImpl var0, String var1);

    static /* synthetic */ Map access$500(FaceIdentificationImpl var0);

    static /* synthetic */ Map access$600(FaceIdentificationImpl var0);

    static /* synthetic */ Map access$700(FaceIdentificationImpl var0);

    static /* synthetic */ boolean access$802(FaceIdentificationImpl var0, boolean var1);

    @Override
    public void cancel();

    @Override
    public boolean isBusy();

    public void prepare();

    @Override
    public void release();

    @Override
    public void request(byte[] var1, int var2, int var3, int var4, int var5, List<FaceIdentification.FaceIdentificationRequest> var6, FaceIdentification.FaceIdentificationCallback var7) throws IllegalArgumentException, IllegalStateException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CallbackTask
    implements Runnable {
        private final FaceRecognitionResult mResult;
        final /* synthetic */ FaceIdentificationImpl this$0;

        public CallbackTask(FaceIdentificationImpl var1, FaceRecognitionResult var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class FaceCharacteristic {
        private static final int LIFE_TIME_LIMIT_MILLIS = 3000;
        private final long mTimestampOnConstructed;
        public final String name;

        public FaceCharacteristic(String var1);

        public boolean isExpired();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyFaceIdentifiedTask
    implements Runnable {
        private final FaceIdentification.FaceIdentificationCallback mCallback;
        private final List<FaceIdentification.FaceIdentificationResult> mResultList;
        final /* synthetic */ FaceIdentificationImpl this$0;

        public NotifyFaceIdentifiedTask(FaceIdentificationImpl var1, FaceIdentification.FaceIdentificationCallback var2, List<FaceIdentification.FaceIdentificationResult> var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PrepareTask
    implements Runnable {
        final /* synthetic */ FaceIdentificationImpl this$0;

        private PrepareTask(FaceIdentificationImpl var1);

        /* synthetic */ PrepareTask(FaceIdentificationImpl var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ReleaseTask
    implements Runnable {
        final /* synthetic */ FaceIdentificationImpl this$0;

        private ReleaseTask(FaceIdentificationImpl var1);

        /* synthetic */ ReleaseTask(FaceIdentificationImpl var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RequestTask
    implements Runnable {
        private final FaceIdentification.FaceIdentificationCallback mCallback;
        private final List<FaceIdentification.FaceIdentificationRequest> mRequestList;
        private final byte[] mYuvByteArray;
        private final int mYuvFormat;
        private final int mYuvHeight;
        private final int mYuvOrientation;
        private final int mYuvWidth;
        final /* synthetic */ FaceIdentificationImpl this$0;

        public RequestTask(FaceIdentificationImpl var1, byte[] var2, int var3, int var4, int var5, int var6, List<FaceIdentification.FaceIdentificationRequest> var7, FaceIdentification.FaceIdentificationCallback var8);

        private void eraseOldResultsInCache();

        private void splitRequestsIntoResultsInCacheAndNonHitRequests(List<FaceIdentification.FaceIdentificationRequest> var1, List<FaceIdentification.FaceIdentificationResult> var2, List<FaceIdentification.FaceIdentificationRequest> var3);

        @Override
        public void run();
    }

}

