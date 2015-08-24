/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.util.LogWriter;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;

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
    boolean mAllowAddToBackStack = true;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex = -1;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    Op mTail;
    int mTransition;
    int mTransitionStyle;

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mManager = fragmentManagerImpl;
    }

    private void doAddOp(int n, Fragment fragment, String object, int n2) {
        fragment.mFragmentManager = this.mManager;
        if (object != null) {
            if (!(fragment.mTag == null || object.equals(fragment.mTag))) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + (String)object);
            }
            fragment.mTag = object;
        }
        if (n != 0) {
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != n) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + n);
            }
            fragment.mFragmentId = n;
            fragment.mContainerId = n;
        }
        object = new Op();
        object.cmd = n2;
        object.fragment = fragment;
        this.addOp((Op)object);
    }

    @Override
    public FragmentTransaction add(int n, Fragment fragment) {
        this.doAddOp(n, fragment, null, 1);
        return this;
    }

    @Override
    public FragmentTransaction add(int n, Fragment fragment, String string) {
        this.doAddOp(n, fragment, string, 1);
        return this;
    }

    @Override
    public FragmentTransaction add(Fragment fragment, String string) {
        this.doAddOp(0, fragment, string, 1);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        ++this.mNumOp;
    }

    @Override
    public FragmentTransaction addToBackStack(String string) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = string;
        return this;
    }

    @Override
    public FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    void bumpBackStackNesting(int n) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + n);
            }
            Op op = this.mHead;
            while (op != null) {
                Fragment fragment;
                if (op.fragment != null) {
                    fragment = op.fragment;
                    fragment.mBackStackNesting+=n;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
                if (op.removed != null) {
                    for (int i = op.removed.size() - 1; i >= 0; --i) {
                        fragment = op.removed.get(i);
                        fragment.mBackStackNesting+=n;
                        if (!FragmentManagerImpl.DEBUG) continue;
                        Log.v("FragmentManager", "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                    }
                }
                op = op.next;
            }
        }
    }

    @Override
    public int commit() {
        return this.commitInternal(false);
    }

    @Override
    public int commitAllowingStateLoss() {
        return this.commitInternal(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    int commitInternal(boolean bl) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "Commit: " + this);
            this.dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
        }
        this.mCommitted = true;
        this.mIndex = this.mAddToBackStack ? this.mManager.allocBackStackIndex(this) : -1;
        this.mManager.enqueueAction(this, bl);
        return this.mIndex;
    }

    @Override
    public FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    @Override
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public void dump(String string, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        this.dump(string, printWriter, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void dump(String string, PrintWriter printWriter, boolean bl) {
        if (bl) {
            printWriter.print(string);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(string);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(string);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(string);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(string);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(string);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead == null) {
            return;
        }
        printWriter.print(string);
        printWriter.println("Operations:");
        String string2 = string + "    ";
        Op op = this.mHead;
        int n = 0;
        while (op != null) {
            String string3;
            switch (op.cmd) {
                default: {
                    string3 = "cmd=" + op.cmd;
                    break;
                }
                case 0: {
                    string3 = "NULL";
                    break;
                }
                case 1: {
                    string3 = "ADD";
                    break;
                }
                case 2: {
                    string3 = "REPLACE";
                    break;
                }
                case 3: {
                    string3 = "REMOVE";
                    break;
                }
                case 4: {
                    string3 = "HIDE";
                    break;
                }
                case 5: {
                    string3 = "SHOW";
                    break;
                }
                case 6: {
                    string3 = "DETACH";
                    break;
                }
                case 7: {
                    string3 = "ATTACH";
                }
            }
            printWriter.print(string);
            printWriter.print("  Op #");
            printWriter.print(n);
            printWriter.print(": ");
            printWriter.print(string3);
            printWriter.print(" ");
            printWriter.println(op.fragment);
            if (bl) {
                if (op.enterAnim != 0 || op.exitAnim != 0) {
                    printWriter.print(string);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(op.enterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(op.exitAnim));
                }
                if (op.popEnterAnim != 0 || op.popExitAnim != 0) {
                    printWriter.print(string);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(op.popEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(op.popExitAnim));
                }
            }
            if (op.removed != null && op.removed.size() > 0) {
                for (int i = 0; i < op.removed.size(); ++i) {
                    printWriter.print(string2);
                    if (op.removed.size() == 1) {
                        printWriter.print("Removed: ");
                    } else {
                        if (i == 0) {
                            printWriter.println("Removed:");
                        }
                        printWriter.print(string2);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                    }
                    printWriter.println(op.removed.get(i));
                }
            }
            op = op.next;
            ++n;
        }
    }

    @Override
    public CharSequence getBreadCrumbShortTitle() {
        if (this.mBreadCrumbShortTitleRes != 0) {
            return this.mManager.mActivity.getText(this.mBreadCrumbShortTitleRes);
        }
        return this.mBreadCrumbShortTitleText;
    }

    @Override
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override
    public CharSequence getBreadCrumbTitle() {
        if (this.mBreadCrumbTitleRes != 0) {
            return this.mManager.mActivity.getText(this.mBreadCrumbTitleRes);
        }
        return this.mBreadCrumbTitleText;
    }

    @Override
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override
    public int getId() {
        return this.mIndex;
    }

    @Override
    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    @Override
    public FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    @Override
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    @Override
    public boolean isEmpty() {
        if (this.mNumOp == 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void popFromBackStack(boolean bl) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            this.dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
        }
        this.bumpBackStackNesting(-1);
        Op op = this.mTail;
        while (op != null) {
            switch (op.cmd) {
                Fragment fragment;
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
                case 1: {
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popExitAnim;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 2: {
                    fragment = op.fragment;
                    if (fragment != null) {
                        fragment.mNextAnim = op.popExitAnim;
                        this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    }
                    if (op.removed == null) break;
                    for (int i = 0; i < op.removed.size(); ++i) {
                        fragment = op.removed.get(i);
                        fragment.mNextAnim = op.popEnterAnim;
                        this.mManager.addFragment(fragment, false);
                    }
                    break;
                }
                case 3: {
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.addFragment(fragment, false);
                    break;
                }
                case 4: {
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.showFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 5: {
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popExitAnim;
                    this.mManager.hideFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 6: {
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.attachFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 7: {
                    fragment = op.fragment;
                    fragment.mNextAnim = op.popEnterAnim;
                    this.mManager.detachFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                }
            }
            op = op.prev;
        }
        if (bl) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle, true);
        }
        if (this.mIndex >= 0) {
            this.mManager.freeBackStackIndex(this.mIndex);
            this.mIndex = -1;
        }
    }

    @Override
    public FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    @Override
    public FragmentTransaction replace(int n, Fragment fragment) {
        return this.replace(n, fragment, null);
    }

    @Override
    public FragmentTransaction replace(int n, Fragment fragment, String string) {
        if (n == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        this.doAddOp(n, fragment, string, 2);
        return this;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (this.mAddToBackStack && this.mIndex < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        this.bumpBackStackNesting(1);
        var3_1 = this.mHead;
        do {
            if (var3_1 == null) {
                this.mManager.moveToState(this.mManager.mCurState, this.mTransition, this.mTransitionStyle, true);
                if (this.mAddToBackStack == false) return;
                this.mManager.addBackStackState(this);
                return;
            }
            switch (var3_1.cmd) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + var3_1.cmd);
                }
                case 1: {
                    var2_3 = var3_1.fragment;
                    var2_3.mNextAnim = var3_1.enterAnim;
                    this.mManager.addFragment(var2_3, false);
                    break;
                }
                case 2: {
                    var4_4 = var2_3 = var3_1.fragment;
                    if (this.mManager.mAdded == null) ** GOTO lbl51
                    var1_2 = 0;
                    do {
                        var4_4 = var2_3;
                        if (var1_2 >= this.mManager.mAdded.size()) break;
                        var5_5 = this.mManager.mAdded.get(var1_2);
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v("FragmentManager", "OP_REPLACE: adding=" + var2_3 + " old=" + var5_5);
                        }
                        if (var2_3 == null) ** GOTO lbl-1000
                        var4_4 = var2_3;
                        if (var5_5.mContainerId == var2_3.mContainerId) lbl-1000: // 2 sources:
                        {
                            if (var5_5 == var2_3) {
                                var4_4 = null;
                                var3_1.fragment = null;
                            } else {
                                if (var3_1.removed == null) {
                                    var3_1.removed = new ArrayList<E>();
                                }
                                var3_1.removed.add(var5_5);
                                var5_5.mNextAnim = var3_1.exitAnim;
                                if (this.mAddToBackStack) {
                                    ++var5_5.mBackStackNesting;
                                    if (FragmentManagerImpl.DEBUG) {
                                        Log.v("FragmentManager", "Bump nesting of " + var5_5 + " to " + var5_5.mBackStackNesting);
                                    }
                                }
                                this.mManager.removeFragment(var5_5, this.mTransition, this.mTransitionStyle);
                                var4_4 = var2_3;
                            }
                        }
                        ++var1_2;
                        var2_3 = var4_4;
                    } while (true);
lbl51: // 2 sources:
                    if (var4_4 == null) break;
                    var4_4.mNextAnim = var3_1.enterAnim;
                    this.mManager.addFragment(var4_4, false);
                    break;
                }
                case 3: {
                    var2_3 = var3_1.fragment;
                    var2_3.mNextAnim = var3_1.exitAnim;
                    this.mManager.removeFragment(var2_3, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 4: {
                    var2_3 = var3_1.fragment;
                    var2_3.mNextAnim = var3_1.exitAnim;
                    this.mManager.hideFragment(var2_3, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 5: {
                    var2_3 = var3_1.fragment;
                    var2_3.mNextAnim = var3_1.enterAnim;
                    this.mManager.showFragment(var2_3, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 6: {
                    var2_3 = var3_1.fragment;
                    var2_3.mNextAnim = var3_1.exitAnim;
                    this.mManager.detachFragment(var2_3, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 7: {
                    var2_3 = var3_1.fragment;
                    var2_3.mNextAnim = var3_1.enterAnim;
                    this.mManager.attachFragment(var2_3, this.mTransition, this.mTransitionStyle);
                }
            }
            var3_1 = var3_1.next;
        } while (true);
    }

    @Override
    public FragmentTransaction setBreadCrumbShortTitle(int n) {
        this.mBreadCrumbShortTitleRes = n;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Override
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @Override
    public FragmentTransaction setBreadCrumbTitle(int n) {
        this.mBreadCrumbTitleRes = n;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Override
    public FragmentTransaction setBreadCrumbTitle(CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    @Override
    public FragmentTransaction setCustomAnimations(int n, int n2) {
        return this.setCustomAnimations(n, n2, 0, 0);
    }

    @Override
    public FragmentTransaction setCustomAnimations(int n, int n2, int n3, int n4) {
        this.mEnterAnim = n;
        this.mExitAnim = n2;
        this.mPopEnterAnim = n3;
        this.mPopExitAnim = n4;
        return this;
    }

    @Override
    public FragmentTransaction setTransition(int n) {
        this.mTransition = n;
        return this;
    }

    @Override
    public FragmentTransaction setTransitionStyle(int n) {
        this.mTransitionStyle = n;
        return this;
    }

    @Override
    public FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("BackStackEntry{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.mIndex);
        }
        if (this.mName != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.mName);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

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

        Op() {
        }
    }

}

