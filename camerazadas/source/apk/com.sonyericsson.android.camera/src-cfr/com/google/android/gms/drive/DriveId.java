/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.c;
import com.google.android.gms.drive.internal.ah;
import com.google.android.gms.drive.internal.v;
import com.google.android.gms.internal.pm;
import com.google.android.gms.internal.pn;

public class DriveId
implements SafeParcelable {
    public static final Parcelable.Creator<DriveId> CREATOR = new c();
    final int BR;
    final String Ni;
    final long Nj;
    final long Nk;
    private volatile String Nl;

    /*
     * Enabled aggressive block sorting
     */
    DriveId(int n, String string, long l, long l2) {
        boolean bl;
        block2 : {
            boolean bl2 = false;
            this.Nl = null;
            this.BR = n;
            this.Ni = string;
            bl = !"".equals(string);
            o.K(bl);
            if (string == null) {
                bl = bl2;
                if (l == -1) break block2;
            }
            bl = true;
        }
        o.K(bl);
        this.Nj = l;
        this.Nk = l2;
    }

    public DriveId(String string, long l, long l2) {
        this(1, string, l, l2);
    }

    public static DriveId bg(String string) {
        o.i(string);
        return new DriveId(string, -1, -1);
    }

    public static DriveId decodeFromString(String string) {
        o.b(string.startsWith("DriveId:"), (Object)("Invalid DriveId: " + string));
        return DriveId.f(Base64.decode(string.substring("DriveId:".length()), 10));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static DriveId f(byte[] object) {
        try {
            ah ah = ah.g((byte[])object);
            if ("".equals(ah.Pl)) {
                object = null;
                return new DriveId(ah.versionCode, (String)object, ah.Pm, ah.Pn);
            }
        }
        catch (pm var0_1) {
            throw new IllegalArgumentException();
        }
        object = ah.Pl;
        return new DriveId(ah.versionCode, (String)object, ah.Pm, ah.Pn);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public final String encodeToString() {
        if (this.Nl == null) {
            String string = Base64.encodeToString(this.hN(), 10);
            this.Nl = "DriveId:" + string;
        }
        return this.Nl;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof DriveId)) {
            return false;
        }
        object = (DriveId)object;
        if (object.Nk != this.Nk) {
            v.p("DriveId", "Attempt to compare invalid DriveId detected. Has local storage been cleared?");
            return false;
        }
        if (object.Nj == -1 && this.Nj == -1) {
            return object.Ni.equals(this.Ni);
        }
        if (object.Nj != this.Nj) return false;
        return true;
    }

    public String getResourceId() {
        return this.Ni;
    }

    /*
     * Enabled aggressive block sorting
     */
    final byte[] hN() {
        ah ah = new ah();
        ah.versionCode = this.BR;
        String string = this.Ni == null ? "" : this.Ni;
        ah.Pl = string;
        ah.Pm = this.Nj;
        ah.Pn = this.Nk;
        return pn.f(ah);
    }

    public int hashCode() {
        if (this.Nj == -1) {
            return this.Ni.hashCode();
        }
        return (String.valueOf(this.Nk) + String.valueOf(this.Nj)).hashCode();
    }

    public String toString() {
        return this.encodeToString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

