/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.BackStackState;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerState;
import android.support.v4.app.FragmentState;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
    int mCurState = 0;
    boolean mDestroyed;
    Runnable mExecCommit;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    SparseArray<Parcelable> mStateArray = null;
    Bundle mStateBundle = null;
    boolean mStateSaved;
    Runnable[] mTmpActions;

    static {
        boolean bl = false;
        DEBUG = false;
        if (Build.VERSION.SDK_INT >= 11) {
            bl = true;
        }
        HONEYCOMB = bl;
        DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
        DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
        ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
        ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    }

    FragmentManagerImpl() {
        this.mExecCommit = new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.execPendingActions();
            }
        };
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    static Animation makeFadeAnimation(Context object, float f, float f2) {
        object = new AlphaAnimation(f, f2);
        object.setInterpolator(DECELERATE_CUBIC);
        object.setDuration(220);
        return object;
    }

    static Animation makeOpenCloseAnimation(Context object, float f, float f2, float f3, float f4) {
        object = new AnimationSet(false);
        Animation animation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        animation.setInterpolator(DECELERATE_QUINT);
        animation.setDuration(220);
        object.addAnimation(animation);
        animation = new AlphaAnimation(f3, f4);
        animation.setInterpolator(DECELERATE_CUBIC);
        animation.setDuration(220);
        object.addAnimation(animation);
        return object;
    }

    public static int reverseTransit(int n) {
        switch (n) {
            default: {
                return 0;
            }
            case 4097: {
                return 8194;
            }
            case 8194: {
                return 4097;
            }
            case 4099: 
        }
        return 4099;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void throwException(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
        if (this.mActivity != null) {
            try {
                this.mActivity.dump("  ", null, printWriter, new String[0]);
            }
            catch (Exception var2_3) {
                Log.e("FragmentManager", "Failed dumping state", var2_3);
                throw runtimeException;
            }
            do {
                throw runtimeException;
                break;
            } while (true);
        }
        try {
            this.dump("  ", null, printWriter, new String[0]);
            throw runtimeException;
        }
        catch (Exception var2_4) {
            Log.e("FragmentManager", "Failed dumping state", var2_4);
            throw runtimeException;
        }
    }

    public static int transitToStyleIndex(int n, boolean bl) {
        switch (n) {
            default: {
                return -1;
            }
            case 4097: {
                if (bl) {
                    return 1;
                }
                return 2;
            }
            case 8194: {
                if (bl) {
                    return 3;
                }
                return 4;
            }
            case 4099: 
        }
        if (bl) {
            return 5;
        }
        return 6;
    }

    void addBackStackState(BackStackRecord backStackRecord) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList();
        }
        this.mBackStack.add(backStackRecord);
        this.reportBackStackChanged();
    }

    public void addFragment(Fragment fragment, boolean bl) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList();
        }
        if (DEBUG) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        this.makeActive(fragment);
        if (!fragment.mDetached) {
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (bl) {
                this.moveToState(fragment);
            }
        }
    }

    @Override
    public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList();
        }
        this.mBackStackChangeListeners.add(onBackStackChangedListener);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public int allocBackStackIndex(BackStackRecord backStackRecord) {
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList();
                }
                int n = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v("FragmentManager", "Setting back stack index " + n + " to " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
                return n;
            }
            int n = this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1);
            if (DEBUG) {
                Log.v("FragmentManager", "Adding back stack index " + n + " with " + backStackRecord);
            }
            this.mBackStackIndices.set(n, backStackRecord);
            return n;
        }
    }

    public void attachActivity(FragmentActivity fragmentActivity, FragmentContainer fragmentContainer, Fragment fragment) {
        if (this.mActivity != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mActivity = fragmentActivity;
        this.mContainer = fragmentContainer;
        this.mParent = fragment;
    }

    public void attachFragment(Fragment fragment, int n, int n2) {
        if (DEBUG) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                this.moveToState(fragment, this.mCurState, n, n2, false);
            }
        }
    }

    @Override
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    public void detachFragment(Fragment fragment, int n, int n2) {
        if (DEBUG) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v("FragmentManager", "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
                this.moveToState(fragment, 1, n, n2, false);
            }
        }
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        this.moveToState(2, false);
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); ++i) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment == null) continue;
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean dispatchContextItemSelected(MenuItem menuItem) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); ++i) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment == null || !fragment.performContextItemSelected(menuItem)) continue;
                return true;
            }
        }
        return false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        this.moveToState(1, false);
    }

    public boolean dispatchCreateOptionsMenu(Menu object, MenuInflater menuInflater) {
        int n;
        boolean bl = false;
        boolean bl2 = false;
        ArrayList<Fragment> arrayList = null;
        ArrayList<Fragment> arrayList2 = null;
        if (this.mAdded != null) {
            n = 0;
            do {
                arrayList = arrayList2;
                bl = bl2;
                if (n >= this.mAdded.size()) break;
                Fragment fragment = this.mAdded.get(n);
                arrayList = arrayList2;
                bl = bl2;
                if (fragment != null) {
                    arrayList = arrayList2;
                    bl = bl2;
                    if (fragment.performCreateOptionsMenu((Menu)object, menuInflater)) {
                        bl = true;
                        arrayList = arrayList2;
                        if (arrayList2 == null) {
                            arrayList = new ArrayList<Fragment>();
                        }
                        arrayList.add(fragment);
                    }
                }
                ++n;
                arrayList2 = arrayList;
                bl2 = bl;
            } while (true);
        }
        if (this.mCreatedMenus != null) {
            for (n = 0; n < this.mCreatedMenus.size(); ++n) {
                object = this.mCreatedMenus.get(n);
                if (arrayList != null && arrayList.contains(object)) continue;
                object.onDestroyOptionsMenu();
            }
        }
        this.mCreatedMenus = arrayList;
        return bl;
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        this.execPendingActions();
        this.moveToState(0, false);
        this.mActivity = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchDestroyView() {
        this.moveToState(1, false);
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); ++i) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment == null) continue;
                fragment.performLowMemory();
            }
        }
    }

    public boolean dispatchOptionsItemSelected(MenuItem menuItem) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); ++i) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment == null || !fragment.performOptionsItemSelected(menuItem)) continue;
                return true;
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            for (int i = 0; i < this.mAdded.size(); ++i) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment == null) continue;
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public void dispatchPause() {
        this.moveToState(4, false);
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        boolean bl = false;
        boolean bl2 = false;
        if (this.mAdded != null) {
            int n = 0;
            do {
                bl = bl2;
                if (n >= this.mAdded.size()) break;
                Fragment fragment = this.mAdded.get(n);
                bl = bl2;
                if (fragment != null) {
                    bl = bl2;
                    if (fragment.performPrepareOptionsMenu(menu)) {
                        bl = true;
                    }
                }
                ++n;
                bl2 = bl;
            } while (true);
        }
        return bl;
    }

    public void dispatchReallyStop() {
        this.moveToState(2, false);
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        this.moveToState(5, false);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        this.moveToState(4, false);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        this.moveToState(3, false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void dump(String string, FileDescriptor object, PrintWriter printWriter, String[] arrstring) {
        int n;
        int n2;
        Object object2;
        String string2 = string + "    ";
        if (this.mActive != null && (n = this.mActive.size()) > 0) {
            printWriter.print(string);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (n2 = 0; n2 < n; ++n2) {
                object2 = this.mActive.get(n2);
                printWriter.print(string);
                printWriter.print("  #");
                printWriter.print(n2);
                printWriter.print(": ");
                printWriter.println(object2);
                if (object2 == null) continue;
                object2.dump(string2, (FileDescriptor)object, printWriter, arrstring);
            }
        }
        if (this.mAdded != null && (n = this.mAdded.size()) > 0) {
            printWriter.print(string);
            printWriter.println("Added Fragments:");
            for (n2 = 0; n2 < n; ++n2) {
                object2 = this.mAdded.get(n2);
                printWriter.print(string);
                printWriter.print("  #");
                printWriter.print(n2);
                printWriter.print(": ");
                printWriter.println(object2.toString());
            }
        }
        if (this.mCreatedMenus != null && (n = this.mCreatedMenus.size()) > 0) {
            printWriter.print(string);
            printWriter.println("Fragments Created Menus:");
            for (n2 = 0; n2 < n; ++n2) {
                object2 = this.mCreatedMenus.get(n2);
                printWriter.print(string);
                printWriter.print("  #");
                printWriter.print(n2);
                printWriter.print(": ");
                printWriter.println(object2.toString());
            }
        }
        if (this.mBackStack != null && (n = this.mBackStack.size()) > 0) {
            printWriter.print(string);
            printWriter.println("Back Stack:");
            for (n2 = 0; n2 < n; ++n2) {
                object2 = this.mBackStack.get(n2);
                printWriter.print(string);
                printWriter.print("  #");
                printWriter.print(n2);
                printWriter.print(": ");
                printWriter.println(object2.toString());
                object2.dump(string2, (FileDescriptor)object, printWriter, arrstring);
            }
        }
        // MONITORENTER : this
        if (this.mBackStackIndices != null && (n = this.mBackStackIndices.size()) > 0) {
            printWriter.print(string);
            printWriter.println("Back Stack Indices:");
            for (n2 = 0; n2 < n; ++n2) {
                object = this.mBackStackIndices.get(n2);
                printWriter.print(string);
                printWriter.print("  #");
                printWriter.print(n2);
                printWriter.print(": ");
                printWriter.println(object);
            }
        }
        if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
            printWriter.print(string);
            printWriter.print("mAvailBackStackIndices: ");
            printWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
        }
        // MONITOREXIT : this
        if (this.mPendingActions != null && (n = this.mPendingActions.size()) > 0) {
            printWriter.print(string);
            printWriter.println("Pending Actions:");
            for (n2 = 0; n2 < n; ++n2) {
                object = this.mPendingActions.get(n2);
                printWriter.print(string);
                printWriter.print("  #");
                printWriter.print(n2);
                printWriter.print(": ");
                printWriter.println(object);
            }
        }
        printWriter.print(string);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(string);
        printWriter.print("  mActivity=");
        printWriter.println(this.mActivity);
        printWriter.print(string);
        printWriter.print("  mContainer=");
        printWriter.println(this.mContainer);
        if (this.mParent != null) {
            printWriter.print(string);
            printWriter.print("  mParent=");
            printWriter.println(this.mParent);
        }
        printWriter.print(string);
        printWriter.print("  mCurState=");
        printWriter.print(this.mCurState);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.mStateSaved);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            printWriter.print(string);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            printWriter.print(string);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices == null) return;
        if (this.mAvailIndices.size() <= 0) return;
        printWriter.print(string);
        printWriter.print("  mAvailIndices: ");
        printWriter.println(Arrays.toString(this.mAvailIndices.toArray()));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void enqueueAction(Runnable runnable, boolean bl) {
        if (!bl) {
            this.checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mActivity == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList();
            }
            this.mPendingActions.add(runnable);
            if (this.mPendingActions.size() == 1) {
                this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                this.mActivity.mHandler.post(this.mExecCommit);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean execPendingActions() {
        boolean bl;
        block13 : {
            if (this.mExecutingActions) {
                throw new IllegalStateException("Recursive entry to executePendingTransactions");
            }
            if (Looper.myLooper() != this.mActivity.mHandler.getLooper()) {
                throw new IllegalStateException("Must be called from main thread of process");
            }
            bl = false;
            do {
                int n;
                int n2;
                synchronized (this) {
                    if (this.mPendingActions == null || this.mPendingActions.size() == 0) {
                        // MONITOREXIT [3, 4, 12] lbl9 : MonitorExitStatement: MONITOREXIT : this
                        if (!this.mHavePendingDeferredStart) break block13;
                        n2 = 0;
                        for (n = 0; n < this.mActive.size(); ++n) {
                            Fragment fragment = this.mActive.get(n);
                            int n3 = n2;
                            if (fragment != null) {
                                n3 = n2;
                                if (fragment.mLoaderManager != null) {
                                    n3 = n2 | fragment.mLoaderManager.hasRunningLoaders();
                                }
                            }
                            n2 = n3;
                        }
                        break;
                    }
                    n2 = this.mPendingActions.size();
                    if (this.mTmpActions == null || this.mTmpActions.length < n2) {
                        this.mTmpActions = new Runnable[n2];
                    }
                    this.mPendingActions.toArray(this.mTmpActions);
                    this.mPendingActions.clear();
                    this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
                }
                this.mExecutingActions = true;
                for (n = 0; n < n2; ++n) {
                    this.mTmpActions[n].run();
                    this.mTmpActions[n] = null;
                }
                this.mExecutingActions = false;
                bl = true;
            } while (true);
            this.mHavePendingDeferredStart = false;
            this.startPendingDeferredFragments();
        }
        return bl;
    }

    @Override
    public boolean executePendingTransactions() {
        return this.execPendingActions();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Fragment findFragmentById(int n) {
        int n2;
        Fragment fragment;
        if (this.mAdded != null) {
            for (n2 = this.mAdded.size() - 1; n2 >= 0; --n2) {
                fragment = this.mAdded.get(n2);
                if (fragment != null && fragment.mFragmentId == n) return fragment;
                {
                    continue;
                }
            }
        } else {
            if (this.mActive == null) return null;
            {
                for (n2 = this.mActive.size() - 1; n2 >= 0; --n2) {
                    Fragment fragment2 = this.mActive.get(n2);
                    if (fragment2 == null) continue;
                    fragment = fragment2;
                    if (fragment2.mFragmentId == n) return fragment;
                    {
                        continue;
                    }
                }
            }
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Fragment findFragmentByTag(String string) {
        int n;
        Fragment fragment;
        if (this.mAdded != null && string != null) {
            for (n = this.mAdded.size() - 1; n >= 0; --n) {
                fragment = this.mAdded.get(n);
                if (fragment != null && string.equals(fragment.mTag)) return fragment;
                {
                    continue;
                }
            }
        } else {
            if (this.mActive == null || string == null) return null;
            {
                for (n = this.mActive.size() - 1; n >= 0; --n) {
                    Fragment fragment2 = this.mActive.get(n);
                    if (fragment2 == null) continue;
                    fragment = fragment2;
                    if (string.equals(fragment2.mTag)) return fragment;
                    {
                        continue;
                    }
                }
            }
            return null;
        }
    }

    public Fragment findFragmentByWho(String string) {
        if (this.mActive != null && string != null) {
            for (int i = this.mActive.size() - 1; i >= 0; --i) {
                Fragment fragment = this.mActive.get(i);
                if (fragment == null || (fragment = fragment.findFragmentByWho(string)) == null) continue;
                return fragment;
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void freeBackStackIndex(int n) {
        synchronized (this) {
            this.mBackStackIndices.set(n, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v("FragmentManager", "Freeing back stack index " + n);
            }
            this.mAvailBackStackIndices.add(n);
            return;
        }
    }

    @Override
    public FragmentManager.BackStackEntry getBackStackEntryAt(int n) {
        return this.mBackStack.get(n);
    }

    @Override
    public int getBackStackEntryCount() {
        if (this.mBackStack != null) {
            return this.mBackStack.size();
        }
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public Fragment getFragment(Bundle object, String string) {
        Fragment fragment;
        int n = object.getInt(string, -1);
        if (n == -1) {
            return null;
        }
        if (n >= this.mActive.size()) {
            this.throwException(new IllegalStateException("Fragment no longer exists for key " + string + ": index " + n));
        }
        object = fragment = this.mActive.get(n);
        if (fragment != null) return object;
        this.throwException(new IllegalStateException("Fragment no longer exists for key " + string + ": index " + n));
        return fragment;
    }

    @Override
    public List<Fragment> getFragments() {
        return this.mActive;
    }

    public void hideFragment(Fragment fragment, int n, int n2) {
        if (DEBUG) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation animation = this.loadAnimation(fragment, n, false, n2);
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    @Override
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    Animation loadAnimation(Fragment object, int n, boolean bl, int n2) {
        Animation animation = object.onCreateAnimation(n, bl, object.mNextAnim);
        if (animation != null) {
            return animation;
        }
        if (object.mNextAnim != 0 && (object = AnimationUtils.loadAnimation(this.mActivity, object.mNextAnim)) != null) {
            return object;
        }
        if (n == 0) {
            return null;
        }
        if ((n = FragmentManagerImpl.transitToStyleIndex(n, bl)) < 0) {
            return null;
        }
        switch (n) {
            default: {
                n = n2;
                if (n2 == 0) {
                    n = n2;
                    if (this.mActivity.getWindow() != null) {
                        n = this.mActivity.getWindow().getAttributes().windowAnimations;
                    }
                }
                if (n != 0) break;
                return null;
            }
            case 1: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mActivity, 1.125f, 1.0f, 0.0f, 1.0f);
            }
            case 2: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mActivity, 1.0f, 0.975f, 1.0f, 0.0f);
            }
            case 3: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mActivity, 0.975f, 1.0f, 0.0f, 1.0f);
            }
            case 4: {
                return FragmentManagerImpl.makeOpenCloseAnimation(this.mActivity, 1.0f, 1.075f, 1.0f, 0.0f);
            }
            case 5: {
                return FragmentManagerImpl.makeFadeAnimation(this.mActivity, 0.0f, 1.0f);
            }
            case 6: {
                return FragmentManagerImpl.makeFadeAnimation(this.mActivity, 1.0f, 0.0f);
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void makeActive(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            return;
        }
        if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
            if (this.mActive == null) {
                this.mActive = new ArrayList();
            }
            fragment.setIndex(this.mActive.size(), this.mParent);
            this.mActive.add(fragment);
        } else {
            fragment.setIndex(this.mAvailIndices.remove(this.mAvailIndices.size() - 1), this.mParent);
            this.mActive.set(fragment.mIndex, fragment);
        }
        if (!DEBUG) return;
        Log.v("FragmentManager", "Allocated fragment index " + fragment);
    }

    void makeInactive(Fragment fragment) {
        if (fragment.mIndex < 0) {
            return;
        }
        if (DEBUG) {
            Log.v("FragmentManager", "Freeing fragment index " + fragment);
        }
        this.mActive.set(fragment.mIndex, null);
        if (this.mAvailIndices == null) {
            this.mAvailIndices = new ArrayList();
        }
        this.mAvailIndices.add(fragment.mIndex);
        this.mActivity.invalidateSupportFragment(fragment.mWho);
        fragment.initState();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void moveToState(int n, int n2, int n3, boolean bl) {
        if (this.mActivity == null && n != 0) {
            throw new IllegalStateException("No activity");
        }
        if (!(bl || this.mCurState != n)) {
            return;
        }
        this.mCurState = n;
        if (this.mActive == null) return;
        boolean bl2 = false;
        int n4 = 0;
        do {
            if (n4 >= this.mActive.size()) {
                this.startPendingDeferredFragments();
                if (!this.mNeedMenuInvalidate) return;
                if (this.mActivity == null) return;
                if (this.mCurState != 5) return;
                this.mActivity.supportInvalidateOptionsMenu();
                this.mNeedMenuInvalidate = false;
                return;
            }
            Fragment fragment = this.mActive.get(n4);
            boolean bl3 = bl2;
            if (fragment != null) {
                this.moveToState(fragment, n, n2, n3, false);
                bl3 = bl2;
                if (fragment.mLoaderManager != null) {
                    bl3 = bl2 | fragment.mLoaderManager.hasRunningLoaders();
                }
            }
            ++n4;
            bl2 = bl3;
        } while (true);
    }

    void moveToState(int n, boolean bl) {
        this.moveToState(n, 0, 0, bl);
    }

    void moveToState(Fragment fragment) {
        this.moveToState(fragment, this.mCurState, 0, 0, false);
    }

    /*
     * Exception decompiling
     */
    void moveToState(Fragment var1_1, int var2_2, int var3_3, int var4_4, boolean var5_5) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.rebuildSwitches(SwitchReplacer.java:330)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:518)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    public void performPendingDeferredStart(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.mExecutingActions) {
                this.mHavePendingDeferredStart = true;
            }
        } else {
            return;
        }
        fragment.mDeferStart = false;
        this.moveToState(fragment, this.mCurState, 0, 0, false);
    }

    @Override
    public void popBackStack() {
        this.enqueueAction(new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, -1, 0);
            }
        }, false);
    }

    @Override
    public void popBackStack(final int n, final int n2) {
        if (n < 0) {
            throw new IllegalArgumentException("Bad id: " + n);
        }
        this.enqueueAction(new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, n, n2);
            }
        }, false);
    }

    @Override
    public void popBackStack(final String string, final int n) {
        this.enqueueAction(new Runnable(){

            @Override
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, string, -1, n);
            }
        }, false);
    }

    @Override
    public boolean popBackStackImmediate() {
        this.checkStateLoss();
        this.executePendingTransactions();
        return this.popBackStackState(this.mActivity.mHandler, null, -1, 0);
    }

    @Override
    public boolean popBackStackImmediate(int n, int n2) {
        this.checkStateLoss();
        this.executePendingTransactions();
        if (n < 0) {
            throw new IllegalArgumentException("Bad id: " + n);
        }
        return this.popBackStackState(this.mActivity.mHandler, null, n, n2);
    }

    @Override
    public boolean popBackStackImmediate(String string, int n) {
        this.checkStateLoss();
        this.executePendingTransactions();
        return this.popBackStackState(this.mActivity.mHandler, string, -1, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean popBackStackState(Handler object, String object2, int n, int n2) {
        if (this.mBackStack == null) {
            return false;
        }
        if (object2 == null && n < 0 && (n2 & 1) == 0) {
            n = this.mBackStack.size() - 1;
            if (n < 0) return false;
            this.mBackStack.remove(n).popFromBackStack(true);
            this.reportBackStackChanged();
            return true;
        }
        int n3 = -1;
        if (object2 != null || n >= 0) {
            int n4;
            for (n4 = this.mBackStack.size() - 1; n4 >= 0; --n4) {
                object = this.mBackStack.get(n4);
                if (object2 != null && object2.equals(object.getName()) || n >= 0 && n == object.mIndex) break;
            }
            if (n4 < 0) return false;
            n3 = n4;
            if ((n2 & 1) != 0) {
                n2 = n4 - 1;
                do {
                    n3 = n2;
                    if (n2 < 0) break;
                    object = this.mBackStack.get(n2);
                    if (!(object2 != null && object2.equals(object.getName()))) {
                        n3 = n2;
                        if (n < 0) break;
                        n3 = n2;
                        if (n != object.mIndex) break;
                    }
                    --n2;
                } while (true);
            }
        }
        if (n3 == this.mBackStack.size() - 1) return false;
        object = new ArrayList();
        for (n = this.mBackStack.size() - 1; n > n3; --n) {
            object.add(this.mBackStack.remove(n));
        }
        n2 = object.size() - 1;
        n = 0;
        do {
            if (n > n2) {
                this.reportBackStackChanged();
                return true;
            }
            if (DEBUG) {
                Log.v("FragmentManager", "Popping back stack state: " + object.get(n));
            }
            object2 = (BackStackRecord)object.get(n);
            boolean bl = n == n2;
            object2.popFromBackStack(bl);
            ++n;
        } while (true);
    }

    @Override
    public void putFragment(Bundle bundle, String string, Fragment fragment) {
        if (fragment.mIndex < 0) {
            this.throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(string, fragment.mIndex);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void removeFragment(Fragment fragment, int n, int n2) {
        if (DEBUG) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        int n3 = !fragment.isInBackStack() ? 1 : 0;
        if (!(fragment.mDetached && n3 == 0)) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            n3 = n3 != 0 ? 0 : 1;
            this.moveToState(fragment, n3, n, n2, false);
        }
    }

    @Override
    public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener onBackStackChangedListener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(onBackStackChangedListener);
        }
    }

    void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            for (int i = 0; i < this.mBackStackChangeListeners.size(); ++i) {
                this.mBackStackChangeListeners.get(i).onBackStackChanged();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void restoreAllState(Parcelable parcelable, ArrayList<Fragment> object) {
        Object object2;
        Object object3;
        int n;
        if (parcelable == null) {
            return;
        }
        parcelable = (FragmentManagerState)parcelable;
        if (parcelable.mActive == null) return;
        if (object != null) {
            for (n = 0; n < object.size(); ++n) {
                object2 = (Fragment)object.get(n);
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: re-attaching retained " + object2);
                }
                object3 = parcelable.mActive[object2.mIndex];
                object3.mInstance = object2;
                object2.mSavedViewState = null;
                object2.mBackStackNesting = 0;
                object2.mInLayout = false;
                object2.mAdded = false;
                object2.mTarget = null;
                if (object3.mSavedFragmentState == null) continue;
                object3.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
                object2.mSavedViewState = object3.mSavedFragmentState.getSparseParcelableArray("android:view_state");
            }
        }
        this.mActive = new ArrayList(parcelable.mActive.length);
        if (this.mAvailIndices != null) {
            this.mAvailIndices.clear();
        }
        for (n = 0; n < parcelable.mActive.length; ++n) {
            object2 = parcelable.mActive[n];
            if (object2 != null) {
                object3 = object2.instantiate(this.mActivity, this.mParent);
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: active #" + n + ": " + object3);
                }
                this.mActive.add((Fragment)object3);
                object2.mInstance = null;
                continue;
            }
            this.mActive.add(null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList();
            }
            if (DEBUG) {
                Log.v("FragmentManager", "restoreAllState: avail #" + n);
            }
            this.mAvailIndices.add(n);
        }
        if (object != null) {
            for (n = 0; n < object.size(); ++n) {
                object2 = (Fragment)object.get(n);
                if (object2.mTargetIndex < 0) continue;
                if (object2.mTargetIndex < this.mActive.size()) {
                    object2.mTarget = this.mActive.get(object2.mTargetIndex);
                    continue;
                }
                Log.w("FragmentManager", "Re-attaching retained fragment " + object2 + " target no longer exists: " + object2.mTargetIndex);
                object2.mTarget = null;
            }
        }
        if (parcelable.mAdded == null) {
            this.mAdded = null;
        } else {
            this.mAdded = new ArrayList(parcelable.mAdded.length);
            for (n = 0; n < parcelable.mAdded.length; ++n) {
                object = this.mActive.get(parcelable.mAdded[n]);
                if (object == null) {
                    this.throwException(new IllegalStateException("No instantiated fragment for index #" + parcelable.mAdded[n]));
                }
                object.mAdded = true;
                if (DEBUG) {
                    Log.v("FragmentManager", "restoreAllState: added #" + n + ": " + object);
                }
                if (this.mAdded.contains(object)) {
                    throw new IllegalStateException("Already added!");
                }
                this.mAdded.add((Fragment)object);
            }
        }
        if (parcelable.mBackStack == null) {
            this.mBackStack = null;
            return;
        }
        this.mBackStack = new ArrayList(parcelable.mBackStack.length);
        for (n = 0; n < parcelable.mBackStack.length; ++n) {
            object = parcelable.mBackStack[n].instantiate(this);
            if (DEBUG) {
                Log.v("FragmentManager", "restoreAllState: back stack #" + n + " (index " + object.mIndex + "): " + object);
                object.dump("  ", new PrintWriter(new LogWriter("FragmentManager")), false);
            }
            this.mBackStack.add((BackStackRecord)object);
            if (object.mIndex < 0) continue;
            this.setBackStackIndex(object.mIndex, (BackStackRecord)object);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> arrayList = null;
        ArrayList<Fragment> arrayList2 = null;
        if (this.mActive == null) return arrayList;
        int n = 0;
        do {
            arrayList = arrayList2;
            if (n >= this.mActive.size()) {
                return arrayList;
            }
            Fragment fragment = this.mActive.get(n);
            ArrayList<Fragment> arrayList3 = arrayList2;
            if (fragment != null) {
                arrayList3 = arrayList2;
                if (fragment.mRetainInstance) {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList<Fragment>();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    int n2 = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    fragment.mTargetIndex = n2;
                    arrayList3 = arrayList;
                    if (DEBUG) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                        arrayList3 = arrayList;
                    }
                }
            }
            ++n;
            arrayList2 = arrayList3;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    Parcelable saveAllState() {
        this.execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null) return null;
        if (this.mActive.size() <= 0) {
            return null;
        }
        int n = this.mActive.size();
        FragmentState[] arrfragmentState = new FragmentState[n];
        int n2 = 0;
        int n3 = 0;
        do {
            if (n3 >= n) {
                if (!DEBUG) return null;
                Log.v("FragmentManager", "saveAllState: no fragments!");
                return null;
            }
            Object object = this.mActive.get(n3);
            if (object != null) {
                BackStackState[] arrbackStackState;
                if (object.mIndex < 0) {
                    this.throwException(new IllegalStateException("Failure saving state: active " + object + " has cleared index: " + object.mIndex));
                }
                int n4 = 1;
                arrfragmentState[n3] = arrbackStackState = new FragmentState((Fragment)object);
                if (object.mState > 0 && arrbackStackState.mSavedFragmentState == null) {
                    arrbackStackState.mSavedFragmentState = this.saveFragmentBasicState((Fragment)object);
                    if (object.mTarget != null) {
                        if (object.mTarget.mIndex < 0) {
                            this.throwException(new IllegalStateException("Failure saving state: " + object + " has target not in fragment manager: " + object.mTarget));
                        }
                        if (arrbackStackState.mSavedFragmentState == null) {
                            arrbackStackState.mSavedFragmentState = new Bundle();
                        }
                        this.putFragment(arrbackStackState.mSavedFragmentState, "android:target_state", object.mTarget);
                        if (object.mTargetRequestCode != 0) {
                            arrbackStackState.mSavedFragmentState.putInt("android:target_req_state", object.mTargetRequestCode);
                        }
                    }
                } else {
                    arrbackStackState.mSavedFragmentState = object.mSavedFragmentState;
                }
                n2 = n4;
                if (DEBUG) {
                    Log.v("FragmentManager", "Saved state of " + object + ": " + arrbackStackState.mSavedFragmentState);
                    n2 = n4;
                }
            }
            ++n3;
        } while (true);
    }

    Bundle saveFragmentBasicState(Fragment fragment) {
        Bundle bundle = null;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        fragment.performSaveInstanceState(this.mStateBundle);
        if (!this.mStateBundle.isEmpty()) {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (fragment.mView != null) {
            this.saveFragmentViewState(fragment);
        }
        Bundle bundle2 = bundle;
        if (fragment.mSavedViewState != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        bundle = bundle2;
        if (!fragment.mUserVisibleHint) {
            bundle = bundle2;
            if (bundle2 == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    @Override
    public Fragment.SavedState saveFragmentInstanceState(Fragment object) {
        Fragment.SavedState savedState = null;
        if (object.mIndex < 0) {
            this.throwException(new IllegalStateException("Fragment " + object + " is not currently in the FragmentManager"));
        }
        Fragment.SavedState savedState2 = savedState;
        if (object.mState > 0) {
            object = this.saveFragmentBasicState((Fragment)object);
            savedState2 = savedState;
            if (object != null) {
                savedState2 = new Fragment.SavedState((Bundle)object);
            }
        }
        return savedState2;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    void saveFragmentViewState(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        if (this.mStateArray == null) {
            this.mStateArray = new SparseArray();
        } else {
            this.mStateArray.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.mStateArray);
        if (this.mStateArray.size() <= 0) return;
        fragment.mSavedViewState = this.mStateArray;
        this.mStateArray = null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setBackStackIndex(int n, BackStackRecord backStackRecord) {
        synchronized (this) {
            int n2;
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList();
            }
            if (n < n2) {
                if (DEBUG) {
                    Log.v("FragmentManager", "Setting back stack index " + n + " to " + backStackRecord);
                }
                this.mBackStackIndices.set(n, backStackRecord);
            } else {
                for (int i = n2 = this.mBackStackIndices.size(); i < n; ++i) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList();
                    }
                    if (DEBUG) {
                        Log.v("FragmentManager", "Adding available back stack index " + i);
                    }
                    this.mAvailBackStackIndices.add(i);
                }
                if (DEBUG) {
                    Log.v("FragmentManager", "Adding back stack index " + n + " with " + backStackRecord);
                }
                this.mBackStackIndices.add(backStackRecord);
            }
            return;
        }
    }

    public void showFragment(Fragment fragment, int n, int n2) {
        if (DEBUG) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation animation = this.loadAnimation(fragment, n, true, n2);
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void startPendingDeferredFragments() {
        if (this.mActive == null) {
            return;
        }
        for (int i = 0; i < this.mActive.size(); ++i) {
            Fragment fragment = this.mActive.get(i);
            if (fragment == null) continue;
            this.performPendingDeferredStart(fragment);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, stringBuilder);
        } else {
            DebugUtils.buildShortClassTag(this.mActivity, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

}

