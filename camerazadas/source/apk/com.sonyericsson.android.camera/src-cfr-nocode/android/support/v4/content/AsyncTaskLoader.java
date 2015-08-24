/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.support.v4.content.Loader;
import android.support.v4.content.ModernAsyncTask;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;

/*
 * Exception performing whole class analysis.
 */
public abstract class AsyncTaskLoader<D>
extends Loader<D> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncTaskLoader";
    volatile AsyncTaskLoader<D> mCancellingTask;
    Handler mHandler;
    long mLastLoadCompleteTime;
    volatile AsyncTaskLoader<D> mTask;
    long mUpdateThrottle;

    public AsyncTaskLoader(Context var1);

    public boolean cancelLoad();

    void dispatchOnCancelled(AsyncTaskLoader<D> var1, D var2);

    void dispatchOnLoadComplete(AsyncTaskLoader<D> var1, D var2);

    @Override
    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    void executePendingTask();

    public abstract D loadInBackground();

    public void onCanceled(D var1);

    @Override
    protected void onForceLoad();

    protected D onLoadInBackground();

    public void setUpdateThrottle(long var1);

    public void waitForLoader();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class LoadTask
    extends ModernAsyncTask<Void, Void, D>
    implements Runnable {
        private CountDownLatch done;
        D result;
        final /* synthetic */ AsyncTaskLoader this$0;
        boolean waiting;

        LoadTask(AsyncTaskLoader var1);

        static /* synthetic */ CountDownLatch access$000(LoadTask var0);

        protected /* varargs */ D doInBackground(Void ... var1);

        @Override
        protected void onCancelled();

        @Override
        protected void onPostExecute(D var1);

        @Override
        public void run();
    }

}

