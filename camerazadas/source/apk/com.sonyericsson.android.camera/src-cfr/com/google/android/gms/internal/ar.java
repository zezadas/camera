/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.aq;
import java.security.MessageDigest;

public class ar
extends ao {
    private MessageDigest nP;

    byte[] a(String[] arrstring) {
        byte[] arrby = new byte[arrstring.length];
        for (int i = 0; i < arrstring.length; ++i) {
            arrby[i] = (byte)(aq.o(arrstring[i]) & 255);
        }
        return arrby;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public byte[] l(String object) {
        byte[] arrby = this.a(object.split(" "));
        this.nP = this.ba();
        object = this.mw;
        synchronized (object) {
            if (this.nP == null) {
                return new byte[0];
            }
            this.nP.reset();
            this.nP.update(arrby);
            arrby = this.nP.digest();
            int n = 4;
            if (arrby.length <= 4) {
                n = arrby.length;
            }
            byte[] arrby2 = new byte[n];
            System.arraycopy(arrby, 0, arrby2, 0, arrby2.length);
            return arrby2;
        }
    }
}

