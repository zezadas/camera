/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ParameterSelectability
extends Enum<ParameterSelectability> {
    private static final /* synthetic */ ParameterSelectability[] $VALUES;
    public static final /* enum */ ParameterSelectability FIXED;
    public static final /* enum */ ParameterSelectability FORCE_CHANGED;
    public static final /* enum */ ParameterSelectability INVALID;
    public static final /* enum */ ParameterSelectability SELECTABLE;
    private static final String TAG = "ParameterSelectability";
    public static final /* enum */ ParameterSelectability UNAVAILABLE;
    private final boolean mIsUpdatable;

    static;

    private ParameterSelectability(boolean var3);

    public static ParameterSelectability getSelectability(int var0);

    public static ParameterSelectability valueOf(String var0);

    public static ParameterSelectability[] values();

    public boolean isUpdatable();
}

