/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MediaSavingResult
extends Enum<MediaSavingResult> {
    private static final /* synthetic */ MediaSavingResult[] $VALUES;
    public static final /* enum */ MediaSavingResult FAIL;
    public static final /* enum */ MediaSavingResult FAIL_MEMORY_FULL;
    public static final /* enum */ MediaSavingResult SUCCESS;
    public final int mResultCode;
    public final boolean mSuccess;
    public final int mTextId;

    static;

    private MediaSavingResult(boolean var3, int var4, int var5);

    public static MediaSavingResult valueOf(String var0);

    public static MediaSavingResult[] values();
}

