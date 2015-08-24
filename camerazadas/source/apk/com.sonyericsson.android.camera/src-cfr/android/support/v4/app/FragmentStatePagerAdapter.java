/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Set;

public abstract class FragmentStatePagerAdapter
extends PagerAdapter {
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentStatePagerAdapter";
    private FragmentTransaction mCurTransaction = null;
    private Fragment mCurrentPrimaryItem = null;
    private final FragmentManager mFragmentManager;
    private ArrayList<Fragment> mFragments = new ArrayList();
    private ArrayList<Fragment.SavedState> mSavedState = new ArrayList();

    public FragmentStatePagerAdapter(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    @Override
    public void destroyItem(ViewGroup object, int n, Object object2) {
        object = (Fragment)object2;
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.beginTransaction();
        }
        while (this.mSavedState.size() <= n) {
            this.mSavedState.add(null);
        }
        this.mSavedState.set(n, this.mFragmentManager.saveFragmentInstanceState((Fragment)object));
        this.mFragments.set(n, null);
        this.mCurTransaction.remove((Fragment)object);
    }

    @Override
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.mCurTransaction != null) {
            this.mCurTransaction.commitAllowingStateLoss();
            this.mCurTransaction = null;
            this.mFragmentManager.executePendingTransactions();
        }
    }

    public abstract Fragment getItem(int var1);

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int n) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.mFragments.size() > n && (fragment = this.mFragments.get(n)) != null) {
            return fragment;
        }
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.beginTransaction();
        }
        fragment = this.getItem(n);
        if (this.mSavedState.size() > n && (savedState = this.mSavedState.get(n)) != null) {
            fragment.setInitialSavedState(savedState);
        }
        while (this.mFragments.size() <= n) {
            this.mFragments.add(null);
        }
        fragment.setMenuVisibility(false);
        fragment.setUserVisibleHint(false);
        this.mFragments.set(n, fragment);
        this.mCurTransaction.add(viewGroup.getId(), fragment);
        return fragment;
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        if (((Fragment)object).getView() == view) {
            return true;
        }
        return false;
    }

    @Override
    public void restoreState(Parcelable parcelable, ClassLoader object) {
        if (parcelable != null) {
            int n;
            parcelable = (Bundle)parcelable;
            parcelable.setClassLoader((ClassLoader)object);
            object = parcelable.getParcelableArray("states");
            this.mSavedState.clear();
            this.mFragments.clear();
            if (object != null) {
                for (n = 0; n < object.length; ++n) {
                    this.mSavedState.add((Fragment.SavedState)object[n]);
                }
            }
            for (String string : parcelable.keySet()) {
                if (!string.startsWith("f")) continue;
                n = Integer.parseInt(string.substring(1));
                Fragment fragment = this.mFragmentManager.getFragment((Bundle)parcelable, string);
                if (fragment != null) {
                    while (this.mFragments.size() <= n) {
                        this.mFragments.add(null);
                    }
                    fragment.setMenuVisibility(false);
                    this.mFragments.set(n, fragment);
                    continue;
                }
                Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + string);
            }
        }
    }

    @Override
    public Parcelable saveState() {
        Object object;
        Object object2 = null;
        if (this.mSavedState.size() > 0) {
            object2 = new Bundle();
            object = new Fragment.SavedState[this.mSavedState.size()];
            this.mSavedState.toArray((T[])object);
            object2.putParcelableArray("states", (Parcelable[])object);
        }
        for (int i = 0; i < this.mFragments.size(); ++i) {
            Fragment fragment = this.mFragments.get(i);
            object = object2;
            if (fragment != null) {
                object = object2;
                if (object2 == null) {
                    object = new Bundle();
                }
                object2 = "f" + i;
                this.mFragmentManager.putFragment((Bundle)object, (String)object2, fragment);
            }
            object2 = object;
        }
        return object2;
    }

    @Override
    public void setPrimaryItem(ViewGroup object, int n, Object object2) {
        object = (Fragment)object2;
        if (object != this.mCurrentPrimaryItem) {
            if (this.mCurrentPrimaryItem != null) {
                this.mCurrentPrimaryItem.setMenuVisibility(false);
                this.mCurrentPrimaryItem.setUserVisibleHint(false);
            }
            if (object != null) {
                object.setMenuVisibility(true);
                object.setUserVisibleHint(true);
            }
            this.mCurrentPrimaryItem = object;
        }
    }

    @Override
    public void startUpdate(ViewGroup viewGroup) {
    }
}

