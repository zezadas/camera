/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jg;
import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.ji;
import java.util.ArrayList;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class jf
implements SafeParcelable,
ji.b<String, Integer> {
    public static final jg CREATOR;
    private final int BR;
    private final HashMap<String, Integer> Mt;
    private final HashMap<Integer, String> Mu;
    private final ArrayList<a> Mv;

    static;

    public jf();

    jf(int var1, ArrayList<a> var2);

    private void b(ArrayList<a> var1);

    public String a(Integer var1);

    @Override
    public /* synthetic */ Object convertBack(Object var1);

    @Override
    public int describeContents();

    int getVersionCode();

    public jf h(String var1, int var2);

    ArrayList<a> hc();

    @Override
    public int hd();

    @Override
    public int he();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class a
    implements SafeParcelable {
        public static final jh CREATOR;
        final String Mw;
        final int Mx;
        final int versionCode;

        static;

        a(int var1, String var2, int var3);

        a(String var1, int var2);

        @Override
        public int describeContents();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

}

