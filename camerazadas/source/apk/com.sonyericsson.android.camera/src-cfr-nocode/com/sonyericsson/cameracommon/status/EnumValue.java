/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.status.CameraStatusValue;

/*
 * Exception performing whole class analysis.
 */
public abstract class EnumValue<T extends Enum<T>>
implements CameraStatusValue {
    private final String mValueString;

    public EnumValue(T var1);

    @Override
    public String getValueForDebug();

    @Override
    public void putInto(ContentValues var1, String var2);
}

