/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.realtime.internal.p;

public class ParcelableCollaborator
implements SafeParcelable {
    public static final Parcelable.Creator<ParcelableCollaborator> CREATOR = new p();
    final int BR;
    final String NH;
    final boolean Rk;
    final boolean Rl;
    final String Rm;
    final String Rn;
    final String Ro;
    final String vL;

    ParcelableCollaborator(int n, boolean bl, boolean bl2, String string, String string2, String string3, String string4, String string5) {
        this.BR = n;
        this.Rk = bl;
        this.Rl = bl2;
        this.vL = string;
        this.Rm = string2;
        this.NH = string3;
        this.Rn = string4;
        this.Ro = string5;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof ParcelableCollaborator)) {
            return false;
        }
        object = (ParcelableCollaborator)object;
        return this.vL.equals(object.vL);
    }

    public int hashCode() {
        return this.vL.hashCode();
    }

    public String toString() {
        return "Collaborator [isMe=" + this.Rk + ", isAnonymous=" + this.Rl + ", sessionId=" + this.vL + ", userId=" + this.Rm + ", displayName=" + this.NH + ", color=" + this.Rn + ", photoUrl=" + this.Ro + "]";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        p.a(this, parcel, n);
    }
}

