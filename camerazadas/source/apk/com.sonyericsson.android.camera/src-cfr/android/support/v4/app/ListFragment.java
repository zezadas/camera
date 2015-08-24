/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ListFragment
extends Fragment {
    static final int INTERNAL_EMPTY_ID = 16711681;
    static final int INTERNAL_LIST_CONTAINER_ID = 16711683;
    static final int INTERNAL_PROGRESS_CONTAINER_ID = 16711682;
    ListAdapter mAdapter;
    CharSequence mEmptyText;
    View mEmptyView;
    private final Handler mHandler = new Handler();
    ListView mList;
    View mListContainer;
    boolean mListShown;
    private final AdapterView.OnItemClickListener mOnClickListener;
    View mProgressContainer;
    private final Runnable mRequestFocus;
    TextView mStandardEmptyView;

    public ListFragment() {
        this.mRequestFocus = new Runnable(){

            @Override
            public void run() {
                ListFragment.this.mList.focusableViewAvailable(ListFragment.this.mList);
            }
        };
        this.mOnClickListener = new AdapterView.OnItemClickListener(){

            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
                ListFragment.this.onListItemClick((ListView)adapterView, view, n, l);
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     */
    private void ensureList() {
        if (this.mList != null) {
            return;
        }
        Object object = this.getView();
        if (object == null) {
            throw new IllegalStateException("Content view not yet created");
        }
        if (object instanceof ListView) {
            this.mList = (ListView)object;
        } else {
            this.mStandardEmptyView = (TextView)object.findViewById(16711681);
            if (this.mStandardEmptyView == null) {
                this.mEmptyView = object.findViewById(16908292);
            } else {
                this.mStandardEmptyView.setVisibility(8);
            }
            this.mProgressContainer = object.findViewById(16711682);
            this.mListContainer = object.findViewById(16711683);
            if (!((object = object.findViewById(16908298)) instanceof ListView)) {
                if (object == null) {
                    throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                }
                throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
            }
            this.mList = (ListView)object;
            if (this.mEmptyView != null) {
                this.mList.setEmptyView(this.mEmptyView);
            } else if (this.mEmptyText != null) {
                this.mStandardEmptyView.setText(this.mEmptyText);
                this.mList.setEmptyView(this.mStandardEmptyView);
            }
        }
        this.mListShown = true;
        this.mList.setOnItemClickListener(this.mOnClickListener);
        if (this.mAdapter != null) {
            object = this.mAdapter;
            this.mAdapter = null;
            this.setListAdapter((ListAdapter)object);
        } else if (this.mProgressContainer != null) {
            this.setListShown(false, false);
        }
        this.mHandler.post(this.mRequestFocus);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setListShown(boolean bl, boolean bl2) {
        this.ensureList();
        if (this.mProgressContainer == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (this.mListShown == bl) {
            return;
        }
        this.mListShown = bl;
        if (bl) {
            if (bl2) {
                this.mProgressContainer.startAnimation(AnimationUtils.loadAnimation(this.getActivity(), 17432577));
                this.mListContainer.startAnimation(AnimationUtils.loadAnimation(this.getActivity(), 17432576));
            } else {
                this.mProgressContainer.clearAnimation();
                this.mListContainer.clearAnimation();
            }
            this.mProgressContainer.setVisibility(8);
            this.mListContainer.setVisibility(0);
            return;
        }
        if (bl2) {
            this.mProgressContainer.startAnimation(AnimationUtils.loadAnimation(this.getActivity(), 17432576));
            this.mListContainer.startAnimation(AnimationUtils.loadAnimation(this.getActivity(), 17432577));
        } else {
            this.mProgressContainer.clearAnimation();
            this.mListContainer.clearAnimation();
        }
        this.mProgressContainer.setVisibility(0);
        this.mListContainer.setVisibility(8);
    }

    public ListAdapter getListAdapter() {
        return this.mAdapter;
    }

    public ListView getListView() {
        this.ensureList();
        return this.mList;
    }

    public long getSelectedItemId() {
        this.ensureList();
        return this.mList.getSelectedItemId();
    }

    public int getSelectedItemPosition() {
        this.ensureList();
        return this.mList.getSelectedItemPosition();
    }

    @Override
    public View onCreateView(LayoutInflater object, ViewGroup view, Bundle object2) {
        view = this.getActivity();
        object = new FrameLayout((Context)view);
        object2 = new LinearLayout((Context)view);
        object2.setId(16711682);
        object2.setOrientation(1);
        object2.setVisibility(8);
        object2.setGravity(17);
        object2.addView((View)new ProgressBar((Context)view, null, 16842874), new FrameLayout.LayoutParams(-2, -2));
        object.addView((View)object2, new FrameLayout.LayoutParams(-1, -1));
        view = new FrameLayout((Context)view);
        view.setId(16711683);
        object2 = new TextView(this.getActivity());
        object2.setId(16711681);
        object2.setGravity(17);
        view.addView((View)object2, new FrameLayout.LayoutParams(-1, -1));
        object2 = new ListView(this.getActivity());
        object2.setId(16908298);
        object2.setDrawSelectorOnTop(false);
        view.addView((View)object2, new FrameLayout.LayoutParams(-1, -1));
        object.addView(view, new FrameLayout.LayoutParams(-1, -1));
        object.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return object;
    }

    @Override
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mList = null;
        this.mListShown = false;
        this.mListContainer = null;
        this.mProgressContainer = null;
        this.mEmptyView = null;
        this.mStandardEmptyView = null;
        super.onDestroyView();
    }

    public void onListItemClick(ListView listView, View view, int n, long l) {
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.ensureList();
    }

    public void setEmptyText(CharSequence charSequence) {
        this.ensureList();
        if (this.mStandardEmptyView == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        this.mStandardEmptyView.setText(charSequence);
        if (this.mEmptyText == null) {
            this.mList.setEmptyView(this.mStandardEmptyView);
        }
        this.mEmptyText = charSequence;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setListAdapter(ListAdapter listAdapter) {
        boolean bl = false;
        boolean bl2 = this.mAdapter != null;
        this.mAdapter = listAdapter;
        if (this.mList != null) {
            this.mList.setAdapter(listAdapter);
            if (!(this.mListShown || bl2)) {
                if (this.getView().getWindowToken() != null) {
                    bl = true;
                }
                this.setListShown(true, bl);
            }
        }
    }

    public void setListShown(boolean bl) {
        this.setListShown(bl, true);
    }

    public void setListShownNoAnimation(boolean bl) {
        this.setListShown(bl, false);
    }

    public void setSelection(int n) {
        this.ensureList();
        this.mList.setSelection(n);
    }

}

