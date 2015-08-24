/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.i;
import com.google.android.gms.drive.metadata.internal.j;
import com.google.android.gms.drive.metadata.internal.l;
import com.google.android.gms.drive.metadata.internal.m;
import com.google.android.gms.internal.ke;
import java.util.Collection;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class kd {
    public static final MetadataField<DriveId> PM;
    public static final MetadataField<String> PN;
    public static final a PO;
    public static final MetadataField<String> PP;
    public static final MetadataField<String> PQ;
    public static final MetadataField<String> PR;
    public static final MetadataField<Long> PS;
    public static final MetadataField<Boolean> PT;
    public static final MetadataField<String> PU;
    public static final MetadataField<Boolean> PV;
    public static final MetadataField<Boolean> PW;
    public static final MetadataField<Boolean> PX;
    public static final b PY;
    public static final MetadataField<Boolean> PZ;
    public static final MetadataField<Boolean> Qa;
    public static final MetadataField<Boolean> Qb;
    public static final MetadataField<Boolean> Qc;
    public static final c Qd;
    public static final MetadataField<String> Qe;
    public static final com.google.android.gms.drive.metadata.b<String> Qf;
    public static final m Qg;
    public static final m Qh;
    public static final d Qi;
    public static final e Qj;
    public static final f Qk;
    public static final MetadataField<com.google.android.gms.common.data.a> Ql;
    public static final g Qm;
    public static final h Qn;
    public static final MetadataField<String> Qo;
    public static final MetadataField<String> Qp;
    public static final MetadataField<String> Qq;
    public static final com.google.android.gms.drive.metadata.internal.b Qr;
    public static final MetadataField<String> Qs;

    static;

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class a
    extends ke
    implements SearchableMetadataField<AppVisibleCustomProperties> {
        public a(int var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class b
    extends com.google.android.gms.drive.metadata.internal.b
    implements SearchableMetadataField<Boolean> {
        public b(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class c
    extends l
    implements SearchableMetadataField<String> {
        public c(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class d
    extends i<DriveId>
    implements SearchableCollectionMetadataField<DriveId> {
        public d(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class e
    extends com.google.android.gms.drive.metadata.internal.g
    implements SortableMetadataField<Long> {
        public e(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class f
    extends com.google.android.gms.drive.metadata.internal.b
    implements SearchableMetadataField<Boolean> {
        public f(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class g
    extends l
    implements SearchableMetadataField<String>,
    SortableMetadataField<String> {
        public g(String var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class h
    extends com.google.android.gms.drive.metadata.internal.b
    implements SearchableMetadataField<Boolean> {
        public h(String var1, int var2);

        @Override
        protected /* synthetic */ Object c(DataHolder var1, int var2, int var3);

        @Override
        protected Boolean e(DataHolder var1, int var2, int var3);
    }

}

