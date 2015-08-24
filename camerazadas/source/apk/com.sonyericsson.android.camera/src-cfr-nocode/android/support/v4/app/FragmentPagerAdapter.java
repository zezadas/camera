/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

/*
 * Exception performing whole class analysis.
 */
public abstract class FragmentPagerAdapter
extends PagerAdapter {
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentPagerAdapter";
    private FragmentTransaction mCurTransaction;
    private Fragment mCurrentPrimaryItem;
    private final FragmentManager mFragmentManager;

    public FragmentPagerAdapter(FragmentManager var1);

    private static String makeFragmentName(int var0, long var1);

    @Override
    public void destroyItem(ViewGroup var1, int var2, Object var3);

    @Override
    public void finishUpdate(ViewGroup var1);

    public abstract Fragment getItem(int var1);

    public long getItemId(int var1);

    @Override
    public Object instantiateItem(ViewGroup var1, int var2);

    @Override
    public boolean isViewFromObject(View var1, Object var2);

    @Override
    public void restoreState(Parcelable var1, ClassLoader var2);

    @Override
    public Parcelable saveState();

    @Override
    public void setPrimaryItem(ViewGroup var1, int var2, Object var3);

    @Override
    public void startUpdate(ViewGroup var1);
}

