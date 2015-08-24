/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.support.v4.widget.CursorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class CursorAdapter
extends BaseAdapter
implements Filterable,
CursorFilter.CursorFilterClient {
    @Deprecated
    public static final int FLAG_AUTO_REQUERY = 1;
    public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
    protected boolean mAutoRequery;
    protected ChangeObserver mChangeObserver;
    protected Context mContext;
    protected Cursor mCursor;
    protected CursorFilter mCursorFilter;
    protected DataSetObserver mDataSetObserver;
    protected boolean mDataValid;
    protected FilterQueryProvider mFilterQueryProvider;
    protected int mRowIDColumn;

    @Deprecated
    public CursorAdapter(Context context, Cursor cursor) {
        this.init(context, cursor, 1);
    }

    public CursorAdapter(Context context, Cursor cursor, int n) {
        this.init(context, cursor, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public CursorAdapter(Context context, Cursor cursor, boolean bl) {
        int n = bl ? 1 : 2;
        this.init(context, cursor, n);
    }

    public abstract void bindView(View var1, Context var2, Cursor var3);

    @Override
    public void changeCursor(Cursor cursor) {
        if ((cursor = this.swapCursor(cursor)) != null) {
            cursor.close();
        }
    }

    @Override
    public CharSequence convertToString(Cursor cursor) {
        if (cursor == null) {
            return "";
        }
        return cursor.toString();
    }

    @Override
    public int getCount() {
        if (this.mDataValid && this.mCursor != null) {
            return this.mCursor.getCount();
        }
        return 0;
    }

    @Override
    public Cursor getCursor() {
        return this.mCursor;
    }

    @Override
    public View getDropDownView(int n, View view, ViewGroup viewGroup) {
        if (this.mDataValid) {
            this.mCursor.moveToPosition(n);
            if (view == null) {
                view = this.newDropDownView(this.mContext, this.mCursor, viewGroup);
            }
            this.bindView(view, this.mContext, this.mCursor);
            return view;
        }
        return null;
    }

    @Override
    public Filter getFilter() {
        if (this.mCursorFilter == null) {
            this.mCursorFilter = new CursorFilter(this);
        }
        return this.mCursorFilter;
    }

    public FilterQueryProvider getFilterQueryProvider() {
        return this.mFilterQueryProvider;
    }

    @Override
    public Object getItem(int n) {
        if (this.mDataValid && this.mCursor != null) {
            this.mCursor.moveToPosition(n);
            return this.mCursor;
        }
        return null;
    }

    @Override
    public long getItemId(int n) {
        long l;
        long l2 = l = 0;
        if (this.mDataValid) {
            l2 = l;
            if (this.mCursor != null) {
                l2 = l;
                if (this.mCursor.moveToPosition(n)) {
                    l2 = this.mCursor.getLong(this.mRowIDColumn);
                }
            }
        }
        return l2;
    }

    @Override
    public View getView(int n, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.mCursor.moveToPosition(n)) {
            throw new IllegalStateException("couldn't move cursor to position " + n);
        }
        if (view == null) {
            view = this.newView(this.mContext, this.mCursor, viewGroup);
        }
        this.bindView(view, this.mContext, this.mCursor);
        return view;
    }

    @Override
    public boolean hasStableIds() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    void init(Context context, Cursor cursor, int n) {
        boolean bl = true;
        if ((n & 1) == 1) {
            n|=2;
            this.mAutoRequery = true;
        } else {
            this.mAutoRequery = false;
        }
        if (cursor == null) {
            bl = false;
        }
        this.mCursor = cursor;
        this.mDataValid = bl;
        this.mContext = context;
        int n2 = bl ? cursor.getColumnIndexOrThrow("_id") : -1;
        this.mRowIDColumn = n2;
        if ((n & 2) == 2) {
            this.mChangeObserver = new ChangeObserver();
            this.mDataSetObserver = new MyDataSetObserver();
        } else {
            this.mChangeObserver = null;
            this.mDataSetObserver = null;
        }
        if (bl) {
            if (this.mChangeObserver != null) {
                cursor.registerContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Deprecated
    protected void init(Context context, Cursor cursor, boolean bl) {
        int n = bl ? 1 : 2;
        this.init(context, cursor, n);
    }

    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.newView(context, cursor, viewGroup);
    }

    public abstract View newView(Context var1, Cursor var2, ViewGroup var3);

    protected void onContentChanged() {
        if (this.mAutoRequery && this.mCursor != null && !this.mCursor.isClosed()) {
            this.mDataValid = this.mCursor.requery();
        }
    }

    @Override
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        if (this.mFilterQueryProvider != null) {
            return this.mFilterQueryProvider.runQuery(charSequence);
        }
        return this.mCursor;
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        this.mFilterQueryProvider = filterQueryProvider;
    }

    public Cursor swapCursor(Cursor cursor) {
        if (cursor == this.mCursor) {
            return null;
        }
        Cursor cursor2 = this.mCursor;
        if (cursor2 != null) {
            if (this.mChangeObserver != null) {
                cursor2.unregisterContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor2.unregisterDataSetObserver(this.mDataSetObserver);
            }
        }
        this.mCursor = cursor;
        if (cursor != null) {
            if (this.mChangeObserver != null) {
                cursor.registerContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
            this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
            this.mDataValid = true;
            this.notifyDataSetChanged();
            return cursor2;
        }
        this.mRowIDColumn = -1;
        this.mDataValid = false;
        this.notifyDataSetInvalidated();
        return cursor2;
    }

    private class ChangeObserver
    extends ContentObserver {
        public ChangeObserver() {
            super(new Handler());
        }

        @Override
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override
        public void onChange(boolean bl) {
            CursorAdapter.this.onContentChanged();
        }
    }

    private class MyDataSetObserver
    extends DataSetObserver {
        private MyDataSetObserver() {
        }

        @Override
        public void onChanged() {
            CursorAdapter.this.mDataValid = true;
            CursorAdapter.this.notifyDataSetChanged();
        }

        @Override
        public void onInvalidated() {
            CursorAdapter.this.mDataValid = false;
            CursorAdapter.this.notifyDataSetInvalidated();
        }
    }

}

