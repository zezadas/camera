/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.ho;
import com.google.android.gms.internal.hs;
import java.util.List;

public class hm {

    public static class a
    implements SafeParcelable {
        public static final hn CREATOR = new hn();
        final int BR;
        public final Account Cj;

        public a() {
            this(null);
        }

        a(int n, Account account) {
            this.BR = n;
            this.Cj = account;
        }

        public a(Account account) {
            this(1, account);
        }

        @Override
        public int describeContents() {
            hn hn = CREATOR;
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            hn hn = CREATOR;
            hn.a(this, parcel, n);
        }
    }

    public static class b
    implements Result,
    SafeParcelable {
        public static final ho CREATOR = new ho();
        final int BR;
        public Status Ck;
        public List<hs> Cl;

        public b() {
            this.BR = 1;
        }

        b(int n, Status status, List<hs> list) {
            this.BR = n;
            this.Ck = status;
            this.Cl = list;
        }

        @Override
        public int describeContents() {
            ho ho = CREATOR;
            return 0;
        }

        @Override
        public Status getStatus() {
            return this.Ck;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            ho ho = CREATOR;
            ho.a(this, parcel, n);
        }
    }

}

