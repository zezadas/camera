/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.FragmentManagerImpl;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
final class BackStackState
implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR;
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int mIndex;
    final String mName;
    final int[] mOps;
    final int mTransition;
    final int mTransitionStyle;

    static;

    public BackStackState(Parcel var1);

    public BackStackState(FragmentManagerImpl var1, BackStackRecord var2);

    @Override
    public int describeContents();

    public BackStackRecord instantiate(FragmentManagerImpl var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

}

