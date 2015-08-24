/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.i;

public final class LineItem
implements SafeParcelable {
    public static final Parcelable.Creator<LineItem> CREATOR = new i();
    private final int BR;
    String asP;
    String asQ;
    int asR;
    String asv;
    String asw;
    String description;

    LineItem() {
        this.BR = 1;
        this.asR = 0;
    }

    LineItem(int n, String string, String string2, String string3, String string4, int n2, String string5) {
        this.BR = n;
        this.description = string;
        this.asP = string2;
        this.asQ = string3;
        this.asv = string4;
        this.asR = n2;
        this.asw = string5;
    }

    public static Builder newBuilder() {
        LineItem lineItem = new LineItem();
        lineItem.getClass();
        return lineItem.new Builder();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getCurrencyCode() {
        return this.asw;
    }

    public String getDescription() {
        return this.description;
    }

    public String getQuantity() {
        return this.asP;
    }

    public int getRole() {
        return this.asR;
    }

    public String getTotalPrice() {
        return this.asv;
    }

    public String getUnitPrice() {
        return this.asQ;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        i.a(this, parcel, n);
    }

    public final class Builder {
        private Builder() {
        }

        public LineItem build() {
            return LineItem.this;
        }

        public Builder setCurrencyCode(String string) {
            LineItem.this.asw = string;
            return this;
        }

        public Builder setDescription(String string) {
            LineItem.this.description = string;
            return this;
        }

        public Builder setQuantity(String string) {
            LineItem.this.asP = string;
            return this;
        }

        public Builder setRole(int n) {
            LineItem.this.asR = n;
            return this;
        }

        public Builder setTotalPrice(String string) {
            LineItem.this.asv = string;
            return this;
        }

        public Builder setUnitPrice(String string) {
            LineItem.this.asQ = string;
            return this;
        }
    }

    public static interface Role {
        public static final int REGULAR = 0;
        public static final int SHIPPING = 2;
        public static final int TAX = 1;
    }

}

