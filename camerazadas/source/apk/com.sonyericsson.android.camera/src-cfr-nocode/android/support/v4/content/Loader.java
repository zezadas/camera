/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import android.database.ContentObserver;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/*
 * Exception performing whole class analysis.
 */
public class Loader<D> {
    boolean mAbandoned;
    boolean mContentChanged;
    Context mContext;
    int mId;
    OnLoadCompleteListener<D> mListener;
    boolean mProcessingChange;
    boolean mReset;
    boolean mStarted;

    public Loader(Context var1);

    public void abandon();

    public void commitContentChanged();

    public String dataToString(D var1);

    public void deliverResult(D var1);

    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    public void forceLoad();

    public Context getContext();

    public int getId();

    public boolean isAbandoned();

    public boolean isReset();

    public boolean isStarted();

    protected void onAbandon();

    public void onContentChanged();

    protected void onForceLoad();

    protected void onReset();

    protected void onStartLoading();

    protected void onStopLoading();

    public void registerListener(int var1, OnLoadCompleteListener<D> var2);

    public void reset();

    public void rollbackContentChanged();

    public final void startLoading();

    public void stopLoading();

    public boolean takeContentChanged();

    public String toString();

    public void unregisterListener(OnLoadCompleteListener<D> var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class ForceLoadContentObserver
    extends ContentObserver {
        final /* synthetic */ Loader this$0;

        public ForceLoadContentObserver(Loader var1);

        @Override
        public boolean deliverSelfNotifications();

        @Override
        public void onChange(boolean var1);
    }

    public static interface OnLoadCompleteListener<D> {
        public void onLoadComplete(Loader<D> var1, D var2);
    }

}

