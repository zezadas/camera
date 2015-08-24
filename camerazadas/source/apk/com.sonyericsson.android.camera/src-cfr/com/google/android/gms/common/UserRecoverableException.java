/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.Intent;

public class UserRecoverableException
extends Exception {
    private final Intent mIntent;

    public UserRecoverableException(String string, Intent intent) {
        super(string);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        return new Intent(this.mIntent);
    }
}

