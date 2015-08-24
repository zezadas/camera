/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.auth.AccountChangeEventsResponseCreator;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class AccountChangeEventsResponse
implements SafeParcelable {
    public static final AccountChangeEventsResponseCreator CREATOR = new AccountChangeEventsResponseCreator();
    final int Di;
    final List<AccountChangeEvent> me;

    AccountChangeEventsResponse(int n, List<AccountChangeEvent> list) {
        this.Di = n;
        this.me = o.i(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.Di = 1;
        this.me = o.i(list);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<AccountChangeEvent> getEvents() {
        return this.me;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        AccountChangeEventsResponseCreator.a(this, parcel, n);
    }
}

