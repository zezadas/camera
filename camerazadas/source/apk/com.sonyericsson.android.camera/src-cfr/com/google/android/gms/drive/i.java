/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;

public abstract class i
implements Parcelable {
    private volatile transient boolean NL = false;

    protected abstract void I(Parcel var1, int var2);

    public final boolean hT() {
        return this.NL;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void writeToParcel(Parcel parcel, int n) {
        boolean bl = !this.hT();
        o.I(bl);
        this.NL = true;
        this.I(parcel, n);
    }
}

