/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.auth.AccountChangeEventsResponseCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AccountChangeEventsResponse
implements SafeParcelable {
    public static final AccountChangeEventsResponseCreator CREATOR;
    final int Di;
    final List<AccountChangeEvent> me;

    static;

    AccountChangeEventsResponse(int var1, List<AccountChangeEvent> var2);

    public AccountChangeEventsResponse(List<AccountChangeEvent> var1);

    @Override
    public int describeContents();

    public List<AccountChangeEvent> getEvents();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

