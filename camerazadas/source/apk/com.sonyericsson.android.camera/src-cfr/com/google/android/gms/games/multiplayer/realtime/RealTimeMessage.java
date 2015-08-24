/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;

public final class RealTimeMessage
implements Parcelable {
    public static final Parcelable.Creator<RealTimeMessage> CREATOR = new Parcelable.Creator<RealTimeMessage>(){

        public RealTimeMessage cn(Parcel parcel) {
            return new RealTimeMessage(parcel);
        }

        @Override
        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return this.cn(parcel);
        }

        public RealTimeMessage[] dU(int n) {
            return new RealTimeMessage[n];
        }

        @Override
        public /* synthetic */ Object[] newArray(int n) {
            return this.dU(n);
        }
    };
    public static final int RELIABLE = 1;
    public static final int UNRELIABLE = 0;
    private final String acl;
    private final byte[] acm;
    private final int acn;

    private RealTimeMessage(Parcel parcel) {
        this(parcel.readString(), parcel.createByteArray(), parcel.readInt());
    }

    public RealTimeMessage(String string, byte[] arrby, int n) {
        this.acl = o.i(string);
        this.acm = (byte[])o.i(arrby).clone();
        this.acn = n;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public byte[] getMessageData() {
        return this.acm;
    }

    public String getSenderParticipantId() {
        return this.acl;
    }

    public boolean isReliable() {
        if (this.acn == 1) {
            return true;
        }
        return false;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        parcel.writeString(this.acl);
        parcel.writeByteArray(this.acm);
        parcel.writeInt(this.acn);
    }

}

