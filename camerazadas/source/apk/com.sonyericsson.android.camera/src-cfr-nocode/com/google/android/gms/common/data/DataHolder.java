/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.f;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class DataHolder
implements SafeParcelable {
    public static final f CREATOR;
    private static final a Kj;
    private final int BR;
    private final int HF;
    private final String[] Kb;
    Bundle Kc;
    private final CursorWindow[] Kd;
    private final Bundle Ke;
    int[] Kf;
    int Kg;
    private Object Kh;
    private boolean Ki;
    boolean mClosed;

    static;

    DataHolder(int var1, String[] var2, CursorWindow[] var3, int var4, Bundle var5);

    private DataHolder(a var1, int var2, Bundle var3);

    public DataHolder(String[] var1, CursorWindow[] var2, int var3, Bundle var4);

    public static DataHolder a(int var0, Bundle var1);

    private static CursorWindow[] a(a var0, int var1);

    public static DataHolder as(int var0);

    private void g(String var1, int var2);

    public long a(String var1, int var2, int var3);

    public void a(String var1, int var2, int var3, CharArrayBuffer var4);

    public boolean aQ(String var1);

    public int ar(int var1);

    public int b(String var1, int var2, int var3);

    public String c(String var1, int var2, int var3);

    public void close();

    public boolean d(String var1, int var2, int var3);

    @Override
    public int describeContents();

    public float e(String var1, int var2, int var3);

    public void e(Object var1);

    public byte[] f(String var1, int var2, int var3);

    protected void finalize() throws Throwable;

    public Uri g(String var1, int var2, int var3);

    public void gA();

    String[] gB();

    CursorWindow[] gC();

    public int getCount();

    public int getStatusCode();

    int getVersionCode();

    public Bundle gy();

    public boolean h(String var1, int var2, int var3);

    public boolean isClosed();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a {
        private final String[] Kb;
        private final ArrayList<HashMap<String, Object>> Kk;
        private final String Kl;
        private final HashMap<Object, Integer> Km;
        private boolean Kn;
        private String Ko;

        private a(String[] var1, String var2);

        /* synthetic */ a(String[] var1, String var2,  var3);

        static /* synthetic */ String[] a(a var0);

        static /* synthetic */ ArrayList b(a var0);
    }

}

