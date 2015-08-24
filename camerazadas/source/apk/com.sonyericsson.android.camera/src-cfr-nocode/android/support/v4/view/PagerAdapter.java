/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class PagerAdapter {
    public static final int POSITION_NONE = -2;
    public static final int POSITION_UNCHANGED = -1;
    private DataSetObservable mObservable;

    public PagerAdapter();

    public void destroyItem(View var1, int var2, Object var3);

    public void destroyItem(ViewGroup var1, int var2, Object var3);

    public void finishUpdate(View var1);

    public void finishUpdate(ViewGroup var1);

    public abstract int getCount();

    public int getItemPosition(Object var1);

    public CharSequence getPageTitle(int var1);

    public float getPageWidth(int var1);

    public Object instantiateItem(View var1, int var2);

    public Object instantiateItem(ViewGroup var1, int var2);

    public abstract boolean isViewFromObject(View var1, Object var2);

    public void notifyDataSetChanged();

    public void registerDataSetObserver(DataSetObserver var1);

    public void restoreState(Parcelable var1, ClassLoader var2);

    public Parcelable saveState();

    public void setPrimaryItem(View var1, int var2, Object var3);

    public void setPrimaryItem(ViewGroup var1, int var2, Object var3);

    public void startUpdate(View var1);

    public void startUpdate(ViewGroup var1);

    public void unregisterDataSetObserver(DataSetObserver var1);
}

