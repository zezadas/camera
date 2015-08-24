/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.BackStackState;
import android.support.v4.app.FragmentState;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
final class FragmentManagerState
implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR;
    FragmentState[] mActive;
    int[] mAdded;
    BackStackState[] mBackStack;

    static;

    public FragmentManagerState();

    public FragmentManagerState(Parcel var1);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);

}

