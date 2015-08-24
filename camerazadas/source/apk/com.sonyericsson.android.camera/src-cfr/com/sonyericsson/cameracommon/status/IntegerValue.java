/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.status.CameraStatusValue;

public abstract class IntegerValue
implements CameraStatusValue {
    protected final int mValue;

    public IntegerValue(int n) {
        this.mValue = n;
    }

    @Override
    public String getValueForDebug() {
        return String.valueOf(this.mValue);
    }

    @Override
    public void putInto(ContentValues contentValues, String string) {
        contentValues.put(string + this.getKey(), this.mValue);
    }
}

