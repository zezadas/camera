/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.util.SimpleArrayMap;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Fragment
implements ComponentCallbacks,
View.OnCreateContextMenuListener {
    static final int ACTIVITY_CREATED = 2;
    static final int CREATED = 1;
    static final int INITIALIZING = 0;
    static final int RESUMED = 5;
    static final int STARTED = 4;
    static final int STOPPED = 3;
    private static final SimpleArrayMap<String, Class<?>> sClassMap;
    FragmentActivity mActivity;
    boolean mAdded;
    View mAnimatingAway;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mCalled;
    boolean mCheckedForLoaderManager;
    FragmentManagerImpl mChildFragmentManager;
    ViewGroup mContainer;
    int mContainerId;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    FragmentManagerImpl mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mInLayout;
    int mIndex;
    View mInnerView;
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mMenuVisible;
    int mNextAnim;
    Fragment mParentFragment;
    boolean mRemoving;
    boolean mRestored;
    boolean mResumed;
    boolean mRetainInstance;
    boolean mRetaining;
    Bundle mSavedFragmentState;
    SparseArray<Parcelable> mSavedViewState;
    int mState;
    int mStateAfterAnimating;
    String mTag;
    Fragment mTarget;
    int mTargetIndex;
    int mTargetRequestCode;
    boolean mUserVisibleHint;
    View mView;
    String mWho;

    static;

    public Fragment();

    public static Fragment instantiate(Context var0, String var1);

    public static Fragment instantiate(Context var0, String var1, Bundle var2);

    static boolean isSupportFragmentClass(Context var0, String var1);

    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    public final boolean equals(Object var1);

    Fragment findFragmentByWho(String var1);

    public final FragmentActivity getActivity();

    public final Bundle getArguments();

    public final FragmentManager getChildFragmentManager();

    public final FragmentManager getFragmentManager();

    public final int getId();

    public LayoutInflater getLayoutInflater(Bundle var1);

    public LoaderManager getLoaderManager();

    public final Fragment getParentFragment();

    public final Resources getResources();

    public final boolean getRetainInstance();

    public final String getString(int var1);

    public final /* varargs */ String getString(int var1, Object ... var2);

    public final String getTag();

    public final Fragment getTargetFragment();

    public final int getTargetRequestCode();

    public final CharSequence getText(int var1);

    public boolean getUserVisibleHint();

    @Nullable
    public View getView();

    public final boolean hasOptionsMenu();

    public final int hashCode();

    void initState();

    void instantiateChildFragmentManager();

    public final boolean isAdded();

    public final boolean isDetached();

    public final boolean isHidden();

    final boolean isInBackStack();

    public final boolean isInLayout();

    public final boolean isMenuVisible();

    public final boolean isRemoving();

    public final boolean isResumed();

    public final boolean isVisible();

    public void onActivityCreated(@Nullable Bundle var1);

    public void onActivityResult(int var1, int var2, Intent var3);

    public void onAttach(Activity var1);

    @Override
    public void onConfigurationChanged(Configuration var1);

    public boolean onContextItemSelected(MenuItem var1);

    public void onCreate(Bundle var1);

    public Animation onCreateAnimation(int var1, boolean var2, int var3);

    @Override
    public void onCreateContextMenu(ContextMenu var1, View var2, ContextMenu.ContextMenuInfo var3);

    public void onCreateOptionsMenu(Menu var1, MenuInflater var2);

    public View onCreateView(LayoutInflater var1, @Nullable ViewGroup var2, @Nullable Bundle var3);

    public void onDestroy();

    public void onDestroyOptionsMenu();

    public void onDestroyView();

    public void onDetach();

    public void onHiddenChanged(boolean var1);

    public void onInflate(Activity var1, AttributeSet var2, Bundle var3);

    @Override
    public void onLowMemory();

    public boolean onOptionsItemSelected(MenuItem var1);

    public void onOptionsMenuClosed(Menu var1);

    public void onPause();

    public void onPrepareOptionsMenu(Menu var1);

    public void onResume();

    public void onSaveInstanceState(Bundle var1);

    public void onStart();

    public void onStop();

    public void onViewCreated(View var1, @Nullable Bundle var2);

    public void onViewStateRestored(@Nullable Bundle var1);

    void performActivityCreated(Bundle var1);

    void performConfigurationChanged(Configuration var1);

    boolean performContextItemSelected(MenuItem var1);

    void performCreate(Bundle var1);

    boolean performCreateOptionsMenu(Menu var1, MenuInflater var2);

    View performCreateView(LayoutInflater var1, ViewGroup var2, Bundle var3);

    void performDestroy();

    void performDestroyView();

    void performLowMemory();

    boolean performOptionsItemSelected(MenuItem var1);

    void performOptionsMenuClosed(Menu var1);

    void performPause();

    boolean performPrepareOptionsMenu(Menu var1);

    void performReallyStop();

    void performResume();

    void performSaveInstanceState(Bundle var1);

    void performStart();

    void performStop();

    public void registerForContextMenu(View var1);

    final void restoreViewState(Bundle var1);

    public void setArguments(Bundle var1);

    public void setHasOptionsMenu(boolean var1);

    final void setIndex(int var1, Fragment var2);

    public void setInitialSavedState(SavedState var1);

    public void setMenuVisibility(boolean var1);

    public void setRetainInstance(boolean var1);

    public void setTargetFragment(Fragment var1, int var2);

    public void setUserVisibleHint(boolean var1);

    public void startActivity(Intent var1);

    public void startActivityForResult(Intent var1, int var2);

    public String toString();

    public void unregisterForContextMenu(View var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class InstantiationException
    extends RuntimeException {
        public InstantiationException(String var1, Exception var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class SavedState
    implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR;
        final Bundle mState;

        static;

        SavedState(Bundle var1);

        SavedState(Parcel var1, ClassLoader var2);

        @Override
        public int describeContents();

        @Override
        public void writeToParcel(Parcel var1, int var2);

    }

}

