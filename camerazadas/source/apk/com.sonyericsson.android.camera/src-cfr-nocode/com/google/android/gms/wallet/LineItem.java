/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class LineItem
implements SafeParcelable {
    public static final Parcelable.Creator<LineItem> CREATOR;
    private final int BR;
    String asP;
    String asQ;
    int asR;
    String asv;
    String asw;
    String description;

    static;

    LineItem();

    LineItem(int var1, String var2, String var3, String var4, String var5, int var6, String var7);

    public static Builder newBuilder();

    @Override
    public int describeContents();

    public String getCurrencyCode();

    public String getDescription();

    public String getQuantity();

    public int getRole();

    public String getTotalPrice();

    public String getUnitPrice();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ LineItem asS;

        private Builder(LineItem var1);

        /* synthetic */ Builder(LineItem var1,  var2);

        public LineItem build();

        public Builder setCurrencyCode(String var1);

        public Builder setDescription(String var1);

        public Builder setQuantity(String var1);

        public Builder setRole(int var1);

        public Builder setTotalPrice(String var1);

        public Builder setUnitPrice(String var1);
    }

    public static interface Role {
        public static final int REGULAR = 0;
        public static final int SHIPPING = 2;
        public static final int TAX = 1;
    }

}

