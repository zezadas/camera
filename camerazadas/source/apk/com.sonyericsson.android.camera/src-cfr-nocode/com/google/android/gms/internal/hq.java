/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hk;
import com.google.android.gms.internal.hr;
import java.util.BitSet;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class hq
implements SafeParcelable {
    public static final hr CREATOR;
    final int BR;
    public final String Co;
    public final boolean Cp;
    public final boolean Cq;
    public final String Cr;
    public final hk[] Cs;
    final int[] Ct;
    public final String Cu;
    public final String name;
    public final int weight;

    static;

    hq(int var1, String var2, String var3, boolean var4, int var5, boolean var6, String var7, hk[] var8, int[] var9, String var10);

    hq(String var1, String var2, boolean var3, int var4, boolean var5, String var6, hk[] var7, int[] var8, String var9);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class a {
        private final List<hk> CA;
        private BitSet CB;
        private String CC;
        private String Cv;
        private boolean Cw;
        private int Cx;
        private boolean Cy;
        private String Cz;
        private final String mName;

        public a(String var1);

        public a E(boolean var1);

        public a F(boolean var1);

        public a P(int var1);

        public a at(String var1);

        public a au(String var1);

        public hq fm();
    }

}

