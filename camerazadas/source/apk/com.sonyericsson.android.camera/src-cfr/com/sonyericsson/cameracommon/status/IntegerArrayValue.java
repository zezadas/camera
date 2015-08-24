/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.status.CameraStatusValue;

public abstract class IntegerArrayValue
implements CameraStatusValue {
    private static final String INLALID_VALUE = "N/A";
    private static final char SEPARATOR = ',';
    protected final int[] mValues;

    public /* varargs */ IntegerArrayValue(int ... arrn) {
        this.mValues = arrn;
    }

    private String getValue() {
        if (this.mValues.length > 0) {
            StringBuilder stringBuilder = new StringBuilder();
            for (int i = 0; i < this.mValues.length; ++i) {
                if (i != 0) {
                    stringBuilder.append(',');
                }
                stringBuilder.append(this.mValues[i]);
            }
            return stringBuilder.toString();
        }
        return "N/A";
    }

    @Override
    public String getValueForDebug() {
        return this.getValue();
    }

    @Override
    public void putInto(ContentValues contentValues, String string) {
        contentValues.put(string + this.getKey(), this.getValue());
    }
}

