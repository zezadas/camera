/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.status.CameraStatusValue;

/*
 * Exception performing whole class analysis.
 */
public abstract class IntegerArrayValue
implements CameraStatusValue {
    private static final String INLALID_VALUE = "N/A";
    private static final char SEPARATOR = ',';
    protected final int[] mValues;

    public /* varargs */ IntegerArrayValue(int ... var1);

    private String getValue();

    @Override
    public String getValueForDebug();

    @Override
    public void putInto(ContentValues var1, String var2);
}

