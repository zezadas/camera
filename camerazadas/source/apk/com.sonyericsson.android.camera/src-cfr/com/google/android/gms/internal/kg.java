/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.j;
import java.util.Arrays;
import java.util.Collection;

public class kg
extends j<DriveId> {
    public static final kg Qy = new kg();

    private kg() {
        super("driveId", Arrays.asList("sqlId", "resourceId"), Arrays.asList("dbInstanceId"), 4100000);
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.m(dataHolder, n, n2);
    }

    protected DriveId m(DataHolder dataHolder, int n, int n2) {
        String string;
        long l = dataHolder.gy().getLong("dbInstanceId");
        String string2 = string = dataHolder.c("resourceId", n, n2);
        if (string != null) {
            string2 = string;
            if (string.startsWith("generated-android-")) {
                string2 = null;
            }
        }
        return new DriveId(string2, dataHolder.a("sqlId", n, n2), l);
    }
}

