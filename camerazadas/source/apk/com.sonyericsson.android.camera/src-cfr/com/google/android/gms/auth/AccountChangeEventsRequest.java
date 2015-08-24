/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.os.Parcel;
import com.google.android.gms.auth.AccountChangeEventsRequestCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AccountChangeEventsRequest
implements SafeParcelable {
    public static final AccountChangeEventsRequestCreator CREATOR = new AccountChangeEventsRequestCreator();
    String Dd;
    final int Di;
    int Dl;

    public AccountChangeEventsRequest() {
        this.Di = 1;
    }

    AccountChangeEventsRequest(int n, int n2, String string) {
        this.Di = n;
        this.Dl = n2;
        this.Dd = string;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAccountName() {
        return this.Dd;
    }

    public int getEventIndex() {
        return this.Dl;
    }

    public AccountChangeEventsRequest setAccountName(String string) {
        this.Dd = string;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int n) {
        this.Dl = n;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        AccountChangeEventsRequestCreator.a(this, parcel, n);
    }
}

