/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsRequestCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccountChangeEventsRequest
implements SafeParcelable {
    public static final AccountChangeEventsRequestCreator CREATOR;
    String Dd;
    final int Di;
    int Dl;

    static;

    public AccountChangeEventsRequest();

    AccountChangeEventsRequest(int var1, int var2, String var3);

    @Override
    public int describeContents();

    public String getAccountName();

    public int getEventIndex();

    public AccountChangeEventsRequest setAccountName(String var1);

    public AccountChangeEventsRequest setEventIndex(int var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

