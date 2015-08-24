/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.ConnectionInfoCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ConnectionInfo
implements SafeParcelable {
    public static final ConnectionInfoCreator CREATOR;
    private final int BR;
    private final String Wq;
    private final int Wr;

    static;

    public ConnectionInfo(int var1, String var2, int var3);

    @Override
    public int describeContents();

    public int getVersionCode();

    public String jX();

    public int jY();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

