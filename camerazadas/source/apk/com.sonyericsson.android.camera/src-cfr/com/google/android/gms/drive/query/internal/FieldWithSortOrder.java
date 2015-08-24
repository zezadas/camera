/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.c;
import java.util.Locale;

public class FieldWithSortOrder
implements SafeParcelable {
    public static final c CREATOR = new c();
    final int BR;
    final String PB;
    final boolean QN;

    FieldWithSortOrder(int n, String string, boolean bl) {
        this.BR = n;
        this.PB = string;
        this.QN = bl;
    }

    public FieldWithSortOrder(String string, boolean bl) {
        this(1, string, bl);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        String string;
        Locale locale = Locale.US;
        String string2 = this.PB;
        if (this.QN) {
            string = "ASC";
            do {
                return String.format(locale, "FieldWithSortOrder[%s %s]", string2, string);
                break;
            } while (true);
        }
        string = "DESC";
        return String.format(locale, "FieldWithSortOrder[%s %s]", string2, string);
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        c.a(this, parcel, n);
    }
}

