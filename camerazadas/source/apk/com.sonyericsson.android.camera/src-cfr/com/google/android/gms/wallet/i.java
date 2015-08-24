/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.wallet.LineItem;

public class i
implements Parcelable.Creator<LineItem> {
    static void a(LineItem lineItem, Parcel parcel, int n) {
        n = b.D(parcel);
        b.c(parcel, 1, lineItem.getVersionCode());
        b.a(parcel, 2, lineItem.description, false);
        b.a(parcel, 3, lineItem.asP, false);
        b.a(parcel, 4, lineItem.asQ, false);
        b.a(parcel, 5, lineItem.asv, false);
        b.c(parcel, 6, lineItem.asR);
        b.a(parcel, 7, lineItem.asw, false);
        b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.du(parcel);
    }

    public LineItem du(Parcel parcel) {
        int n = 0;
        String string = null;
        int n2 = a.C(parcel);
        String string2 = null;
        String string3 = null;
        String string4 = null;
        String string5 = null;
        int n3 = 0;
        block9 : while (parcel.dataPosition() < n2) {
            int n4 = a.B(parcel);
            switch (a.aD(n4)) {
                default: {
                    a.b(parcel, n4);
                    continue block9;
                }
                case 1: {
                    n3 = a.g(parcel, n4);
                    continue block9;
                }
                case 2: {
                    string5 = a.o(parcel, n4);
                    continue block9;
                }
                case 3: {
                    string4 = a.o(parcel, n4);
                    continue block9;
                }
                case 4: {
                    string3 = a.o(parcel, n4);
                    continue block9;
                }
                case 5: {
                    string2 = a.o(parcel, n4);
                    continue block9;
                }
                case 6: {
                    n = a.g(parcel, n4);
                    continue block9;
                }
                case 7: 
            }
            string = a.o(parcel, n4);
        }
        if (parcel.dataPosition() != n2) {
            throw new a.a("Overread allowed size end=" + n2, parcel);
        }
        return new LineItem(n3, string5, string4, string3, string2, n, string);
    }

    public LineItem[] fv(int n) {
        return new LineItem[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fv(n);
    }
}

