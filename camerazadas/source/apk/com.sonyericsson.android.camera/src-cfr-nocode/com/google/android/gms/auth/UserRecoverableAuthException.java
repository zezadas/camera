/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.content.Intent;
import com.google.android.gms.auth.GoogleAuthException;

/*
 * Exception performing whole class analysis.
 */
public class UserRecoverableAuthException
extends GoogleAuthException {
    private final Intent mIntent;

    public UserRecoverableAuthException(String var1, Intent var2);

    public Intent getIntent();
}

