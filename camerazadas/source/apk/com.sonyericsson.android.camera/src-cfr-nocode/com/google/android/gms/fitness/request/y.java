/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class y
implements SafeParcelable {
    public static final Parcelable.Creator<y> CREATOR;
    private final int BR;
    private final String Tq;
    private final String mName;

    static;

    y(int var1, String var2, String var3);

    private y(a var1);

    /* synthetic */ y(a var1,  var2);

    private boolean a(y var1);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getIdentifier();

    public String getName();

    int getVersionCode();

    public int hashCode();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private String Tq;
        private String mName;

        public a();

        static /* synthetic */ String a(a var0);

        static /* synthetic */ String b(a var0);

        public a bu(String var1);

        public a bv(String var1);

        public y jB();
    }

}

