/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.a;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ik;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class ApplicationMetadata
implements SafeParcelable {
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new a();
    private final int BR;
    List<WebImage> EA;
    List<String> EB;
    String EC;
    Uri ED;
    String Ez;
    String mName;

    private ApplicationMetadata() {
        this.BR = 1;
        this.EA = new ArrayList<WebImage>();
        this.EB = new ArrayList<String>();
    }

    ApplicationMetadata(int n, String string, String string2, List<WebImage> list, List<String> list2, String string3, Uri uri) {
        this.BR = n;
        this.Ez = string;
        this.mName = string2;
        this.EA = list;
        this.EB = list2;
        this.EC = string3;
        this.ED = uri;
    }

    public boolean areNamespacesSupported(List<String> list) {
        if (this.EB != null && this.EB.containsAll(list)) {
            return true;
        }
        return false;
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
        if (object == this) {
            return true;
        }
        if (!(object instanceof ApplicationMetadata)) {
            return false;
        }
        object = (ApplicationMetadata)object;
        if (!ik.a(this.Ez, object.Ez)) return false;
        if (!ik.a(this.EA, object.EA)) return false;
        if (!ik.a(this.mName, object.mName)) return false;
        if (!ik.a(this.EB, object.EB)) return false;
        if (!ik.a(this.EC, object.EC)) return false;
        if (ik.a(this.ED, object.ED)) return true;
        return false;
    }

    public Uri fu() {
        return this.ED;
    }

    public String getApplicationId() {
        return this.Ez;
    }

    public List<WebImage> getImages() {
        return this.EA;
    }

    public String getName() {
        return this.mName;
    }

    public String getSenderAppIdentifier() {
        return this.EC;
    }

    int getVersionCode() {
        return this.BR;
    }

    public int hashCode() {
        return n.hashCode(this.BR, this.Ez, this.mName, this.EA, this.EB, this.EC, this.ED);
    }

    public boolean isNamespaceSupported(String string) {
        if (this.EB != null && this.EB.contains(string)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.mName;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        a.a(this, parcel, n);
    }
}

