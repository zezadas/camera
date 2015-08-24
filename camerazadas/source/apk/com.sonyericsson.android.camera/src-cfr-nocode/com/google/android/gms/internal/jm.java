/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jl;
import com.google.android.gms.internal.jn;
import com.google.android.gms.internal.jo;
import java.util.ArrayList;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class jm
implements SafeParcelable {
    public static final jn CREATOR;
    private final int BR;
    private final HashMap<String, HashMap<String, ji.a<?, ?>>> MI;
    private final ArrayList<a> MJ;
    private final String MK;

    static;

    jm(int var1, ArrayList<a> var2, String var3);

    public jm(Class<? extends ji> var1);

    private static HashMap<String, HashMap<String, ji.a<?, ?>>> c(ArrayList<a> var0);

    public void a(Class<? extends ji> var1, HashMap<String, ji.a<?, ?>> var2);

    public boolean b(Class<? extends ji> var1);

    public HashMap<String, ji.a<?, ?>> be(String var1);

    @Override
    public int describeContents();

    int getVersionCode();

    public void hs();

    public void ht();

    ArrayList<a> hu();

    public String hv();

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a
    implements SafeParcelable {
        public static final jo CREATOR;
        final ArrayList<b> ML;
        final String className;
        final int versionCode;

        static;

        a(int var1, String var2, ArrayList<b> var3);

        a(String var1, HashMap<String, ji.a<?, ?>> var2);

        private static ArrayList<b> a(HashMap<String, ji.a<?, ?>> var0);

        @Override
        public int describeContents();

        HashMap<String, ji.a<?, ?>> hw();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b
    implements SafeParcelable {
        public static final jl CREATOR;
        final ji.a<?, ?> MM;
        final String fv;
        final int versionCode;

        static;

        b(int var1, String var2, ji.a<?, ?> var3);

        b(String var1, ji.a<?, ?> var2);

        @Override
        public int describeContents();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

}

