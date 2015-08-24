/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.Subscription;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class af
implements SafeParcelable {
    public static final Parcelable.Creator<af> CREATOR;
    private final int BR;
    private final Subscription US;
    private final boolean UT;

    static;

    af(int var1, Subscription var2, boolean var3);

    private af(a var1);

    /* synthetic */ af(a var1,  var2);

    @Override
    public int describeContents();

    int getVersionCode();

    public Subscription jD();

    public boolean jE();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private Subscription US;
        private boolean UT;

        public a();

        static /* synthetic */ Subscription a(a var0);

        static /* synthetic */ boolean b(a var0);

        public a b(Subscription var1);

        public af jF();
    }

}

