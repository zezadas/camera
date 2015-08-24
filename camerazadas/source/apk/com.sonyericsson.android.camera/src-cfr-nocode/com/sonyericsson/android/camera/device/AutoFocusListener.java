/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

public interface AutoFocusListener {
    public void onAutoFocus(Result var1);

    public static interface Result {
        public boolean isFocused();

        public boolean isFocused(int var1);
    }

}

