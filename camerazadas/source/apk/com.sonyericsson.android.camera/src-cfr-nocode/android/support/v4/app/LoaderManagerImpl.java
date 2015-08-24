/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.support.v4.util.SparseArrayCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class LoaderManagerImpl
extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    FragmentActivity mActivity;
    boolean mCreatingLoader;
    final SparseArrayCompat<LoaderInfo> mInactiveLoaders;
    final SparseArrayCompat<LoaderInfo> mLoaders;
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;

    static;

    LoaderManagerImpl(String var1, FragmentActivity var2, boolean var3);

    private LoaderInfo createAndInstallLoader(int var1, Bundle var2, LoaderManager.LoaderCallbacks<Object> var3);

    private LoaderInfo createLoader(int var1, Bundle var2, LoaderManager.LoaderCallbacks<Object> var3);

    @Override
    public void destroyLoader(int var1);

    void doDestroy();

    void doReportNextStart();

    void doReportStart();

    void doRetain();

    void doStart();

    void doStop();

    @Override
    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    void finishRetain();

    @Override
    public <D> Loader<D> getLoader(int var1);

    @Override
    public boolean hasRunningLoaders();

    @Override
    public <D> Loader<D> initLoader(int var1, Bundle var2, LoaderManager.LoaderCallbacks<D> var3);

    void installLoader(LoaderInfo var1);

    @Override
    public <D> Loader<D> restartLoader(int var1, Bundle var2, LoaderManager.LoaderCallbacks<D> var3);

    public String toString();

    void updateActivity(FragmentActivity var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class LoaderInfo
    implements Loader.OnLoadCompleteListener<Object> {
        final Bundle mArgs;
        LoaderManager.LoaderCallbacks<Object> mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        Loader<Object> mLoader;
        LoaderInfo mPendingLoader;
        boolean mReportNextStart;
        boolean mRetaining;
        boolean mRetainingStarted;
        boolean mStarted;
        final /* synthetic */ LoaderManagerImpl this$0;

        public LoaderInfo(LoaderManagerImpl var1, int var2, Bundle var3, LoaderManager.LoaderCallbacks<Object> var4);

        void callOnLoadFinished(Loader<Object> var1, Object var2);

        void destroy();

        public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

        void finishRetain();

        @Override
        public void onLoadComplete(Loader<Object> var1, Object var2);

        void reportStart();

        void retain();

        void start();

        void stop();

        public String toString();
    }

}

