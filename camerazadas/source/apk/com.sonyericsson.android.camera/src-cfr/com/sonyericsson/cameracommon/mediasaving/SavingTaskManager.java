/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor
 *  com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor$Parameters
 *  com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor$Results
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.ThreadSafeOutputStream;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class SavingTaskManager {
    private static final int MSG_ON_STORE_CALLBACK = 1;
    private static final String TAG = SavingTaskManager.class.getSimpleName();
    protected Activity mActivity = null;
    private String mCurrentStorage;
    private ExecutorService mExecutor;
    private Object mExecutorLock = new Object();
    private final boolean mIsOneShotPhoto;
    private Queue<SavingTask> mSavingTaskQueue = new ConcurrentLinkedQueue<SavingTask>();
    private CameraStorageManager mStorageManager = null;
    private StoreDataHandler mStoreDataHandler = null;
    private Thread mStoreVideoThread = null;
    private MediaProviderUpdator mUpdator;

    public SavingTaskManager(Activity activity, CameraStorageManager cameraStorageManager, boolean bl) {
        this.mActivity = activity;
        this.mStorageManager = cameraStorageManager;
        this.mCurrentStorage = cameraStorageManager.getCurrentStorage();
        DcfPathBuilder.getInstance().resetStatus();
        this.mStoreDataHandler = new StoreDataHandler();
        this.mUpdator = new MediaProviderUpdator(activity, bl);
        this.mIsOneShotPhoto = bl;
    }

    static /* synthetic */ String access$500(SavingTaskManager savingTaskManager) {
        return savingTaskManager.mCurrentStorage;
    }

    static /* synthetic */ Thread access$802(SavingTaskManager savingTaskManager, Thread thread) {
        savingTaskManager.mStoreVideoThread = thread;
        return thread;
    }

    private void popPhotoSavingTask(SavingTask savingTask) {
        this.mSavingTaskQueue.remove(savingTask);
    }

    private void pushPhotoSavingTask(byte[] arrby, PhotoSavingRequest photoSavingRequest) {
        this.request(new PhotoSavingTask(photoSavingRequest));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void shutdownExecutor() {
        Object object = this.mExecutorLock;
        synchronized (object) {
            if (this.mExecutor != null) {
                this.mExecutor.shutdown();
                this.mExecutor = null;
                this.mSavingTaskQueue.clear();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void submitExecutor(SavingTask savingTask) {
        Object object = this.mExecutorLock;
        synchronized (object) {
            if (this.mExecutor == null) {
                this.mExecutor = Executors.newSingleThreadExecutor();
            }
            this.mExecutor.execute(savingTask);
            return;
        }
    }

    public boolean canPushStoreTask() {
        if (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory() < Runtime.getRuntime().maxMemory() * 7 / 10) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void cancelSavingVideoTask() {
        if (this.mStoreVideoThread == null) return;
        this.mStoreVideoThread.interrupt();
        try {
            this.mStoreVideoThread.join();
        }
        catch (InterruptedException interruptedException) {
            CameraLogger.e(TAG, "cancelSavingVideoTask interrupted.", interruptedException);
            return;
        }
        finally {
            this.mStoreVideoThread = null;
        }
        return;
    }

    public long getExpectedTotalSavedPicturesSize() {
        long l = 0;
        Iterator<SavingTask> iterator = new LinkedList<SavingTask>(this.mSavingTaskQueue).iterator();
        while (iterator.hasNext()) {
            l+=(long)iterator.next().getExpectedFileSize();
        }
        return l;
    }

    protected void notifyStoreComplete(StoreDataResult storeDataResult) {
        Message message = Message.obtain();
        message.what = 1;
        message.obj = storeDataResult;
        if (this.mStoreDataHandler != null) {
            this.mStoreDataHandler.sendMessage(message);
        }
    }

    public void onResume() {
        DcfPathBuilder.getInstance().resetStatus();
    }

    public void release() {
        this.mStoreDataHandler = null;
    }

    public void request(SavingTask savingTask) {
        this.mSavingTaskQueue.add(savingTask);
        this.submitExecutor(savingTask);
    }

    public void storePicture(final PhotoSavingRequest photoSavingRequest) {
        photoSavingRequest.log();
        if (photoSavingRequest.getImageData() != null) {
            this.pushPhotoSavingTask(photoSavingRequest.getImageData(), photoSavingRequest);
            return;
        }
        CameraLogger.e(TAG, "### can't store a specified image file.");
        CameraLogger.e(TAG, "### so, notify a failure of storing the specified image file.");
        this.mActivity.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                photoSavingRequest.notifyStoreFailed(MediaSavingResult.FAIL);
                SavingTaskManager.this.shutdownExecutor();
                SavingTaskManager.this.mStorageManager.updateRemain(0, true);
            }
        });
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public void storeVideo(VideoSavingRequest var1_1) {
        block6 : {
            var1_1.log();
            var1_1.getFilePath();
            if (this.mStoreVideoThread != null) {
                try {
                    this.mStoreVideoThread.join(3000);
                    if (this.mStoreVideoThread != null) {
                        CameraLogger.e(SavingTaskManager.TAG, "storeVideo: mStoreVideoThread timeout.");
                        this.mStorageManager.updateRemain(0, true);
                        return;
                    } else {
                        ** GOTO lbl14
                    }
                }
                catch (InterruptedException var2_3) {}
                break block6;
                finally {
                    this.mStoreVideoThread = null;
                }
            }
        }
        this.mStoreVideoThread = new Thread((Runnable)new SavingVideoTask(var1_1), "Store video thread");
        this.mStoreVideoThread.setPriority(1);
        this.mStoreVideoThread.start();
    }

    public static enum GeoMode {
        GEO_ON,
        GEO_OFF,
        GEO_RESHOW;
        

        private GeoMode() {
        }
    }

    class ImageToFile {
        private byte[] mJpegData;
        ThreadSafeOutputStream mOutputStream;
        private final String mPath;
        private final Uri mUri;
        final /* synthetic */ SavingTaskManager this$0;

        public ImageToFile(SavingTaskManager savingTaskManager, byte[] arrby, Uri uri) {
            this.this$0 = savingTaskManager;
            this.mOutputStream = null;
            this.mJpegData = arrby;
            this.mUri = uri;
            if ("file".equals(uri.getScheme())) {
                this.mPath = this.mUri.getPath();
                return;
            }
            this.mPath = null;
        }

        public ImageToFile(SavingTaskManager savingTaskManager, byte[] arrby, String string) {
            this.this$0 = savingTaskManager;
            this.mOutputStream = null;
            this.mJpegData = arrby;
            this.mPath = string;
            this.mUri = null;
        }

        private OutputStream createOutputStream() throws FileNotFoundException {
            if (this.mPath != null) {
                return new FileOutputStream(this.mPath);
            }
            if (this.mUri != null) {
                return this.this$0.mActivity.getContentResolver().openOutputStream(this.mUri);
            }
            CameraLogger.e(TAG, "Save path and uri is not set.");
            return null;
        }

        public String getPath() {
            if (this.mPath != null) {
                return this.mPath;
            }
            if (this.mUri != null) {
                return this.mUri.getPath();
            }
            CameraLogger.e(TAG, "Save path and uri is not set.");
            return null;
        }

        /*
         * Exception decompiling
         */
        public boolean storeData(Exception var1_1) {
            // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
            // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [6[TRYBLOCK]], but top level block is 16[CATCHBLOCK]
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
            // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
            // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
            // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
            // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
            // org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:644)
            // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:727)
            // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
            // org.benf.cfr.reader.Main.doJar(Main.java:126)
            // org.benf.cfr.reader.Main.main(Main.java:178)
            throw new IllegalStateException("Decompilation failed");
        }

    }

    public class PhotoSavingTask
    extends SavingTask {
        final PhotoSavingRequest mRequest;

        public PhotoSavingTask(PhotoSavingRequest photoSavingRequest) {
            super(photoSavingRequest);
            this.mRequest = photoSavingRequest;
        }

        @Override
        protected int getExpectedFileSize() {
            if (this.getResult() != null) {
                return 0;
            }
            return this.mRequest.getImageData().length;
        }

        @Override
        protected boolean preProccess() {
            SuperResolutionProcessor superResolutionProcessor;
            if (this.mRequest.common.doPostProcessing && (superResolutionProcessor = SuperResolutionProcessor.create()) != null) {
                SuperResolutionProcessor.Parameters parameters = new SuperResolutionProcessor.Parameters(this.mRequest.common.width, this.mRequest.common.height, 256);
                parameters = superResolutionProcessor.process(this.mRequest.getImageData(), parameters);
                this.mRequest.setImageData(parameters.imageBuffer);
                superResolutionProcessor.release();
            }
            return true;
        }

        @Override
        protected void register(SavingTask.Result result) {
            if (result.result == MediaSavingResult.SUCCESS) {
                if (!SavingTaskManager.this.mIsOneShotPhoto) {
                    MediaProviderUpdator.sendBroadcastCameraShot(SavingTaskManager.this.mActivity, result.uri, false);
                }
                SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(result.result, result.uri, this.mRequest));
                return;
            }
            SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(result.result, Uri.EMPTY, this.mRequest));
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        protected SavingTask.Result store(Uri uri) {
            MediaSavingResult mediaSavingResult;
            Uri uri2;
            block5 : {
                if ("file".equals(uri.getScheme())) {
                    this.mRequest.setFilePath(uri.getPath());
                }
                Uri uri3 = null;
                uri2 = null;
                mediaSavingResult = MediaSavingResult.FAIL;
                if (!this.writeToStorage(this.mRequest.getImageData(), uri)) return new SavingTask.Result(mediaSavingResult, uri2);
                boolean bl = this.mRequest.getExtraOutput() == null ? true : this.mRequest.common.addToMediaStore;
                if (!bl) {
                    uri2 = this.mRequest.getExtraOutput();
                    mediaSavingResult = MediaSavingResult.SUCCESS;
                    return new SavingTask.Result(mediaSavingResult, uri2);
                }
                uri2 = uri3;
                try {
                    uri = SavingTaskManager.this.mUpdator.insertPictureContentManager(this.mRequest, "");
                    if (uri == null) break block5;
                    uri2 = uri;
                    mediaSavingResult = MediaSavingResult.SUCCESS;
                    uri2 = uri;
                }
                catch (SQLiteFullException var1_2) {
                    mediaSavingResult = MediaSavingResult.FAIL_MEMORY_FULL;
                    return new SavingTask.Result(mediaSavingResult, uri2);
                }
                return new SavingTask.Result(mediaSavingResult, uri2);
            }
            uri2 = uri;
            mediaSavingResult = MediaSavingResult.FAIL;
            uri2 = uri;
            return new SavingTask.Result(mediaSavingResult, uri2);
        }
    }

    public static enum SavedFileType {
        PHOTO,
        PHOTO_DURING_REC,
        VIDEO,
        BURST,
        TIME_SHIFT;
        

        private SavedFileType() {
        }
    }

    public abstract class SavingTask
    implements Runnable {
        private final SavingRequest mRequest;
        private Result mResult;

        public SavingTask(SavingRequest savingRequest) {
            this.mRequest = savingRequest;
            this.mResult = null;
        }

        protected Uri assignOutput() {
            if (this.mRequest.getExtraOutput() != null) {
                return this.mRequest.getExtraOutput();
            }
            String string = DcfPathBuilder.getInstance().getPhotoPath(SavingTaskManager.this.mActivity);
            if (string == null) {
                return null;
            }
            return Uri.fromFile(new File(string));
        }

        protected abstract int getExpectedFileSize();

        protected Result getResult() {
            return this.mResult;
        }

        protected final void notifyResult(MediaSavingResult mediaSavingResult, Uri uri) {
            SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(mediaSavingResult, uri, this.mRequest));
        }

        protected abstract boolean preProccess();

        protected abstract void register(Result var1);

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public final void run() {
            this.mResult = new Result(MediaSavingResult.FAIL, Uri.EMPTY);
            if (this.preProccess()) {
                Uri uri = this.assignOutput();
                if (uri != null) {
                    this.mResult = this.store(uri);
                } else {
                    SavingTaskManager.this.mActivity.runOnUiThread(new Runnable(){

                        @Override
                        public void run() {
                            SavingTaskManager.this.mStorageManager.updateRemain(0, true);
                        }
                    });
                }
            }
            this.register(this.mResult);
            SavingTaskManager.this.popPhotoSavingTask(this);
        }

        protected abstract Result store(Uri var1);

        protected boolean writeToStorage(byte[] arrby, Uri uri) {
            return new ImageToFile(SavingTaskManager.this, arrby, uri).storeData(null);
        }

        protected class Result {
            public final MediaSavingResult result;
            public final Uri uri;

            public Result(MediaSavingResult mediaSavingResult, Uri uri) {
                this.result = mediaSavingResult;
                this.uri = uri;
            }
        }

    }

    class SavingVideoTask
    implements Runnable {
        final VideoSavingRequest mRequest;

        SavingVideoTask(VideoSavingRequest videoSavingRequest) {
            this.mRequest = videoSavingRequest;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            var1_1 = MediaSavingResult.FAIL;
            var2_3 = var1_1 = null;
            try {
                if (this.mRequest.getExtraOutput() == null) ** GOTO lbl10
                var2_3 = var1_1;
                if (this.mRequest.common.addToMediaStore) ** GOTO lbl10
                var2_3 = var1_1;
                var1_1 = this.mRequest.getExtraOutput();
                ** GOTO lbl13
lbl10: // 2 sources:
                var2_3 = var1_1;
                var1_1 = SavingTaskManager.access$200(SavingTaskManager.this).insertVideoAndSendIntent(this.mRequest, "", true);
lbl13: // 2 sources:
                if (var1_1 != null) {
                    var2_3 = var1_1;
                    var3_4 = MediaSavingResult.SUCCESS;
                } else {
                    var2_3 = var1_1;
                    var3_4 = MediaSavingResult.FAIL;
                }
            }
            catch (SQLiteFullException var1_2) {
                var3_4 = MediaSavingResult.FAIL_MEMORY_FULL;
                var1_1 = var2_3;
            }
            SavingTaskManager.this.notifyStoreComplete(new StoreDataResult(var3_4, (Uri)var1_1, this.mRequest));
            SavingTaskManager.access$802(SavingTaskManager.this, null);
        }
    }

    private static class StoreDataHandler
    extends Handler {
        private StoreDataHandler() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void handleMessage(Message object) {
            switch (object.what) {
                default: {
                    return;
                }
                case 1: {
                    object = (StoreDataResult)object.obj;
                    if (object == null || object.savingRequest == null) return;
                    object.savingRequest.notifyStoreResult((StoreDataResult)object);
                    return;
                }
            }
        }
    }

}

