/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.ExtendedActivity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ZoomDirection
extends Enum<ZoomDirection> {
    private static final /* synthetic */ ZoomDirection[] $VALUES;
    public static final /* enum */ ZoomDirection IN;
    public static final /* enum */ ZoomDirection IN_OUT;
    public static final /* enum */ ZoomDirection NONE;
    public static final /* enum */ ZoomDirection OUT;
    private float mScaleLength;

    static;

    private ZoomDirection();

    public static ZoomDirection get(float var0, float var1);

    public static ZoomDirection get(int var0, ExtendedActivity var1);

    public static ZoomDirection valueOf(String var0);

    public static ZoomDirection[] values();

    public float getScaleLength();

    public void setScaleLength(float var1);
}

