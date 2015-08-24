/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
abstract class ModernAsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static final InternalHandler sHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final FutureTask<Result> mFuture;
    private volatile Status mStatus;
    private final AtomicBoolean mTaskInvoked;
    private final WorkerRunnable<Params, Result> mWorker;

    static;

    public ModernAsyncTask();

    static /* synthetic */ AtomicBoolean access$200(ModernAsyncTask var0);

    static /* synthetic */ Object access$300(ModernAsyncTask var0, Object var1);

    static /* synthetic */ void access$400(ModernAsyncTask var0, Object var1);

    static /* synthetic */ void access$500(ModernAsyncTask var0, Object var1);

    public static void execute(Runnable var0);

    private void finish(Result var1);

    public static void init();

    private Result postResult(Result var1);

    private void postResultIfNotInvoked(Result var1);

    public static void setDefaultExecutor(Executor var0);

    public final boolean cancel(boolean var1);

    protected /* varargs */ abstract Result doInBackground(Params ... var1);

    public final /* varargs */ ModernAsyncTask<Params, Progress, Result> execute(Params ... var1);

    public final /* varargs */ ModernAsyncTask<Params, Progress, Result> executeOnExecutor(Executor var1, Params ... var2);

    public final Result get() throws InterruptedException, ExecutionException;

    public final Result get(long var1, TimeUnit var3) throws InterruptedException, ExecutionException, TimeoutException;

    public final Status getStatus();

    public final boolean isCancelled();

    protected void onCancelled();

    protected void onCancelled(Result var1);

    protected void onPostExecute(Result var1);

    protected void onPreExecute();

    protected /* varargs */ void onProgressUpdate(Progress ... var1);

    protected final /* varargs */ void publishProgress(Progress ... var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class AsyncTaskResult<Data> {
        final Data[] mData;
        final ModernAsyncTask mTask;

        /* varargs */ AsyncTaskResult(ModernAsyncTask var1, Data ... var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class InternalHandler
    extends Handler {
        private InternalHandler();

        /* synthetic */ InternalHandler( var1);

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Status
    extends Enum<Status> {
        private static final /* synthetic */ Status[] $VALUES;
        public static final /* enum */ Status FINISHED;
        public static final /* enum */ Status PENDING;
        public static final /* enum */ Status RUNNING;

        static;

        private Status();

        public static Status valueOf(String var0);

        public static Status[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class WorkerRunnable<Params, Result>
    implements Callable<Result> {
        Params[] mParams;

        private WorkerRunnable();

        /* synthetic */ WorkerRunnable( var1);
    }

}

