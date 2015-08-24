/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

public class pe {
    private final byte[] aww = new byte[256];
    private int awx;
    private int awy;

    public pe(byte[] arrby) {
        int n;
        for (n = 0; n < 256; ++n) {
            this.aww[n] = (byte)n;
        }
        int n2 = 0;
        for (n = 0; n < 256; ++n) {
            n2 = n2 + this.aww[n] + arrby[n % arrby.length] & 255;
            byte by = this.aww[n];
            this.aww[n] = this.aww[n2];
            this.aww[n2] = by;
        }
        this.awx = 0;
        this.awy = 0;
    }

    public void o(byte[] arrby) {
        int n = this.awx;
        int n2 = this.awy;
        for (int i = 0; i < arrby.length; ++i) {
            n = n + 1 & 255;
            n2 = n2 + this.aww[n] & 255;
            byte by = this.aww[n];
            this.aww[n] = this.aww[n2];
            this.aww[n2] = by;
            arrby[i] = (byte)(arrby[i] ^ this.aww[this.aww[n] + this.aww[n2] & 255]);
        }
        this.awx = n;
        this.awy = n2;
    }
}

