/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jd;
import com.google.android.gms.internal.jk;
import com.google.android.gms.internal.jm;
import java.util.ArrayList;
import java.util.HashMap;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class ji {
    public ji();

    private void a(StringBuilder var1, a var2, Object var3);

    private void a(StringBuilder var1, a var2, ArrayList<Object> var3);

    protected <O, I> I a(a<I, O> var1, Object var2);

    protected boolean a(a var1);

    protected Object b(a var1);

    protected abstract Object ba(String var1);

    protected abstract boolean bb(String var1);

    protected boolean bc(String var1);

    protected boolean bd(String var1);

    public abstract HashMap<String, a<?, ?>> hf();

    public HashMap<String, Object> hg();

    public HashMap<String, Object> hh();

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a<I, O>
    implements SafeParcelable {
        public static final jk CREATOR;
        private final int BR;
        protected final int MA;
        protected final boolean MB;
        protected final String MC;
        protected final int MD;
        protected final Class<? extends ji> ME;
        protected final String MF;
        private jm MG;
        private b<I, O> MH;
        protected final int My;
        protected final boolean Mz;

        static;

        a(int var1, int var2, boolean var3, int var4, boolean var5, String var6, int var7, String var8, jd var9);

        protected a(int var1, boolean var2, int var3, boolean var4, String var5, int var6, Class<? extends ji> var7, b<I, O> var8);

        public static a a(String var0, int var1, b<?, ?> var2, boolean var3);

        public static <T extends ji> a<T, T> a(String var0, int var1, Class<T> var2);

        public static <T extends ji> a<ArrayList<T>, ArrayList<T>> b(String var0, int var1, Class<T> var2);

        static /* synthetic */ b c(a var0);

        public static a<Integer, Integer> i(String var0, int var1);

        public static a<Double, Double> j(String var0, int var1);

        public static a<Boolean, Boolean> k(String var0, int var1);

        public static a<String, String> l(String var0, int var1);

        public static a<ArrayList<String>, ArrayList<String>> m(String var0, int var1);

        public void a(jm var1);

        public I convertBack(O var1);

        @Override
        public int describeContents();

        public int getVersionCode();

        public int hd();

        public int he();

        public a<I, O> hi();

        public boolean hj();

        public boolean hk();

        public String hl();

        public int hm();

        public Class<? extends ji> hn();

        String ho();

        public boolean hp();

        jd hq();

        public HashMap<String, a<?, ?>> hr();

        public String toString();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

    public static interface b<I, O> {
        public I convertBack(O var1);

        public int hd();

        public int he();
    }

}

