/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEventsRequest;

/*
 * Exception performing whole class analysis ignored.
 */
public class AccountChangeEventsRequestCreator
implements Parcelable.Creator<AccountChangeEventsRequest> {
    public static final int CONTENT_DESCRIPTION = 0;

    public AccountChangeEventsRequestCreator();

    static void a(AccountChangeEventsRequest var0, Parcel var1, int var2);

    @Override
    public AccountChangeEventsRequest createFromParcel(Parcel var1);

    public AccountChangeEventsRequest[] newArray(int var1);
}

