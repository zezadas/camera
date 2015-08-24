/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.LineItem;
import com.google.android.gms.wallet.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class Cart
implements SafeParcelable {
    public static final Parcelable.Creator<Cart> CREATOR = new b();
    private final int BR;
    String asv;
    String asw;
    ArrayList<LineItem> asx;

    Cart() {
        this.BR = 1;
        this.asx = new ArrayList();
    }

    Cart(int n, String string, String string2, ArrayList<LineItem> arrayList) {
        this.BR = n;
        this.asv = string;
        this.asw = string2;
        this.asx = arrayList;
    }

    public static Builder newBuilder() {
        Cart cart = new Cart();
        cart.getClass();
        return cart.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getCurrencyCode() {
        return this.asw;
    }

    public ArrayList<LineItem> getLineItems() {
        return this.asx;
    }

    public String getTotalPrice() {
        return this.asv;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        b.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public Builder addLineItem(LineItem lineItem) {
            Cart.this.asx.add(lineItem);
            return this;
        }

        public Cart build() {
            return Cart.this;
        }

        public Builder setCurrencyCode(String string) {
            Cart.this.asw = string;
            return this;
        }

        public Builder setLineItems(List<LineItem> list) {
            Cart.this.asx.clear();
            Cart.this.asx.addAll(list);
            return this;
        }

        public Builder setTotalPrice(String string) {
            Cart.this.asv = string;
            return this;
        }
    }

}

