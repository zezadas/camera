/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.cl;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fk;
import com.google.android.gms.internal.gv;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@ez
public final class fz {
    public final int errorCode;
    public final int orientation;
    public final String qA;
    public final co qB;
    public final List<String> qf;
    public final List<String> qg;
    public final long qj;
    public final cl qy;
    public final cu qz;
    public final gv rN;
    public final String tA;
    public final long tH;
    public final boolean tI;
    public final long tJ;
    public final List<String> tK;
    public final String tN;
    public final av tx;
    public final JSONObject vp;
    public final cm vq;
    public final ay vr;
    public final long vs;
    public final long vt;
    public final bq.a vu;

    /*
     * Enabled aggressive block sorting
     */
    public fz(av list, gv gv, List<String> list2, int n, List<String> list3, List<String> list4, int n2, long l, String string, boolean bl, cl cl, cu cu, String string2, cm cm, co co, long l2, ay ay, long l3, long l4, long l5, String string3, JSONObject jSONObject, bq.a a) {
        this.tx = list;
        this.rN = gv;
        list = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.qf = list;
        this.errorCode = n;
        list = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.qg = list;
        list = list4 != null ? Collections.unmodifiableList(list4) : null;
        this.tK = list;
        this.orientation = n2;
        this.qj = l;
        this.tA = string;
        this.tI = bl;
        this.qy = cl;
        this.qz = cu;
        this.qA = string2;
        this.vq = cm;
        this.qB = co;
        this.tJ = l2;
        this.vr = ay;
        this.tH = l3;
        this.vs = l4;
        this.vt = l5;
        this.tN = string3;
        this.vp = jSONObject;
        this.vu = a;
    }

    public fz(a a, gv gv, cl cl, cu cu, String string, co co, bq.a a2) {
        this(a.vv.tx, gv, a.vw.qf, a.errorCode, a.vw.qg, a.vw.tK, a.vw.orientation, a.vw.qj, a.vv.tA, a.vw.tI, cl, cu, string, a.vq, co, a.vw.tJ, a.lH, a.vw.tH, a.vs, a.vt, a.vw.tN, a.vp, a2);
    }

    @ez
    public static final class a {
        public final int errorCode;
        public final ay lH;
        public final JSONObject vp;
        public final cm vq;
        public final long vs;
        public final long vt;
        public final fi vv;
        public final fk vw;

        public a(fi fi, fk fk, cm cm, ay ay, int n, long l, long l2, JSONObject jSONObject) {
            this.vv = fi;
            this.vw = fk;
            this.vq = cm;
            this.lH = ay;
            this.errorCode = n;
            this.vs = l;
            this.vt = l2;
            this.vp = jSONObject;
        }
    }

}

