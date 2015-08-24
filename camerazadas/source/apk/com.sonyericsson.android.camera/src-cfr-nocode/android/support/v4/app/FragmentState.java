/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
final class FragmentState
implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR;
    final Bundle mArguments;
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final int mIndex;
    Fragment mInstance;
    final boolean mRetainInstance;
    Bundle mSavedFragmentState;
    final String mTag;

    static;

    public FragmentState(Parcel var1);

    public FragmentState(Fragment var1);

    @Override
    public int describeContents();

    public Fragment instantiate(FragmentActivity var1, Fragment var2);

    @Override
    public void writeToParcel(Parcel var1, int var2);

}

