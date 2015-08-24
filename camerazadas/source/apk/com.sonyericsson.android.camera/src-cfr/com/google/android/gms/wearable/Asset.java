/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.a;

public class Asset
implements SafeParcelable {
    public static final Parcelable.Creator<Asset> CREATOR = new a();
    final int BR;
    private byte[] acH;
    private String auQ;
    public ParcelFileDescriptor auR;
    public Uri uri;

    Asset(int n, byte[] arrby, String string, ParcelFileDescriptor parcelFileDescriptor, Uri uri) {
        this.BR = n;
        this.acH = arrby;
        this.auQ = string;
        this.auR = parcelFileDescriptor;
        this.uri = uri;
    }

    public static Asset createFromBytes(byte[] arrby) {
        if (arrby == null) {
            throw new IllegalArgumentException("Asset data cannot be null");
        }
        return new Asset(1, arrby, null, null, null);
    }

    public static Asset createFromFd(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalArgumentException("Asset fd cannot be null");
        }
        return new Asset(1, null, null, parcelFileDescriptor, null);
    }

    public static Asset createFromRef(String string) {
        if (string == null) {
            throw new IllegalArgumentException("Asset digest cannot be null");
        }
        return new Asset(1, null, string, null, null);
    }

    public static Asset createFromUri(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Asset uri cannot be null");
        }
        return new Asset(1, null, null, null, uri);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!(object instanceof Asset)) {
            return false;
        }
        object = (Asset)object;
        if (!n.equal(this.acH, object.acH)) return false;
        if (!n.equal(this.auQ, object.auQ)) return false;
        if (!n.equal(this.auR, object.auR)) return false;
        if (n.equal(this.uri, object.uri)) return true;
        return false;
    }

    public byte[] getData() {
        return this.acH;
    }

    public String getDigest() {
        return this.auQ;
    }

    public ParcelFileDescriptor getFd() {
        return this.auR;
    }

    public Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        return n.hashCode(this.acH, this.auQ, this.auR, this.uri);
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Asset[@");
        stringBuilder.append(Integer.toHexString(this.hashCode()));
        if (this.auQ == null) {
            stringBuilder.append(", nodigest");
        } else {
            stringBuilder.append(", ");
            stringBuilder.append(this.auQ);
        }
        if (this.acH != null) {
            stringBuilder.append(", size=");
            stringBuilder.append(this.acH.length);
        }
        if (this.auR != null) {
            stringBuilder.append(", fd=");
            stringBuilder.append(this.auR);
        }
        if (this.uri != null) {
            stringBuilder.append(", uri=");
            stringBuilder.append(this.uri);
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n | 1);
    }
}

