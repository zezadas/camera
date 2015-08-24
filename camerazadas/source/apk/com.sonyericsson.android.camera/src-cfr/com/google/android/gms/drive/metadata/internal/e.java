/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.a;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.b;
import com.google.android.gms.drive.metadata.internal.m;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.kf;
import com.google.android.gms.internal.kh;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class e {
    private static Map<String, MetadataField<?>> PK = new HashMap();

    static {
        e.b(kd.PM);
        e.b(kd.Qm);
        e.b(kd.Qd);
        e.b(kd.Qk);
        e.b(kd.Qn);
        e.b(kd.PX);
        e.b(kd.PY);
        e.b(kd.PV);
        e.b(kd.Qa);
        e.b(kd.Qi);
        e.b(kd.PN);
        e.b(kd.Qf);
        e.b(kd.PP);
        e.b(kd.PW);
        e.b(kd.PQ);
        e.b(kd.PR);
        e.b(kd.PS);
        e.b(kd.Qc);
        e.b(kd.PZ);
        e.b(kd.Qe);
        e.b(kd.Qg);
        e.b(kd.Qh);
        e.b(kd.Qj);
        e.b(kd.Qo);
        e.b(kd.Qp);
        e.b(kd.PU);
        e.b(kd.PT);
        e.b(kd.Ql);
        e.b(kd.Qb);
        e.b(kd.PO);
        e.b(kd.Qq);
        e.b(kd.Qr);
        e.b(kd.Qs);
        e.b(kf.Qt);
        e.b(kf.Qv);
        e.b(kf.Qw);
        e.b(kf.Qx);
        e.b(kf.Qu);
        e.b(kh.Qz);
        e.b(kh.QA);
    }

    private static void b(MetadataField<?> metadataField) {
        if (PK.containsKey(metadataField.getName())) {
            throw new IllegalArgumentException("Duplicate field name registered: " + metadataField.getName());
        }
        PK.put(metadataField.getName(), metadataField);
    }

    public static MetadataField<?> bj(String string) {
        return PK.get(string);
    }

    public static Collection<MetadataField<?>> in() {
        return Collections.unmodifiableCollection(PK.values());
    }
}

