/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
final class FragmentManagerImpl
extends FragmentManager {
    static final Interpolator ACCELERATE_CUBIC;
    static final Interpolator ACCELERATE_QUINT;
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC;
    static final Interpolator DECELERATE_QUINT;
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    ArrayList<Fragment> mActive;
    FragmentActivity mActivity;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    ArrayList<Fragment> mCreatedMenus;
    int mCurState;
    boolean mDestroyed;
    Runnable mExecCommit;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray;
    Bundle mStateBundle;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    static;

    FragmentManagerImpl();

    private void checkStateLoss();

    static Animation makeFadeAnimation(Context var0, float var1, float var2);

    static Animation makeOpenCloseAnimation(Context var0, float var1, float var2, float var3, float var4);

    public static int reverseTransit(int var0);

    private void throwException(RuntimeException var1);

    public static int transitToStyleIndex(int var0, boolean var1);

    void addBackStackState(BackStackRecord var1);

    public void addFragment(Fragment var1, boolean var2);

    @Override
    public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener var1);

    public int allocBackStackIndex(BackStackRecord var1);

    public void attachActivity(FragmentActivity var1, FragmentContainer var2, Fragment var3);

    public void attachFragment(Fragment var1, int var2, int var3);

    @Override
    public FragmentTransaction beginTransaction();

    public void detachFragment(Fragment var1, int var2, int var3);

    public void dispatchActivityCreated();

    public void dispatchConfigurationChanged(Configuration var1);

    public boolean dispatchContextItemSelected(MenuItem var1);

    public void dispatchCreate();

    public boolean dispatchCreateOptionsMenu(Menu var1, MenuInflater var2);

    public void dispatchDestroy();

    public void dispatchDestroyView();

    public void dispatchLowMemory();

    public boolean dispatchOptionsItemSelected(MenuItem var1);

    public void dispatchOptionsMenuClosed(Menu var1);

    public void dispatchPause();

    public boolean dispatchPrepareOptionsMenu(Menu var1);

    public void dispatchReallyStop();

    public void dispatchResume();

    public void dispatchStart();

    public void dispatchStop();

    @Override
    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    public void enqueueAction(Runnable var1, boolean var2);

    public boolean execPendingActions();

    @Override
    public boolean executePendingTransactions();

    @Override
    public Fragment findFragmentById(int var1);

    @Override
    public Fragment findFragmentByTag(String var1);

    public Fragment findFragmentByWho(String var1);

    public void freeBackStackIndex(int var1);

    @Override
    public FragmentManager.BackStackEntry getBackStackEntryAt(int var1);

    @Override
    public int getBackStackEntryCount();

    @Override
    public Fragment getFragment(Bundle var1, String var2);

    @Override
    public List<Fragment> getFragments();

    public void hideFragment(Fragment var1, int var2, int var3);

    @Override
    public boolean isDestroyed();

    Animation loadAnimation(Fragment var1, int var2, boolean var3, int var4);

    void makeActive(Fragment var1);

    void makeInactive(Fragment var1);

    void moveToState(int var1, int var2, int var3, boolean var4);

    void moveToState(int var1, boolean var2);

    void moveToState(Fragment var1);

    void moveToState(Fragment var1, int var2, int var3, int var4, boolean var5);

    public void noteStateNotSaved();

    public void performPendingDeferredStart(Fragment var1);

    @Override
    public void popBackStack();

    @Override
    public void popBackStack(int var1, int var2);

    @Override
    public void popBackStack(String var1, int var2);

    @Override
    public boolean popBackStackImmediate();

    @Override
    public boolean popBackStackImmediate(int var1, int var2);

    @Override
    public boolean popBackStackImmediate(String var1, int var2);

    boolean popBackStackState(Handler var1, String var2, int var3, int var4);

    @Override
    public void putFragment(Bundle var1, String var2, Fragment var3);

    public void removeFragment(Fragment var1, int var2, int var3);

    @Override
    public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener var1);

    void reportBackStackChanged();

    void restoreAllState(Parcelable var1, ArrayList<Fragment> var2);

    ArrayList<Fragment> retainNonConfig();

    Parcelable saveAllState();

    Bundle saveFragmentBasicState(Fragment var1);

    @Override
    public Fragment.SavedState saveFragmentInstanceState(Fragment var1);

    void saveFragmentViewState(Fragment var1);

    public void setBackStackIndex(int var1, BackStackRecord var2);

    public void showFragment(Fragment var1, int var2, int var3);

    void startPendingDeferredFragments();

    public String toString();

}

