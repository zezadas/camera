/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.Intent;

/*
 * Exception performing whole class analysis.
 */
public class UserRecoverableException
extends Exception {
    private final Intent mIntent;

    public UserRecoverableException(String var1, Intent var2);

    public Intent getIntent();
}

