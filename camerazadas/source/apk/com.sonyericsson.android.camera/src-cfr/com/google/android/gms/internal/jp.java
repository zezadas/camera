/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.ji;
import com.google.android.gms.internal.jm;
import com.google.android.gms.internal.jq;
import com.google.android.gms.internal.jr;
import com.google.android.gms.internal.js;
import com.google.android.gms.internal.jz;
import com.google.android.gms.internal.ka;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class jp
extends ji
implements SafeParcelable {
    public static final jq CREATOR = new jq();
    private final int BR;
    private final jm MG;
    private final Parcel MN;
    private final int MO;
    private int MP;
    private int MQ;
    private final String mClassName;

    /*
     * Enabled aggressive block sorting
     */
    jp(int n, Parcel parcel, jm jm) {
        this.BR = n;
        this.MN = o.i(parcel);
        this.MO = 2;
        this.MG = jm;
        this.mClassName = this.MG == null ? null : this.MG.hv();
        this.MP = 2;
    }

    private jp(SafeParcelable safeParcelable, jm jm, String string) {
        this.BR = 1;
        this.MN = Parcel.obtain();
        safeParcelable.writeToParcel(this.MN, 0);
        this.MO = 1;
        this.MG = o.i(jm);
        this.mClassName = o.i(string);
        this.MP = 2;
    }

    public static <T extends ji> jp a(T t) {
        String string = t.getClass().getCanonicalName();
        jm jm = jp.b(t);
        return new jp((SafeParcelable)t, jm, string);
    }

    private static void a(jm jm, ji a) {
        Class class_ = a.getClass();
        if (!jm.b(class_)) {
            HashMap hashMap = a.hf();
            jm.a(class_, a.hf());
            class_ = hashMap.keySet().iterator();
            while (class_.hasNext()) {
                a = hashMap.get((String)class_.next());
                Class<ji> class_2 = a.hn();
                if (class_2 == null) continue;
                try {
                    jp.a(jm, class_2.newInstance());
                    continue;
                }
                catch (InstantiationException var0_1) {
                    throw new IllegalStateException("Could not instantiate an object of type " + a.hn().getCanonicalName(), var0_1);
                }
                catch (IllegalAccessException var0_2) {
                    throw new IllegalStateException("Could not access object of type " + a.hn().getCanonicalName(), var0_2);
                }
            }
        }
    }

    private void a(StringBuilder stringBuilder, int n, Object object) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unknown type = " + n);
            }
            case 0: 
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: {
                stringBuilder.append(object);
                return;
            }
            case 7: {
                stringBuilder.append("\"").append(jz.bf(object.toString())).append("\"");
                return;
            }
            case 8: {
                stringBuilder.append("\"").append(js.d((byte[])object)).append("\"");
                return;
            }
            case 9: {
                stringBuilder.append("\"").append(js.e((byte[])object));
                stringBuilder.append("\"");
                return;
            }
            case 10: {
                ka.a(stringBuilder, (HashMap)object);
                return;
            }
            case 11: 
        }
        throw new IllegalArgumentException("Method does not accept concrete type.");
    }

    private void a(StringBuilder stringBuilder, ji.a<?, ?> a, Parcel parcel, int n) {
        switch (a.he()) {
            default: {
                throw new IllegalArgumentException("Unknown field out type = " + a.he());
            }
            case 0: {
                this.b(stringBuilder, a, this.a(a, a.g(parcel, n)));
                return;
            }
            case 1: {
                this.b(stringBuilder, a, this.a(a, a.k(parcel, n)));
                return;
            }
            case 2: {
                this.b(stringBuilder, a, this.a(a, a.i(parcel, n)));
                return;
            }
            case 3: {
                this.b(stringBuilder, a, this.a(a, Float.valueOf(a.l(parcel, n))));
                return;
            }
            case 4: {
                this.b(stringBuilder, a, this.a(a, a.m(parcel, n)));
                return;
            }
            case 5: {
                this.b(stringBuilder, a, this.a(a, a.n(parcel, n)));
                return;
            }
            case 6: {
                this.b(stringBuilder, a, this.a(a, a.c(parcel, n)));
                return;
            }
            case 7: {
                this.b(stringBuilder, a, this.a(a, a.o(parcel, n)));
                return;
            }
            case 8: 
            case 9: {
                this.b(stringBuilder, a, this.a(a, a.r(parcel, n)));
                return;
            }
            case 10: {
                this.b(stringBuilder, a, this.a(a, jp.e(a.q(parcel, n))));
                return;
            }
            case 11: 
        }
        throw new IllegalArgumentException("Method does not accept concrete type.");
    }

    private void a(StringBuilder stringBuilder, String string, ji.a<?, ?> a, Parcel parcel, int n) {
        stringBuilder.append("\"").append(string).append("\":");
        if (a.hp()) {
            this.a(stringBuilder, a, parcel, n);
            return;
        }
        this.b(stringBuilder, a, parcel, n);
    }

    private void a(StringBuilder stringBuilder, HashMap<String, ji.a<?, ?>> hashMap, Parcel parcel) {
        hashMap = jp.b(hashMap);
        stringBuilder.append('{');
        int n = a.C(parcel);
        boolean bl = false;
        while (parcel.dataPosition() < n) {
            int n2 = a.B(parcel);
            Map.Entry entry = (Map.Entry)hashMap.get(a.aD(n2));
            if (entry == null) continue;
            if (bl) {
                stringBuilder.append(",");
            }
            this.a(stringBuilder, (String)entry.getKey(), (ji.a)entry.getValue(), parcel, n2);
            bl = true;
        }
        if (parcel.dataPosition() != n) {
            throw new a.a("Overread allowed size end=" + n, parcel);
        }
        stringBuilder.append('}');
    }

    private static jm b(ji ji) {
        jm jm = new jm(ji.getClass());
        jp.a(jm, ji);
        jm.ht();
        jm.hs();
        return jm;
    }

    private static HashMap<Integer, Map.Entry<String, ji.a<?, ?>>> b(HashMap<String, ji.a<?, ?>> object) {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : object.entrySet()) {
            hashMap.put(((ji.a)entry.getValue()).hm(), entry);
        }
        return hashMap;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(StringBuilder stringBuilder, ji.a<?, ?> object, Parcel object2, int n) {
        if (object.hk()) {
            stringBuilder.append("[");
            switch (object.he()) {
                default: {
                    throw new IllegalStateException("Unknown field type out.");
                }
                case 0: {
                    jr.a(stringBuilder, a.u(object2, n));
                    break;
                }
                case 1: {
                    jr.a(stringBuilder, a.w(object2, n));
                    break;
                }
                case 2: {
                    jr.a(stringBuilder, a.v(object2, n));
                    break;
                }
                case 3: {
                    jr.a(stringBuilder, a.x(object2, n));
                    break;
                }
                case 4: {
                    jr.a(stringBuilder, a.y(object2, n));
                    break;
                }
                case 5: {
                    jr.a(stringBuilder, a.z(object2, n));
                    break;
                }
                case 6: {
                    jr.a(stringBuilder, a.t(object2, n));
                    break;
                }
                case 7: {
                    jr.a(stringBuilder, a.A(object2, n));
                    break;
                }
                case 8: 
                case 9: 
                case 10: {
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                }
                case 11: {
                    object2 = a.E((Parcel)object2, n);
                    int n2 = object2.length;
                    for (n = 0; n < n2; ++n) {
                        if (n > 0) {
                            stringBuilder.append(",");
                        }
                        object2[n].setDataPosition(0);
                        this.a(stringBuilder, object.hr(), (Parcel)object2[n]);
                    }
                }
            }
            stringBuilder.append("]");
            return;
        }
        switch (object.he()) {
            default: {
                throw new IllegalStateException("Unknown field type out");
            }
            case 0: {
                stringBuilder.append(a.g((Parcel)object2, n));
                return;
            }
            case 1: {
                stringBuilder.append(a.k((Parcel)object2, n));
                return;
            }
            case 2: {
                stringBuilder.append(a.i((Parcel)object2, n));
                return;
            }
            case 3: {
                stringBuilder.append(a.l((Parcel)object2, n));
                return;
            }
            case 4: {
                stringBuilder.append(a.m((Parcel)object2, n));
                return;
            }
            case 5: {
                stringBuilder.append(a.n((Parcel)object2, n));
                return;
            }
            case 6: {
                stringBuilder.append(a.c((Parcel)object2, n));
                return;
            }
            case 7: {
                object = a.o((Parcel)object2, n);
                stringBuilder.append("\"").append(jz.bf((String)object)).append("\"");
                return;
            }
            case 8: {
                object = a.r((Parcel)object2, n);
                stringBuilder.append("\"").append(js.d((byte[])object)).append("\"");
                return;
            }
            case 9: {
                object = a.r((Parcel)object2, n);
                stringBuilder.append("\"").append(js.e((byte[])object));
                stringBuilder.append("\"");
                return;
            }
            case 10: {
                object = a.q((Parcel)object2, n);
                object2 = object.keySet();
                object2.size();
                stringBuilder.append("{");
                object2 = object2.iterator();
                n = 1;
                do {
                    if (!object2.hasNext()) {
                        stringBuilder.append("}");
                        return;
                    }
                    String string = (String)object2.next();
                    if (n == 0) {
                        stringBuilder.append(",");
                    }
                    stringBuilder.append("\"").append(string).append("\"");
                    stringBuilder.append(":");
                    stringBuilder.append("\"").append(jz.bf(object.getString(string))).append("\"");
                    n = 0;
                } while (true);
            }
            case 11: 
        }
        object2 = a.D((Parcel)object2, n);
        object2.setDataPosition(0);
        this.a(stringBuilder, object.hr(), (Parcel)object2);
    }

    private void b(StringBuilder stringBuilder, ji.a<?, ?> a, Object object) {
        if (a.hj()) {
            this.b(stringBuilder, a, (ArrayList)object);
            return;
        }
        this.a(stringBuilder, a.hd(), object);
    }

    private void b(StringBuilder stringBuilder, ji.a<?, ?> a, ArrayList<?> arrayList) {
        stringBuilder.append("[");
        int n = arrayList.size();
        for (int i = 0; i < n; ++i) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            this.a(stringBuilder, a.hd(), arrayList.get(i));
        }
        stringBuilder.append("]");
    }

    public static HashMap<String, String> e(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        for (String string : bundle.keySet()) {
            hashMap.put(string, bundle.getString(string));
        }
        return hashMap;
    }

    @Override
    protected Object ba(String string) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override
    protected boolean bb(String string) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override
    public int describeContents() {
        jq jq = CREATOR;
        return 0;
    }

    public int getVersionCode() {
        return this.BR;
    }

    @Override
    public HashMap<String, ji.a<?, ?>> hf() {
        if (this.MG == null) {
            return null;
        }
        return this.MG.be(this.mClassName);
    }

    /*
     * Enabled aggressive block sorting
     */
    public Parcel hx() {
        switch (this.MP) {
            case 0: {
                this.MQ = b.D(this.MN);
                b.H(this.MN, this.MQ);
                this.MP = 2;
            }
            default: {
                return this.MN;
            }
            case 1: 
        }
        b.H(this.MN, this.MQ);
        this.MP = 2;
        return this.MN;
    }

    jm hy() {
        switch (this.MO) {
            default: {
                throw new IllegalStateException("Invalid creation type: " + this.MO);
            }
            case 0: {
                return null;
            }
            case 1: {
                return this.MG;
            }
            case 2: 
        }
        return this.MG;
    }

    @Override
    public String toString() {
        o.b(this.MG, (Object)"Cannot convert to JSON on client side.");
        Parcel parcel = this.hx();
        parcel.setDataPosition(0);
        StringBuilder stringBuilder = new StringBuilder(100);
        this.a(stringBuilder, this.MG.be(this.mClassName), parcel);
        return stringBuilder.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        jq jq = CREATOR;
        jq.a(this, parcel, n);
    }
}

