/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.LineItem;
import java.util.ArrayList;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 */
public class b
implements Parcelable.Creator<Cart> {
    static void a(Cart cart, Parcel parcel, int n) {
        n = com.google.android.gms.common.internal.safeparcel.b.D(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, cart.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, cart.asv, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, cart.asw, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 4, cart.asx, false);
        com.google.android.gms.common.internal.safeparcel.b.H(parcel, n);
    }

    @Override
    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return this.do(parcel);
    }

    public Cart do(Parcel parcel) {
        String string = null;
        int n = a.C(parcel);
        int n2 = 0;
        ArrayList arrayList = new ArrayList<LineItem>();
        String string2 = null;
        block6 : while (parcel.dataPosition() < n) {
            int n3 = a.B(parcel);
            switch (a.aD(n3)) {
                default: {
                    a.b(parcel, n3);
                    continue block6;
                }
                case 1: {
                    n2 = a.g(parcel, n3);
                    continue block6;
                }
                case 2: {
                    string2 = a.o(parcel, n3);
                    continue block6;
                }
                case 3: {
                    string = a.o(parcel, n3);
                    continue block6;
                }
                case 4: 
            }
            arrayList = a.c(parcel, n3, LineItem.CREATOR);
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        return new Cart(n2, string2, string, arrayList);
    }

    public Cart[] fp(int n) {
        return new Cart[n];
    }

    @Override
    public /* synthetic */ Object[] newArray(int n) {
        return this.fp(n);
    }
}

