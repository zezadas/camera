/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.content.Intent;
import com.google.android.gms.auth.UserRecoverableAuthException;

/*
 * Exception performing whole class analysis.
 */
public class GooglePlayServicesAvailabilityException
extends UserRecoverableAuthException {
    private final int Dr;

    GooglePlayServicesAvailabilityException(int var1, String var2, Intent var3);

    public int getConnectionStatusCode();
}

