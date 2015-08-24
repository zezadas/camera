/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class PagerAdapter {
    public static final int POSITION_NONE = -2;
    public static final int POSITION_UNCHANGED = -1;
    private DataSetObservable mObservable = new DataSetObservable();

    public void destroyItem(View view, int n, Object object) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void destroyItem(ViewGroup viewGroup, int n, Object object) {
        this.destroyItem((View)viewGroup, n, object);
    }

    public void finishUpdate(View view) {
    }

    public void finishUpdate(ViewGroup viewGroup) {
        this.finishUpdate((View)viewGroup);
    }

    public abstract int getCount();

    public int getItemPosition(Object object) {
        return -1;
    }

    public CharSequence getPageTitle(int n) {
        return null;
    }

    public float getPageWidth(int n) {
        return 1.0f;
    }

    public Object instantiateItem(View view, int n) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public Object instantiateItem(ViewGroup viewGroup, int n) {
        return this.instantiateItem((View)viewGroup, n);
    }

    public abstract boolean isViewFromObject(View var1, Object var2);

    public void notifyDataSetChanged() {
        this.mObservable.notifyChanged();
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.mObservable.registerObserver(dataSetObserver);
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }

    public Parcelable saveState() {
        return null;
    }

    public void setPrimaryItem(View view, int n, Object object) {
    }

    public void setPrimaryItem(ViewGroup viewGroup, int n, Object object) {
        this.setPrimaryItem((View)viewGroup, n, object);
    }

    public void startUpdate(View view) {
    }

    public void startUpdate(ViewGroup viewGroup) {
        this.startUpdate((View)viewGroup);
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.mObservable.unregisterObserver(dataSetObserver);
    }
}

