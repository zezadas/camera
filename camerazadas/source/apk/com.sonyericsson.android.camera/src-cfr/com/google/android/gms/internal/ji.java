/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jd;
import com.google.android.gms.internal.jk;
import com.google.android.gms.internal.jm;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.js;
import com.google.android.gms.internal.jz;
import com.google.android.gms.internal.ka;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public abstract class ji {
    private void a(StringBuilder stringBuilder, a a, Object object) {
        if (a.hd() == 11) {
            stringBuilder.append(a.hn().cast(object).toString());
            return;
        }
        if (a.hd() == 7) {
            stringBuilder.append("\"");
            stringBuilder.append(jz.bf((String)object));
            stringBuilder.append("\"");
            return;
        }
        stringBuilder.append(object);
    }

    private void a(StringBuilder stringBuilder, a a, ArrayList<Object> arrayList) {
        stringBuilder.append("[");
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            Object object;
            if (i > 0) {
                stringBuilder.append(",");
            }
            if ((object = arrayList.get(i)) == null) continue;
            this.a(stringBuilder, a, object);
        }
        stringBuilder.append("]");
    }

    protected <O, I> I a(a<I, O> a, Object object) {
        Object object2 = object;
        if (a.MH != null) {
            object2 = a.convertBack(object);
        }
        return (I)object2;
    }

    protected boolean a(a a) {
        if (a.he() == 11) {
            if (a.hk()) {
                return this.bd(a.hl());
            }
            return this.bc(a.hl());
        }
        return this.bb(a.hl());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected Object b(a hashMap) {
        String string = hashMap.hl();
        if (hashMap.hn() == null) {
            return this.ba(hashMap.hl());
        }
        boolean bl = this.ba(hashMap.hl()) == null;
        o.a(bl, "Concrete field shouldn't be value object: %s", hashMap.hl());
        hashMap = hashMap.hk() ? this.hh() : this.hg();
        if (hashMap != null) {
            return hashMap.get(string);
        }
        try {
            hashMap = "get" + Character.toUpperCase(string.charAt(0)) + string.substring(1);
            return this.getClass().getMethod((String)hashMap, new Class[0]).invoke(this, new Object[0]);
        }
        catch (Exception var1_2) {
            throw new RuntimeException(var1_2);
        }
    }

    protected abstract Object ba(String var1);

    protected abstract boolean bb(String var1);

    protected boolean bc(String string) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean bd(String string) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public abstract HashMap<String, a<?, ?>> hf();

    public HashMap<String, Object> hg() {
        return null;
    }

    public HashMap<String, Object> hh() {
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String toString() {
        HashMap<String, a<?, ?>> hashMap = this.hf();
        StringBuilder stringBuilder = new StringBuilder(100);
        block5 : for (String string : hashMap.keySet()) {
            a<?, ?> a = hashMap.get(string);
            if (!this.a(a)) continue;
            ? obj = this.a(a, this.b(a));
            if (stringBuilder.length() == 0) {
                stringBuilder.append("{");
            } else {
                stringBuilder.append(",");
            }
            stringBuilder.append("\"").append(string).append("\":");
            if (obj == null) {
                stringBuilder.append("null");
                continue;
            }
            switch (a.he()) {
                default: {
                    if (!a.hj()) break;
                    this.a(stringBuilder, a, (ArrayList)obj);
                    continue block5;
                }
                case 8: {
                    stringBuilder.append("\"").append(js.d((byte[])obj)).append("\"");
                    continue block5;
                }
                case 9: {
                    stringBuilder.append("\"").append(js.e((byte[])obj)).append("\"");
                    continue block5;
                }
                case 10: {
                    ka.a(stringBuilder, (HashMap)obj);
                    continue block5;
                }
            }
            this.a(stringBuilder, a, obj);
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
        stringBuilder.append("{}");
        return stringBuilder.toString();
    }

    public static class a<I, O>
    implements SafeParcelable {
        public static final jk CREATOR = new jk();
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

        /*
         * Enabled aggressive block sorting
         */
        a(int n, int n2, boolean bl, int n3, boolean bl2, String string, int n4, String string2, jd jd) {
            this.BR = n;
            this.My = n2;
            this.Mz = bl;
            this.MA = n3;
            this.MB = bl2;
            this.MC = string;
            this.MD = n4;
            if (string2 == null) {
                this.ME = null;
                this.MF = null;
            } else {
                this.ME = jp.class;
                this.MF = string2;
            }
            if (jd == null) {
                this.MH = null;
                return;
            }
            this.MH = jd.hb();
        }

        /*
         * Enabled aggressive block sorting
         */
        protected a(int n, boolean bl, int n2, boolean bl2, String string, int n3, Class<? extends ji> class_, b<I, O> b) {
            this.BR = 1;
            this.My = n;
            this.Mz = bl;
            this.MA = n2;
            this.MB = bl2;
            this.MC = string;
            this.MD = n3;
            this.ME = class_;
            this.MF = class_ == null ? null : class_.getCanonicalName();
            this.MH = b;
        }

        public static a a(String string, int n, b<?, ?> b, boolean bl) {
            return new a(b.hd(), bl, b.he(), false, string, n, null, b);
        }

        public static <T extends ji> a<T, T> a(String string, int n, Class<T> class_) {
            return new a<I, O>(11, false, 11, false, string, n, class_, null);
        }

        public static <T extends ji> a<ArrayList<T>, ArrayList<T>> b(String string, int n, Class<T> class_) {
            return new a<ArrayList<T>, ArrayList<T>>(11, true, 11, true, string, n, class_, null);
        }

        public static a<Integer, Integer> i(String string, int n) {
            return new a<Integer, Integer>(0, false, 0, false, string, n, null, null);
        }

        public static a<Double, Double> j(String string, int n) {
            return new a<Double, Double>(4, false, 4, false, string, n, null, null);
        }

        public static a<Boolean, Boolean> k(String string, int n) {
            return new a<Boolean, Boolean>(6, false, 6, false, string, n, null, null);
        }

        public static a<String, String> l(String string, int n) {
            return new a<String, String>(7, false, 7, false, string, n, null, null);
        }

        public static a<ArrayList<String>, ArrayList<String>> m(String string, int n) {
            return new a<ArrayList<String>, ArrayList<String>>(7, true, 7, true, string, n, null, null);
        }

        public void a(jm jm) {
            this.MG = jm;
        }

        public I convertBack(O o) {
            return this.MH.convertBack(o);
        }

        @Override
        public int describeContents() {
            jk jk = CREATOR;
            return 0;
        }

        public int getVersionCode() {
            return this.BR;
        }

        public int hd() {
            return this.My;
        }

        public int he() {
            return this.MA;
        }

        public a<I, O> hi() {
            return new a<I, O>(this.BR, this.My, this.Mz, this.MA, this.MB, this.MC, this.MD, this.MF, this.hq());
        }

        public boolean hj() {
            return this.Mz;
        }

        public boolean hk() {
            return this.MB;
        }

        public String hl() {
            return this.MC;
        }

        public int hm() {
            return this.MD;
        }

        public Class<? extends ji> hn() {
            return this.ME;
        }

        String ho() {
            if (this.MF == null) {
                return null;
            }
            return this.MF;
        }

        public boolean hp() {
            if (this.MH != null) {
                return true;
            }
            return false;
        }

        jd hq() {
            if (this.MH == null) {
                return null;
            }
            return jd.a(this.MH);
        }

        public HashMap<String, a<?, ?>> hr() {
            o.i(this.MF);
            o.i(this.MG);
            return this.MG.be(this.MF);
        }

        /*
         * Enabled aggressive block sorting
         */
        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Field\n");
            stringBuilder.append("            versionCode=").append(this.BR).append('\n');
            stringBuilder.append("                 typeIn=").append(this.My).append('\n');
            stringBuilder.append("            typeInArray=").append(this.Mz).append('\n');
            stringBuilder.append("                typeOut=").append(this.MA).append('\n');
            stringBuilder.append("           typeOutArray=").append(this.MB).append('\n');
            stringBuilder.append("        outputFieldName=").append(this.MC).append('\n');
            stringBuilder.append("      safeParcelFieldId=").append(this.MD).append('\n');
            stringBuilder.append("       concreteTypeName=").append(this.ho()).append('\n');
            if (this.hn() != null) {
                stringBuilder.append("     concreteType.class=").append(this.hn().getCanonicalName()).append('\n');
            }
            StringBuilder stringBuilder2 = stringBuilder.append("          converterName=");
            String string = this.MH == null ? "null" : this.MH.getClass().getCanonicalName();
            stringBuilder2.append(string).append('\n');
            return stringBuilder.toString();
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            jk jk = CREATOR;
            jk.a(this, parcel, n);
        }
    }

    public static interface b<I, O> {
        public I convertBack(O var1);

        public int hd();

        public int he();
    }

}

