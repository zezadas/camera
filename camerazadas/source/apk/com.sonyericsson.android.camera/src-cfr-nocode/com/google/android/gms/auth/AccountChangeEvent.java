/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccountChangeEvent
implements SafeParcelable {
    public static final AccountChangeEventCreator CREATOR;
    final String Dd;
    final int Di;
    final long Dj;
    final int Dk;
    final int Dl;
    final String Dm;

    static;

    AccountChangeEvent(int var1, long var2, String var4, int var5, int var6, String var7);

    public AccountChangeEvent(long var1, String var3, int var4, int var5, String var6);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getAccountName();

    public String getChangeData();

    public int getChangeType();

    public int getEventIndex();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

