/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.Intent;
import com.google.android.gms.common.UserRecoverableException;

/*
 * Exception performing whole class analysis.
 */
public class GooglePlayServicesRepairableException
extends UserRecoverableException {
    private final int Dr;

    GooglePlayServicesRepairableException(int var1, String var2, Intent var3);

    public int getConnectionStatusCode();
}

