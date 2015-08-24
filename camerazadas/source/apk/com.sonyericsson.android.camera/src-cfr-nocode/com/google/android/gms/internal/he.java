/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hi;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class he
implements SafeParcelable {
    public static final hf CREATOR;
    final int BR;
    final hi[] BS;
    public final String BT;
    public final boolean BU;
    public final Account account;

    static;

    he(int var1, hi[] var2, String var3, boolean var4, Account var5);

    /* varargs */ he(String var1, boolean var2, Account var3, hi ... var4);

    @Override
    public int describeContents();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private List<hi> BV;
        private String BW;
        private boolean BX;
        private Account BY;

        public a();

        public a D(boolean var1);

        public a a(hi var1);

        public a ar(String var1);

        public he fj();
    }

}

