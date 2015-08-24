/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.request.ag;

public class af
implements SafeParcelable {
    public static final Parcelable.Creator<af> CREATOR = new ag();
    private final int BR;
    private final Subscription US;
    private final boolean UT;

    af(int n, Subscription subscription, boolean bl) {
        this.BR = n;
        this.US = subscription;
        this.UT = bl;
    }

    private af(a a) {
        this.BR = 1;
        this.US = a.US;
        this.UT = a.UT;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    int getVersionCode() {
        return this.BR;
    }

    public Subscription jD() {
        return this.US;
    }

    public boolean jE() {
        return this.UT;
    }

    public String toString() {
        return n.h(this).a("subscription", this.US).toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ag.a(this, parcel, n);
    }

    public static class a {
        private Subscription US;
        private boolean UT = false;

        public a b(Subscription subscription) {
            this.US = subscription;
            return this;
        }

        /*
         * Enabled aggressive block sorting
         */
        public af jF() {
            boolean bl = this.US != null;
            o.a(bl, "Must call setSubscription()");
            return new af(this);
        }
    }

}

