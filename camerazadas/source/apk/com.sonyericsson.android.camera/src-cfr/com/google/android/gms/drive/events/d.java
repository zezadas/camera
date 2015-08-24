/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import com.google.android.gms.drive.DriveId;

public class d {
    public static boolean a(int n, DriveId driveId) {
        if (driveId != null || d.bd(n)) {
            return true;
        }
        return false;
    }

    public static boolean bd(int n) {
        if ((2 & (long)(1 << n)) != 0) {
            return true;
        }
        return false;
    }
}

