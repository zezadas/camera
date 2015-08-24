/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.b;
import com.google.android.gms.drive.metadata.internal.f;

public class kh {
    public static final MetadataField<Boolean> QA;
    public static final MetadataField<Integer> Qz;

    static {
        Qz = new f("contentAvailability", 4300000);
        QA = new b("isPinnable", 4300000);
    }
}

