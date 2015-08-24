/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.status.CameraStatusValue;

/*
 * Exception performing whole class analysis.
 */
public abstract class IntegerValue
implements CameraStatusValue {
    protected final int mValue;

    public IntegerValue(int var1);

    @Override
    public String getValueForDebug();

    @Override
    public void putInto(ContentValues var1, String var2);
}

