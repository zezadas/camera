/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class ao {
    private static MessageDigest nI = null;
    protected Object mw = new Object();

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected MessageDigest ba() {
        Object object = this.mw;
        synchronized (object) {
            if (nI != null) {
                return nI;
            }
            int n = 0;
            do {
                if (n >= 2) {
                    return nI;
                }
                try {
                    nI = MessageDigest.getInstance("MD5");
                }
                catch (NoSuchAlgorithmException var3_3) {}
                ++n;
            } while (true);
        }
    }

    abstract byte[] l(String var1);
}

