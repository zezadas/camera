/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.internal.ai;

public class ah
implements SafeParcelable,
MessageEvent {
    public static final Parcelable.Creator<ah> CREATOR = new ai();
    final int BR;
    private final byte[] acH;
    private final String avH;
    private final String avI;
    private final int uQ;

    ah(int n, int n2, String string, byte[] arrby, String string2) {
        this.BR = n;
        this.uQ = n2;
        this.avH = string;
        this.acH = arrby;
        this.avI = string2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public byte[] getData() {
        return this.acH;
    }

    @Override
    public String getPath() {
        return this.avH;
    }

    @Override
    public int getRequestId() {
        return this.uQ;
    }

    @Override
    public String getSourceNodeId() {
        return this.avI;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        Object object;
        StringBuilder stringBuilder = new StringBuilder().append("MessageEventParcelable[").append(this.uQ).append(",").append(this.avH).append(", size=");
        if (this.acH == null) {
            object = "null";
            do {
                return stringBuilder.append(object).append("]").toString();
                break;
            } while (true);
        }
        object = this.acH.length;
        return stringBuilder.append(object).append("]").toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        ai.a(this, parcel, n);
    }
}

