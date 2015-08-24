/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.Intent;
import com.google.android.gms.common.UserRecoverableException;

public class GooglePlayServicesRepairableException
extends UserRecoverableException {
    private final int Dr;

    GooglePlayServicesRepairableException(int n, String string, Intent intent) {
        super(string, intent);
        this.Dr = n;
    }

    public int getConnectionStatusCode() {
        return this.Dr;
    }
}

