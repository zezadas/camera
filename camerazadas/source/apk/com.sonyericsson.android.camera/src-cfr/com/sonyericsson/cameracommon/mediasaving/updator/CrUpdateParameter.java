/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.updator;

import android.content.ContentValues;

public final class CrUpdateParameter {
    public String[] selectionArgs = null;
    public ContentValues values = null;
    public String where = null;

    public void clear() {
        this.values = null;
        this.where = null;
        this.selectionArgs = null;
    }
}

