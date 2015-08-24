/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth.api;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;

/*
 * Exception performing whole class analysis.
 */
public class GoogleAuthApiException
extends Exception {
    private Status CM;
    private PendingIntent mPendingIntent;

    public GoogleAuthApiException(String var1, Status var2);

    public GoogleAuthApiException(String var1, Status var2, PendingIntent var3);

    public PendingIntent getPendingIntent();

    public Status getStatus();

    public boolean isUserRecoverable();
}

