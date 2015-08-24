/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ListFragment
extends Fragment {
    static final int INTERNAL_EMPTY_ID = 16711681;
    static final int INTERNAL_LIST_CONTAINER_ID = 16711683;
    static final int INTERNAL_PROGRESS_CONTAINER_ID = 16711682;
    ListAdapter mAdapter;
    CharSequence mEmptyText;
    View mEmptyView;
    private final Handler mHandler;
    ListView mList;
    View mListContainer;
    boolean mListShown;
    private final AdapterView.OnItemClickListener mOnClickListener;
    View mProgressContainer;
    private final Runnable mRequestFocus;
    TextView mStandardEmptyView;

    public ListFragment();

    private void ensureList();

    private void setListShown(boolean var1, boolean var2);

    public ListAdapter getListAdapter();

    public ListView getListView();

    public long getSelectedItemId();

    public int getSelectedItemPosition();

    @Override
    public View onCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3);

    @Override
    public void onDestroyView();

    public void onListItemClick(ListView var1, View var2, int var3, long var4);

    @Override
    public void onViewCreated(View var1, Bundle var2);

    public void setEmptyText(CharSequence var1);

    public void setListAdapter(ListAdapter var1);

    public void setListShown(boolean var1);

    public void setListShownNoAnimation(boolean var1);

    public void setSelection(int var1);

}

