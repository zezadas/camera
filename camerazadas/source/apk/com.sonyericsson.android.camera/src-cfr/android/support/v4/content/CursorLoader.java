/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.content.AsyncTaskLoader;
import android.support.v4.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class CursorLoader
extends AsyncTaskLoader<Cursor> {
    Cursor mCursor;
    final Loader<Cursor> mObserver;
    String[] mProjection;
    String mSelection;
    String[] mSelectionArgs;
    String mSortOrder;
    Uri mUri;

    public CursorLoader(Context context) {
        super(context);
        this.mObserver = new Loader.ForceLoadContentObserver();
    }

    public CursorLoader(Context context, Uri uri, String[] arrstring, String string, String[] arrstring2, String string2) {
        super(context);
        this.mObserver = new Loader.ForceLoadContentObserver();
        this.mUri = uri;
        this.mProjection = arrstring;
        this.mSelection = string;
        this.mSelectionArgs = arrstring2;
        this.mSortOrder = string2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void deliverResult(Cursor cursor) {
        if (this.isReset()) {
            if (cursor == null) return;
            {
                cursor.close();
                return;
            }
        } else {
            Cursor cursor2 = this.mCursor;
            this.mCursor = cursor;
            if (this.isStarted()) {
                super.deliverResult(cursor);
            }
            if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) return;
            {
                cursor2.close();
                return;
            }
        }
    }

    @Override
    public void dump(String string, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        super.dump(string, fileDescriptor, printWriter, arrstring);
        printWriter.print(string);
        printWriter.print("mUri=");
        printWriter.println(this.mUri);
        printWriter.print(string);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.mProjection));
        printWriter.print(string);
        printWriter.print("mSelection=");
        printWriter.println(this.mSelection);
        printWriter.print(string);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.mSelectionArgs));
        printWriter.print(string);
        printWriter.print("mSortOrder=");
        printWriter.println(this.mSortOrder);
        printWriter.print(string);
        printWriter.print("mCursor=");
        printWriter.println(this.mCursor);
        printWriter.print(string);
        printWriter.print("mContentChanged=");
        printWriter.println(this.mContentChanged);
    }

    public String[] getProjection() {
        return this.mProjection;
    }

    public String getSelection() {
        return this.mSelection;
    }

    public String[] getSelectionArgs() {
        return this.mSelectionArgs;
    }

    public String getSortOrder() {
        return this.mSortOrder;
    }

    public Uri getUri() {
        return this.mUri;
    }

    @Override
    public Cursor loadInBackground() {
        Cursor cursor = this.getContext().getContentResolver().query(this.mUri, this.mProjection, this.mSelection, this.mSelectionArgs, this.mSortOrder);
        if (cursor != null) {
            cursor.getCount();
            cursor.registerContentObserver((ContentObserver)this.mObserver);
        }
        return cursor;
    }

    @Override
    public void onCanceled(Cursor cursor) {
        if (!(cursor == null || cursor.isClosed())) {
            cursor.close();
        }
    }

    @Override
    protected void onReset() {
        super.onReset();
        this.onStopLoading();
        if (!(this.mCursor == null || this.mCursor.isClosed())) {
            this.mCursor.close();
        }
        this.mCursor = null;
    }

    @Override
    protected void onStartLoading() {
        if (this.mCursor != null) {
            this.deliverResult(this.mCursor);
        }
        if (this.takeContentChanged() || this.mCursor == null) {
            this.forceLoad();
        }
    }

    @Override
    protected void onStopLoading() {
        this.cancelLoad();
    }

    public void setProjection(String[] arrstring) {
        this.mProjection = arrstring;
    }

    public void setSelection(String string) {
        this.mSelection = string;
    }

    public void setSelectionArgs(String[] arrstring) {
        this.mSelectionArgs = arrstring;
    }

    public void setSortOrder(String string) {
        this.mSortOrder = string;
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
    }
}

