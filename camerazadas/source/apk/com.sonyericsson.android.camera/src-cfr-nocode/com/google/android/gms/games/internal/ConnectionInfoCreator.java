/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.internal.ConnectionInfo;

/*
 * Exception performing whole class analysis ignored.
 */
public class ConnectionInfoCreator
implements Parcelable.Creator<ConnectionInfo> {
    public ConnectionInfoCreator();

    static void a(ConnectionInfo var0, Parcel var1, int var2);

    public ConnectionInfo cf(Parcel var1);

    @Override
    public /* synthetic */ Object createFromParcel(Parcel var1);

    public ConnectionInfo[] dA(int var1);

    @Override
    public /* synthetic */ Object[] newArray(int var1);
}

