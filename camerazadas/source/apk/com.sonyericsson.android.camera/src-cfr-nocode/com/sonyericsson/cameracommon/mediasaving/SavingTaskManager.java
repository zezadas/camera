/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.app.Activity;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.ThreadSafeOutputStream;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.updator.MediaProviderUpdator;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SavingTaskManager {
    private static final int MSG_ON_STORE_CALLBACK = 1;
    private static final String TAG;
    protected Activity mActivity;
    private String mCurrentStorage;
    private ExecutorService mExecutor;
    private Object mExecutorLock;
    private final boolean mIsOneShotPhoto;
    private Queue<SavingTask> mSavingTaskQueue;
    private CameraStorageManager mStorageManager;
    private StoreDataHandler mStoreDataHandler;
    private Thread mStoreVideoThread;
    private MediaProviderUpdator mUpdator;

    static;

    public SavingTaskManager(Activity var1, CameraStorageManager var2, boolean var3);

    static /* synthetic */ CameraStorageManager access$000(SavingTaskManager var0);

    static /* synthetic */ void access$100(SavingTaskManager var0, SavingTask var1);

    static /* synthetic */ MediaProviderUpdator access$200(SavingTaskManager var0);

    static /* synthetic */ boolean access$300(SavingTaskManager var0);

    static /* synthetic */ String access$400();

    static /* synthetic */ String access$500(SavingTaskManager var0);

    static /* synthetic */ void access$700(SavingTaskManager var0);

    static /* synthetic */ Thread access$802(SavingTaskManager var0, Thread var1);

    private void popPhotoSavingTask(SavingTask var1);

    private void pushPhotoSavingTask(byte[] var1, PhotoSavingRequest var2);

    private void shutdownExecutor();

    private void submitExecutor(SavingTask var1);

    public boolean canPushStoreTask();

    void cancelSavingVideoTask();

    public long getExpectedTotalSavedPicturesSize();

    protected void notifyStoreComplete(StoreDataResult var1);

    public void onResume();

    public void release();

    public void request(SavingTask var1);

    public void storePicture(PhotoSavingRequest var1);

    public void storeVideo(VideoSavingRequest var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class GeoMode
    extends Enum<GeoMode> {
        private static final /* synthetic */ GeoMode[] $VALUES;
        public static final /* enum */ GeoMode GEO_OFF;
        public static final /* enum */ GeoMode GEO_ON;
        public static final /* enum */ GeoMode GEO_RESHOW;

        static;

        private GeoMode();

        public static GeoMode valueOf(String var0);

        public static GeoMode[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class ImageToFile {
        private byte[] mJpegData;
        ThreadSafeOutputStream mOutputStream;
        private final String mPath;
        private final Uri mUri;
        final /* synthetic */ SavingTaskManager this$0;

        public ImageToFile(SavingTaskManager var1, byte[] var2, Uri var3);

        public ImageToFile(SavingTaskManager var1, byte[] var2, String var3);

        private OutputStream createOutputStream() throws FileNotFoundException;

        public String getPath();

        public boolean storeData(Exception var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class PhotoSavingTask
    extends SavingTask {
        final PhotoSavingRequest mRequest;
        final /* synthetic */ SavingTaskManager this$0;

        public PhotoSavingTask(SavingTaskManager var1, PhotoSavingRequest var2);

        @Override
        protected int getExpectedFileSize();

        @Override
        protected boolean preProccess();

        @Override
        protected void register(SavingTask.Result var1);

        @Override
        protected SavingTask.Result store(Uri var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class SavedFileType
    extends Enum<SavedFileType> {
        private static final /* synthetic */ SavedFileType[] $VALUES;
        public static final /* enum */ SavedFileType BURST;
        public static final /* enum */ SavedFileType PHOTO;
        public static final /* enum */ SavedFileType PHOTO_DURING_REC;
        public static final /* enum */ SavedFileType TIME_SHIFT;
        public static final /* enum */ SavedFileType VIDEO;

        static;

        private SavedFileType();

        public static SavedFileType valueOf(String var0);

        public static SavedFileType[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public abstract class SavingTask
    implements Runnable {
        private final SavingRequest mRequest;
        private Result mResult;
        final /* synthetic */ SavingTaskManager this$0;

        public SavingTask(SavingTaskManager var1, SavingRequest var2);

        protected Uri assignOutput();

        protected abstract int getExpectedFileSize();

        protected Result getResult();

        protected final void notifyResult(MediaSavingResult var1, Uri var2);

        protected abstract boolean preProccess();

        protected abstract void register(Result var1);

        @Override
        public final void run();

        protected abstract Result store(Uri var1);

        protected boolean writeToStorage(byte[] var1, Uri var2);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        protected class Result {
            public final MediaSavingResult result;
            final /* synthetic */ SavingTask this$1;
            public final Uri uri;

            public Result(SavingTask var1, MediaSavingResult var2, Uri var3);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class SavingVideoTask
    implements Runnable {
        final VideoSavingRequest mRequest;
        final /* synthetic */ SavingTaskManager this$0;

        SavingVideoTask(SavingTaskManager var1, VideoSavingRequest var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class StoreDataHandler
    extends Handler {
        private StoreDataHandler();

        /* synthetic */ StoreDataHandler( var1);

        @Override
        public void handleMessage(Message var1);
    }

}

