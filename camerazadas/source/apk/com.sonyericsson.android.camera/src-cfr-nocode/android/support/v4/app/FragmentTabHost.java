/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TabHost;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
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
    private final ArrayList<TabInfo> mTabs;

    public FragmentTabHost(Context var1);

    public FragmentTabHost(Context var1, AttributeSet var2);

    private FragmentTransaction doTabChanged(String var1, FragmentTransaction var2);

    private void ensureContent();

    private void ensureHierarchy(Context var1);

    private void initFragmentTabHost(Context var1, AttributeSet var2);

    public void addTab(TabHost.TabSpec var1, Class<?> var2, Bundle var3);

    @Override
    protected void onAttachedToWindow();

    @Override
    protected void onDetachedFromWindow();

    @Override
    protected void onRestoreInstanceState(Parcelable var1);

    @Override
    protected Parcelable onSaveInstanceState();

    @Override
    public void onTabChanged(String var1);

    @Override
    public void setOnTabChangedListener(TabHost.OnTabChangeListener var1);

    @Deprecated
    @Override
    public void setup();

    public void setup(Context var1, FragmentManager var2);

    public void setup(Context var1, FragmentManager var2, int var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class DummyTabFactory
    implements TabHost.TabContentFactory {
        private final Context mContext;

        public DummyTabFactory(Context var1);

        @Override
        public View createTabContent(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class SavedState
    extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR;
        String curTab;

        static;

        private SavedState(Parcel var1);

        /* synthetic */ SavedState(Parcel var1, android.support.v4.app.FragmentTabHost$1 var2);

        SavedState(Parcelable var1);

        public String toString();

        @Override
        public void writeToParcel(Parcel var1, int var2);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class TabInfo {
        private final Bundle args;
        private final Class<?> clss;
        private Fragment fragment;
        private final String tag;

        TabInfo(String var1, Class<?> var2, Bundle var3);

        static /* synthetic */ Fragment access$100(TabInfo var0);

        static /* synthetic */ Fragment access$102(TabInfo var0, Fragment var1);

        static /* synthetic */ String access$200(TabInfo var0);

        static /* synthetic */ Class access$300(TabInfo var0);

        static /* synthetic */ Bundle access$400(TabInfo var0);
    }

}

