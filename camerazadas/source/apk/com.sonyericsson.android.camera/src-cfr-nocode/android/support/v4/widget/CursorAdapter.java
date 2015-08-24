/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.support.v4.widget.CursorFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

/*
 * Exception performing whole class analysis.
 */
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
    public CursorAdapter(Context var1, Cursor var2);

    public CursorAdapter(Context var1, Cursor var2, int var3);

    public CursorAdapter(Context var1, Cursor var2, boolean var3);

    public abstract void bindView(View var1, Context var2, Cursor var3);

    @Override
    public void changeCursor(Cursor var1);

    @Override
    public CharSequence convertToString(Cursor var1);

    @Override
    public int getCount();

    @Override
    public Cursor getCursor();

    @Override
    public View getDropDownView(int var1, View var2, ViewGroup var3);

    @Override
    public Filter getFilter();

    public FilterQueryProvider getFilterQueryProvider();

    @Override
    public Object getItem(int var1);

    @Override
    public long getItemId(int var1);

    @Override
    public View getView(int var1, View var2, ViewGroup var3);

    @Override
    public boolean hasStableIds();

    void init(Context var1, Cursor var2, int var3);

    @Deprecated
    protected void init(Context var1, Cursor var2, boolean var3);

    public View newDropDownView(Context var1, Cursor var2, ViewGroup var3);

    public abstract View newView(Context var1, Cursor var2, ViewGroup var3);

    protected void onContentChanged();

    @Override
    public Cursor runQueryOnBackgroundThread(CharSequence var1);

    public void setFilterQueryProvider(FilterQueryProvider var1);

    public Cursor swapCursor(Cursor var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ChangeObserver
    extends ContentObserver {
        final /* synthetic */ CursorAdapter this$0;

        public ChangeObserver(CursorAdapter var1);

        @Override
        public boolean deliverSelfNotifications();

        @Override
        public void onChange(boolean var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MyDataSetObserver
    extends DataSetObserver {
        final /* synthetic */ CursorAdapter this$0;

        private MyDataSetObserver(CursorAdapter var1);

        /* synthetic */ MyDataSetObserver(CursorAdapter var1,  var2);

        @Override
        public void onChanged();

        @Override
        public void onInvalidated();
    }

}

