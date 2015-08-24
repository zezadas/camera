/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManagerImpl;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>(){

        @Override
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        public BackStackState[] newArray(int n) {
            return new BackStackState[n];
        }
    };
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int mIndex;
    final String mName;
    final int[] mOps;
    final int mTransition;
    final int mTransitionStyle;

    public BackStackState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mTransitionStyle = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        this.mBreadCrumbTitleText = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    /*
     * Enabled aggressive block sorting
     */
    public BackStackState(FragmentManagerImpl object, BackStackRecord backStackRecord) {
        int n;
        int n2 = 0;
        object = backStackRecord.mHead;
        while (object != null) {
            n = n2;
            if (object.removed != null) {
                n = n2 + object.removed.size();
            }
            object = object.next;
            n2 = n;
        }
        this.mOps = new int[backStackRecord.mNumOp * 7 + n2];
        if (!backStackRecord.mAddToBackStack) {
            throw new IllegalStateException("Not on back stack");
        }
        object = backStackRecord.mHead;
        n2 = 0;
        do {
            if (object == null) {
                this.mTransition = backStackRecord.mTransition;
                this.mTransitionStyle = backStackRecord.mTransitionStyle;
                this.mName = backStackRecord.mName;
                this.mIndex = backStackRecord.mIndex;
                this.mBreadCrumbTitleRes = backStackRecord.mBreadCrumbTitleRes;
                this.mBreadCrumbTitleText = backStackRecord.mBreadCrumbTitleText;
                this.mBreadCrumbShortTitleRes = backStackRecord.mBreadCrumbShortTitleRes;
                this.mBreadCrumbShortTitleText = backStackRecord.mBreadCrumbShortTitleText;
                return;
            }
            int[] arrn = this.mOps;
            n = n2 + 1;
            arrn[n2] = object.cmd;
            arrn = this.mOps;
            int n3 = n + 1;
            n2 = object.fragment != null ? object.fragment.mIndex : -1;
            arrn[n] = n2;
            arrn = this.mOps;
            n2 = n3 + 1;
            arrn[n3] = object.enterAnim;
            arrn = this.mOps;
            n = n2 + 1;
            arrn[n2] = object.exitAnim;
            arrn = this.mOps;
            n2 = n + 1;
            arrn[n] = object.popEnterAnim;
            arrn = this.mOps;
            int n4 = n2 + 1;
            arrn[n2] = object.popExitAnim;
            if (object.removed != null) {
                this.mOps[n4] = n3 = object.removed.size();
                n2 = n4 + 1;
                for (n = 0; n < n3; ++n, ++n2) {
                    this.mOps[n2] = object.removed.get((int)n).mIndex;
                }
            } else {
                arrn = this.mOps;
                n2 = n4 + 1;
                arrn[n4] = 0;
            }
            object = object.next;
        } while (true);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public BackStackRecord instantiate(FragmentManagerImpl fragmentManagerImpl) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
        int n = 0;
        int n2 = 0;
        do {
            if (n >= this.mOps.length) {
                backStackRecord.mTransition = this.mTransition;
                backStackRecord.mTransitionStyle = this.mTransitionStyle;
                backStackRecord.mName = this.mName;
                backStackRecord.mIndex = this.mIndex;
                backStackRecord.mAddToBackStack = true;
                backStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
                backStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
                backStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
                backStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
                backStackRecord.bumpBackStackNesting(1);
                return backStackRecord;
            }
            BackStackRecord.Op op = new BackStackRecord.Op();
            Object object = this.mOps;
            int n3 = n + 1;
            op.cmd = object[n];
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + n2 + " base fragment #" + this.mOps[n3]);
            }
            object = this.mOps;
            n = n3 + 1;
            op.fragment = (n3 = object[n3]) >= 0 ? fragmentManagerImpl.mActive.get(n3) : null;
            object = this.mOps;
            n3 = n + 1;
            op.enterAnim = object[n];
            object = this.mOps;
            n = n3 + 1;
            op.exitAnim = object[n3];
            object = this.mOps;
            n3 = n + 1;
            op.popEnterAnim = object[n];
            object = this.mOps;
            int n4 = n3 + 1;
            op.popExitAnim = object[n3];
            object = this.mOps;
            n = n4 + 1;
            int n5 = object[n4];
            n3 = n;
            if (n5 > 0) {
                op.removed = new ArrayList(n5);
                n4 = 0;
                do {
                    n3 = n;
                    if (n4 >= n5) break;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " set remove fragment #" + this.mOps[n]);
                    }
                    object = fragmentManagerImpl.mActive.get(this.mOps[n]);
                    op.removed.add((Fragment)object);
                    ++n4;
                    ++n;
                } while (true);
            }
            n = n3;
            backStackRecord.addOp(op);
            ++n2;
        } while (true);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        parcel.writeIntArray(this.mOps);
        parcel.writeInt(this.mTransition);
        parcel.writeInt(this.mTransitionStyle);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
    }

}

