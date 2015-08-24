/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEventsResponse;

/*
 * Exception performing whole class analysis ignored.
 */
public class AccountChangeEventsResponseCreator
implements Parcelable.Creator<AccountChangeEventsResponse> {
    public static final int CONTENT_DESCRIPTION = 0;

    public AccountChangeEventsResponseCreator();

    static void a(AccountChangeEventsResponse var0, Parcel var1, int var2);

    @Override
    public AccountChangeEventsResponse createFromParcel(Parcel var1);

    public AccountChangeEventsResponse[] newArray(int var1);
}

