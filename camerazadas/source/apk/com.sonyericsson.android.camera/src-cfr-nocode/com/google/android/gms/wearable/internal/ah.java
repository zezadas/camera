/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.MessageEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ah
implements SafeParcelable,
MessageEvent {
    public static final Parcelable.Creator<ah> CREATOR;
    final int BR;
    private final byte[] acH;
    private final String avH;
    private final String avI;
    private final int uQ;

    static;

    ah(int var1, int var2, String var3, byte[] var4, String var5);

    @Override
    public int describeContents();

    @Override
    public byte[] getData();

    @Override
    public String getPath();

    @Override
    public int getRequestId();

    @Override
    public String getSourceNodeId();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);
}

