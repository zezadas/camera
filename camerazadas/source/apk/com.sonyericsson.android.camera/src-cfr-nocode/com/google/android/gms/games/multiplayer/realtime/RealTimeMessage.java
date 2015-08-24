/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class RealTimeMessage
implements Parcelable {
    public static final Parcelable.Creator<RealTimeMessage> CREATOR;
    public static final int RELIABLE = 1;
    public static final int UNRELIABLE = 0;
    private final String acl;
    private final byte[] acm;
    private final int acn;

    static;

    private RealTimeMessage(Parcel var1);

    /* synthetic */ RealTimeMessage(Parcel var1,  var2);

    public RealTimeMessage(String var1, byte[] var2, int var3);

    @Override
    public int describeContents();

    public byte[] getMessageData();

    public String getSenderParticipantId();

    public boolean isReliable();

    @Override
    public void writeToParcel(Parcel var1, int var2);

}

