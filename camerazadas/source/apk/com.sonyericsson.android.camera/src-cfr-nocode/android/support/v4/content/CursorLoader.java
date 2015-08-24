/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.content.AsyncTaskLoader;
import android.support.v4.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/*
 * Exception performing whole class analysis.
 */
public class CursorLoader
extends AsyncTaskLoader<Cursor> {
    Cursor mCursor;
    final Loader<Cursor> mObserver;
    String[] mProjection;
    String mSelection;
    String[] mSelectionArgs;
    String mSortOrder;
    Uri mUri;

    public CursorLoader(Context var1);

    public CursorLoader(Context var1, Uri var2, String[] var3, String var4, String[] var5, String var6);

    @Override
    public void deliverResult(Cursor var1);

    @Override
    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    public String[] getProjection();

    public String getSelection();

    public String[] getSelectionArgs();

    public String getSortOrder();

    public Uri getUri();

    @Override
    public Cursor loadInBackground();

    @Override
    public void onCanceled(Cursor var1);

    @Override
    protected void onReset();

    @Override
    protected void onStartLoading();

    @Override
    protected void onStopLoading();

    public void setProjection(String[] var1);

    public void setSelection(String var1);

    public void setSelectionArgs(String[] var1);

    public void setSortOrder(String var1);

    public void setUri(Uri var1);
}

