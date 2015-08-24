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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a
    implements SafeParcelable {
        public static final hn CREATOR;
        final int BR;
        public final Account Cj;

        static;

        public a();

        a(int var1, Account var2);

        public a(Account var1);

        @Override
        public int describeContents();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b
    implements Result,
    SafeParcelable {
        public static final ho CREATOR;
        final int BR;
        public Status Ck;
        public List<hs> Cl;

        static;

        public b();

        b(int var1, Status var2, List<hs> var3);

        @Override
        public int describeContents();

        @Override
        public Status getStatus();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

}

