/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.ax;
import com.google.android.gms.wearable.internal.c;

public class b
implements SafeParcelable {
    public static final Parcelable.Creator<b> CREATOR = new c();
    final int BR;
    public final ae avk;
    public final IntentFilter[] avl;

    /*
     * Enabled aggressive block sorting
     */
    b(int n, IBinder iBinder, IntentFilter[] arrintentFilter) {
        this.BR = n;
        this.avk = iBinder != null ? ae.a.bS(iBinder) : null;
        this.avl = arrintentFilter;
    }

    public b(ax ax) {
        this.BR = 1;
        this.avk = ax;
        this.avl = ax.qb();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    IBinder pV() {
        if (this.avk == null) {
            return null;
        }
        return this.avk.asBinder();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

