/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.content.Intent;
import com.google.android.gms.auth.GoogleAuthException;

public class UserRecoverableAuthException
extends GoogleAuthException {
    private final Intent mIntent;

    public UserRecoverableAuthException(String string, Intent intent) {
        super(string);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        if (this.mIntent == null) {
            return null;
        }
        return new Intent(this.mIntent);
    }
}

