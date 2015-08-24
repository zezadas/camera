/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import com.sonyericsson.android.camera.mediasaving.IntegrationMakerException;
import java.math.BigInteger;

public class JfifIntegrator {
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;

    /*
     * Enabled aggressive block sorting
     */
    public static int integrate(byte[] arrby, byte[] arrby2) throws IntegrationMakerException {
        int n;
        int n2;
        int n3;
        int n4;
        int n5 = arrby.length;
        byte[] arrby3 = new byte[2];
        int n6 = 0;
        int n7 = 0;
        int n8 = 0;
        int n9 = 0;
        int n10 = 0;
        while (n6 + 1 < n5) {
            arrby3[0] = arrby[n6];
            arrby3[1] = arrby[n6 + 1];
            int n11 = n6 + 2;
            if (-1 != arrby3[0]) {
                throw new IntegrationMakerException("No 'FF' marker.");
            }
            if (-38 == arrby3[1]) break;
            n6 = n11;
            if (-40 == arrby3[1]) continue;
            n6 = new BigInteger(new byte[]{arrby[n11], arrby[n11 + 1]}).intValue();
            if (-60 == arrby3[1]) {
                n2 = n8 == 0 ? n6 : n6 - 2;
                n2 = n8 + n2;
                n4 = n10 + (n6 + 2);
                n = n7;
                n3 = n9;
            } else {
                n4 = n10;
                n2 = n8;
                n3 = n9;
                n = n7;
                if (-37 == arrby3[1]) {
                    n2 = n7 == 0 ? n6 : n6 - 2;
                    n = n7 + n2;
                    n3 = n9 + (n6 + 2);
                    n4 = n10;
                    n2 = n8;
                }
            }
            n6 = n11 + n6;
            n10 = n4;
            n8 = n2;
            n9 = n3;
            n7 = n;
        }
        byte[] arrby4 = new byte[n7 + 2];
        byte[] arrby5 = new byte[n8 + 2];
        arrby4[0] = -1;
        arrby4[1] = -37;
        arrby5[0] = -1;
        arrby5[1] = -60;
        byte[] arrby6 = new BigInteger(String.valueOf(n7)).toByteArray();
        arrby4[2] = arrby6[0];
        arrby4[3] = arrby6[1];
        arrby6 = new BigInteger(String.valueOf(n8)).toByteArray();
        arrby5[2] = arrby6[0];
        arrby5[3] = arrby6[1];
        n3 = 4;
        n4 = 4;
        n2 = 0;
        n6 = 0;
        while (n2 + 1 < n5) {
            arrby3[0] = arrby[n2];
            arrby3[1] = arrby[n2 + 1];
            n2+=2;
            if (-1 != arrby3[0]) {
                throw new IntegrationMakerException("No 'FF' marker.");
            }
            if (-38 == arrby3[1]) {
                System.arraycopy(arrby4, 0, arrby2, n6, n7 + 2);
                System.arraycopy(arrby5, 0, arrby2, n6+=n7 + 2, n8 + 2);
                System.arraycopy(arrby, n2 - 2, arrby2, n6 + (n8 + 2), n5 - (n2 - 2));
                return n5 - n9 - n10 + n7 + 2 + n8 + 2;
            }
            if (-40 == arrby3[1]) {
                arrby2[n2 - 2] = arrby3[0];
                arrby2[n2 - 1] = arrby3[1];
                n6+=2;
                continue;
            }
            n = new BigInteger(new byte[]{arrby[n2], arrby[n2 + 1]}).intValue();
            if (-60 == arrby3[1]) {
                System.arraycopy(arrby, n2 + 2, arrby5, n4, n - 2);
                n4+=n - 2;
            } else if (-37 == arrby3[1]) {
                System.arraycopy(arrby, n2 + 2, arrby4, n3, n - 2);
                n3+=n - 2;
            } else {
                System.arraycopy(arrby, n2 - 2, arrby2, n6, n + 2);
                n6+=n + 2;
            }
            n2+=n;
        }
        return n5 - n9 - n10 + n7 + 2 + n8 + 2;
    }
}

