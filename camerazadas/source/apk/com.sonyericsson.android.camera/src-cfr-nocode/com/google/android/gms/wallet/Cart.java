/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.LineItem;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class Cart
implements SafeParcelable {
    public static final Parcelable.Creator<Cart> CREATOR;
    private final int BR;
    String asv;
    String asw;
    ArrayList<LineItem> asx;

    static;

    Cart();

    Cart(int var1, String var2, String var3, ArrayList<LineItem> var4);

    public static Builder newBuilder();

    @Override
    public int describeContents();

    public String getCurrencyCode();

    public ArrayList<LineItem> getLineItems();

    public String getTotalPrice();

    public int getVersionCode();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public final class Builder {
        final /* synthetic */ Cart asy;

        private Builder(Cart var1);

        /* synthetic */ Builder(Cart var1,  var2);

        public Builder addLineItem(LineItem var1);

        public Cart build();

        public Builder setCurrencyCode(String var1);

        public Builder setLineItems(List<LineItem> var1);

        public Builder setTotalPrice(String var1);
    }

}

