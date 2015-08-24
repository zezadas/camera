/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.FragmentTransaction;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 */
final class BackStackRecord
extends FragmentTransaction
implements FragmentManager.BackStackEntry,
Runnable {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    Op mTail;
    int mTransition;
    int mTransitionStyle;

    public BackStackRecord(FragmentManagerImpl var1);

    private void doAddOp(int var1, Fragment var2, String var3, int var4);

    @Override
    public FragmentTransaction add(int var1, Fragment var2);

    @Override
    public FragmentTransaction add(int var1, Fragment var2, String var3);

    @Override
    public FragmentTransaction add(Fragment var1, String var2);

    void addOp(Op var1);

    @Override
    public FragmentTransaction addToBackStack(String var1);

    @Override
    public FragmentTransaction attach(Fragment var1);

    void bumpBackStackNesting(int var1);

    @Override
    public int commit();

    @Override
    public int commitAllowingStateLoss();

    int commitInternal(boolean var1);

    @Override
    public FragmentTransaction detach(Fragment var1);

    @Override
    public FragmentTransaction disallowAddToBackStack();

    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    public void dump(String var1, PrintWriter var2, boolean var3);

    @Override
    public CharSequence getBreadCrumbShortTitle();

    @Override
    public int getBreadCrumbShortTitleRes();

    @Override
    public CharSequence getBreadCrumbTitle();

    @Override
    public int getBreadCrumbTitleRes();

    @Override
    public int getId();

    @Override
    public String getName();

    public int getTransition();

    public int getTransitionStyle();

    @Override
    public FragmentTransaction hide(Fragment var1);

    @Override
    public boolean isAddToBackStackAllowed();

    @Override
    public boolean isEmpty();

    public void popFromBackStack(boolean var1);

    @Override
    public FragmentTransaction remove(Fragment var1);

    @Override
    public FragmentTransaction replace(int var1, Fragment var2);

    @Override
    public FragmentTransaction replace(int var1, Fragment var2, String var3);

    @Override
    public void run();

    @Override
    public FragmentTransaction setBreadCrumbShortTitle(int var1);

    @Override
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence var1);

    @Override
    public FragmentTransaction setBreadCrumbTitle(int var1);

    @Override
    public FragmentTransaction setBreadCrumbTitle(CharSequence var1);

    @Override
    public FragmentTransaction setCustomAnimations(int var1, int var2);

    @Override
    public FragmentTransaction setCustomAnimations(int var1, int var2, int var3, int var4);

    @Override
    public FragmentTransaction setTransition(int var1);

    @Override
    public FragmentTransaction setTransitionStyle(int var1);

    @Override
    public FragmentTransaction show(Fragment var1);

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList<Fragment> removed;

        Op();
    }

}

