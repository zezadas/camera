/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.content.Intent;
import com.google.android.gms.auth.UserRecoverableAuthException;

public class GooglePlayServicesAvailabilityException
extends UserRecoverableAuthException {
    private final int Dr;

    GooglePlayServicesAvailabilityException(int n, String string, Intent intent) {
        super(string, intent);
        this.Dr = n;
    }

    public int getConnectionStatusCode() {
        return this.Dr;
    }
}

