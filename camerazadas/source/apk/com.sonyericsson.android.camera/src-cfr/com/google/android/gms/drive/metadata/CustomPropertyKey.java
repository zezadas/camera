/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.c;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CustomPropertyKey
implements SafeParcelable {
    public static final Parcelable.Creator<CustomPropertyKey> CREATOR = new c();
    private static final Pattern PF = Pattern.compile("[\\w.!@$%^&*()/-]+");
    final int BR;
    final String JO;
    final int mVisibility;

    /*
     * Enabled aggressive block sorting
     */
    CustomPropertyKey(int n, String string, int n2) {
        boolean bl = true;
        o.b(string, (Object)"key");
        o.b(PF.matcher((CharSequence)string).matches(), (Object)"key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        boolean bl2 = bl;
        if (n2 != 0) {
            bl2 = n2 == 1 ? bl : false;
        }
        o.b(bl2, (Object)"visibility must be either PUBLIC or PRIVATE");
        this.BR = n;
        this.JO = string;
        this.mVisibility = n2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        boolean bl = true;
        if (object == null) {
            return false;
        }
        if (object == this) {
            return true;
        }
        if (!(object instanceof CustomPropertyKey)) return false;
        if (!(object = (CustomPropertyKey)object).getKey().equals(this.JO)) return false;
        if (object.getVisibility() != this.mVisibility) return false;
        return bl;
    }

    public String getKey() {
        return this.JO;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int hashCode() {
        return (this.JO + this.mVisibility).hashCode();
    }

    public String toString() {
        return "CustomPropertyKey(" + this.JO + "," + this.mVisibility + ")";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

