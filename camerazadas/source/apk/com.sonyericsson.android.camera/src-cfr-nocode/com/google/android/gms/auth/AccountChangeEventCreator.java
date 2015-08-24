/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEvent;

/*
 * Exception performing whole class analysis ignored.
 */
public class AccountChangeEventCreator
implements Parcelable.Creator<AccountChangeEvent> {
    public static final int CONTENT_DESCRIPTION = 0;

    public AccountChangeEventCreator();

    static void a(AccountChangeEvent var0, Parcel var1, int var2);

    @Override
    public AccountChangeEvent createFromParcel(Parcel var1);

    public AccountChangeEvent[] newArray(int var1);
}

