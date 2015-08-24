/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import com.sonyericsson.android.camera.mediasaving.IntegrationMakerException;

/*
 * Exception performing whole class analysis ignored.
 */
public class JfifIntegrator {
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;

    public JfifIntegrator();

    public static int integrate(byte[] var0, byte[] var1) throws IntegrationMakerException;
}

