/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

public class kb {
    /*
     * Enabled aggressive block sorting
     */
    public static int a(byte[] arrby, int n, int n2, int n3) {
        int n4 = n + (n2 & -4);
        int n5 = n3;
        n3 = n;
        n = n5;
        for (; n3 < n4; n3+=4) {
            n5 = (arrby[n3] & 255 | (arrby[n3 + 1] & 255) << 8 | (arrby[n3 + 2] & 255) << 16 | arrby[n3 + 3] << 24) * -862048943;
            n = (n5 >>> 17 | n5 << 15) * 461845907 ^ n;
            n = -430675100 + (n >>> 19 | n << 13) * 5;
        }
        n5 = 0;
        n3 = 0;
        switch (n2 & 3) {
            default: {
                break;
            }
            case 3: {
                n3 = (arrby[n4 + 2] & 255) << 16;
            }
            case 2: {
                n5 = n3 | (arrby[n4 + 1] & 255) << 8;
            }
            case 1: {
                n3 = (n5 | arrby[n4] & 255) * -862048943;
                n = (n3 >>> 17 | n3 << 15) * 461845907 ^ n;
            }
        }
        n^=n2;
        n = (n ^ n >>> 16) * -2048144789;
        n = (n ^ n >>> 13) * -1028477387;
        return n ^ n >>> 16;
    }
}

