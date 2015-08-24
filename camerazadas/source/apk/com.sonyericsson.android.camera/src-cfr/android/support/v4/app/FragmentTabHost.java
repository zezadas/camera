/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost
extends TabHost
implements TabHost.OnTabChangeListener {
    private boolean mAttached;
    private int mContainerId;
    private Context mContext;
    private FragmentManager mFragmentManager;
    private TabInfo mLastTab;
    private TabHost.OnTabChangeListener mOnTabChangeListener;
    private FrameLayout mRealTabContent;
    private final ArrayList<TabInfo> mTabs = new ArrayList();

    public FragmentTabHost(Context context) {
        super(context, null);
        this.initFragmentTabHost(context, null);
    }

    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initFragmentTabHost(context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    private FragmentTransaction doTabChanged(String object, FragmentTransaction fragmentTransaction) {
        TabInfo tabInfo = null;
        for (int i = 0; i < this.mTabs.size(); ++i) {
            TabInfo tabInfo2 = this.mTabs.get(i);
            if (!tabInfo2.tag.equals(object)) continue;
            tabInfo = tabInfo2;
        }
        if (tabInfo == null) {
            throw new IllegalStateException("No tab known for tag " + (String)object);
        }
        object = fragmentTransaction;
        if (this.mLastTab != tabInfo) {
            object = fragmentTransaction;
            if (fragmentTransaction == null) {
                object = this.mFragmentManager.beginTransaction();
            }
            if (this.mLastTab != null && this.mLastTab.fragment != null) {
                object.detach(this.mLastTab.fragment);
            }
            if (tabInfo != null) {
                if (tabInfo.fragment == null) {
                    tabInfo.fragment = Fragment.instantiate(this.mContext, tabInfo.clss.getName(), tabInfo.args);
                    object.add(this.mContainerId, tabInfo.fragment, tabInfo.tag);
                } else {
                    object.attach(tabInfo.fragment);
                }
            }
            this.mLastTab = tabInfo;
        }
        return object;
    }

    private void ensureContent() {
        if (this.mRealTabContent == null) {
            this.mRealTabContent = (FrameLayout)this.findViewById(this.mContainerId);
            if (this.mRealTabContent == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.mContainerId);
            }
        }
    }

    private void ensureHierarchy(Context object) {
        if (this.findViewById(16908307) == null) {
            LinearLayout linearLayout = new LinearLayout((Context)object);
            linearLayout.setOrientation(1);
            this.addView((View)linearLayout, new FrameLayout.LayoutParams(-1, -1));
            View view = new TabWidget((Context)object);
            view.setId(16908307);
            view.setOrientation(0);
            linearLayout.addView(view, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            view = new FrameLayout((Context)object);
            view.setId(16908305);
            linearLayout.addView(view, new LinearLayout.LayoutParams(0, 0, 0.0f));
            this.mRealTabContent = object = new FrameLayout((Context)object);
            this.mRealTabContent.setId(this.mContainerId);
            linearLayout.addView((View)object, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    private void initFragmentTabHost(Context object, AttributeSet attributeSet) {
        object = object.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.mContainerId = object.getResourceId(0, 0);
        object.recycle();
        super.setOnTabChangedListener(this);
    }

    public void addTab(TabHost.TabSpec tabSpec, Class<?> object, Bundle object2) {
        tabSpec.setContent(new DummyTabFactory(this.mContext));
        String string = tabSpec.getTag();
        object = new TabInfo(string, object, (Bundle)object2);
        if (this.mAttached) {
            ((TabInfo)object).fragment = this.mFragmentManager.findFragmentByTag(string);
            if (!(((TabInfo)object).fragment == null || ((TabInfo)object).fragment.isDetached())) {
                object2 = this.mFragmentManager.beginTransaction();
                object2.detach(((TabInfo)object).fragment);
                object2.commit();
            }
        }
        this.mTabs.add((TabInfo)object);
        this.addTab(tabSpec);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String string = this.getCurrentTabTag();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < this.mTabs.size(); ++i) {
            TabInfo tabInfo = this.mTabs.get(i);
            tabInfo.fragment = this.mFragmentManager.findFragmentByTag(tabInfo.tag);
            FragmentTransaction fragmentTransaction2 = fragmentTransaction;
            if (tabInfo.fragment != null) {
                fragmentTransaction2 = fragmentTransaction;
                if (!tabInfo.fragment.isDetached()) {
                    if (tabInfo.tag.equals(string)) {
                        this.mLastTab = tabInfo;
                        fragmentTransaction2 = fragmentTransaction;
                    } else {
                        fragmentTransaction2 = fragmentTransaction;
                        if (fragmentTransaction == null) {
                            fragmentTransaction2 = this.mFragmentManager.beginTransaction();
                        }
                        fragmentTransaction2.detach(tabInfo.fragment);
                    }
                }
            }
            fragmentTransaction = fragmentTransaction2;
        }
        this.mAttached = true;
        if ((fragmentTransaction = this.doTabChanged(string, fragmentTransaction)) != null) {
            fragmentTransaction.commit();
            this.mFragmentManager.executePendingTransactions();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAttached = false;
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        this.setCurrentTabByTag(parcelable.curTab);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.curTab = this.getCurrentTabTag();
        return savedState;
    }

    @Override
    public void onTabChanged(String string) {
        FragmentTransaction fragmentTransaction;
        if (this.mAttached && (fragmentTransaction = this.doTabChanged(string, null)) != null) {
            fragmentTransaction.commit();
        }
        if (this.mOnTabChangeListener != null) {
            this.mOnTabChangeListener.onTabChanged(string);
        }
    }

    @Override
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.mOnTabChangeListener = onTabChangeListener;
    }

    @Deprecated
    @Override
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    public void setup(Context context, FragmentManager fragmentManager) {
        this.ensureHierarchy(context);
        super.setup();
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
        this.ensureContent();
    }

    public void setup(Context context, FragmentManager fragmentManager, int n) {
        this.ensureHierarchy(context);
        super.setup();
        this.mContext = context;
        this.mFragmentManager = fragmentManager;
        this.mContainerId = n;
        this.ensureContent();
        this.mRealTabContent.setId(n);
        if (this.getId() == -1) {
            this.setId(16908306);
        }
    }

    static class DummyTabFactory
    implements TabHost.TabContentFactory {
        private final Context mContext;

        public DummyTabFactory(Context context) {
            this.mContext = context;
        }

        @Override
        public View createTabContent(String object) {
            object = new View(this.mContext);
            object.setMinimumWidth(0);
            object.setMinimumHeight(0);
            return object;
        }
    }

    static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>(){

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            public SavedState[] newArray(int n) {
                return new SavedState[n];
            }
        };
        String curTab;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.curTab = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            super.writeToParcel(parcel, n);
            parcel.writeString(this.curTab);
        }

    }

    static final class TabInfo {
        private final Bundle args;
        private final Class<?> clss;
        private Fragment fragment;
        private final String tag;

        TabInfo(String string, Class<?> class_, Bundle bundle) {
            this.tag = string;
            this.clss = class_;
            this.args = bundle;
        }
    }

}

