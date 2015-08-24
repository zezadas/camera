/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;

public class GoogleAuthApiException
extends Exception {
    private Status CM;
    private PendingIntent mPendingIntent;

    public GoogleAuthApiException(String string, Status status) {
        super(string);
        this.CM = status;
    }

    public GoogleAuthApiException(String string, Status status, PendingIntent pendingIntent) {
        super(string);
        this.CM = status;
        this.mPendingIntent = pendingIntent;
    }

    public PendingIntent getPendingIntent() {
        return this.mPendingIntent;
    }

    public Status getStatus() {
        return this.CM;
    }

    public boolean isUserRecoverable() {
        if (this.mPendingIntent != null) {
            return true;
        }
        return false;
    }
}

