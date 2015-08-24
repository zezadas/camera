/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.ConnectionInfoCreator;

public class ConnectionInfo
implements SafeParcelable {
    public static final ConnectionInfoCreator CREATOR = new ConnectionInfoCreator();
    private final int BR;
    private final String Wq;
    private final int Wr;

    public ConnectionInfo(int n, String string, int n2) {
        this.BR = n;
        this.Wq = string;
        this.Wr = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public String jX() {
        return this.Wq;
    }

    public int jY() {
        return this.Wr;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ConnectionInfoCreator.a(this, parcel, n);
    }
}

