/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import java.util.Date;

public class kf {
    public static final a Qt = new a("created", 4100000);
    public static final b Qu = new b("lastOpenedTime", 4300000);
    public static final d Qv = new d("modified", 4100000);
    public static final c Qw = new c("modifiedByMe", 4100000);
    public static final e Qx = new e("sharedWithMe", 4100000);

    public static class a
    extends com.google.android.gms.drive.metadata.internal.d
    implements SortableMetadataField<Date> {
        public a(String string, int n) {
            super(string, n);
        }
    }

    public static class b
    extends com.google.android.gms.drive.metadata.internal.d
    implements SearchableOrderedMetadataField<Date>,
    SortableMetadataField<Date> {
        public b(String string, int n) {
            super(string, n);
        }
    }

    public static class c
    extends com.google.android.gms.drive.metadata.internal.d
    implements SortableMetadataField<Date> {
        public c(String string, int n) {
            super(string, n);
        }
    }

    public static class d
    extends com.google.android.gms.drive.metadata.internal.d
    implements SearchableOrderedMetadataField<Date>,
    SortableMetadataField<Date> {
        public d(String string, int n) {
            super(string, n);
        }
    }

    public static class e
    extends com.google.android.gms.drive.metadata.internal.d
    implements SearchableOrderedMetadataField<Date>,
    SortableMetadataField<Date> {
        public e(String string, int n) {
            super(string, n);
        }
    }

}

