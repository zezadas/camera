/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.m;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class o {
    private final SecureRandom kW;
    private final m ky;

    public o(m m, SecureRandom secureRandom) {
        this.ky = m;
        this.kW = secureRandom;
    }

    static void c(byte[] arrby) {
        for (int i = 0; i < arrby.length; ++i) {
            arrby[i] = (byte)(arrby[i] ^ 68);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public byte[] b(String object) throws a {
        try {
            object = this.ky.a((String)object, false);
            if (object.length != 32) {
                throw new a(this);
            }
            object = ByteBuffer.wrap((byte[])object, 4, 16);
            byte[] arrby = new byte[16];
            object.get(arrby);
            o.c(arrby);
            return arrby;
        }
        catch (IllegalArgumentException var1_2) {
            throw new a(this, var1_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public byte[] c(byte[] object, String object2) throws a {
        if (object.length != 16) {
            throw new a(this);
        }
        try {
            byte[] arrby = this.ky.a((String)object2, false);
            if (arrby.length <= 16) {
                throw new a(this);
            }
            Object object3 = ByteBuffer.allocate(arrby.length);
            object3.put(arrby);
            object3.flip();
            object2 = new byte[16];
            arrby = new byte[arrby.length - 16];
            object3.get((byte[])object2);
            object3.get(arrby);
            object = new SecretKeySpec((byte[])object, "AES");
            object3 = Cipher.getInstance("AES/CBC/PKCS5Padding");
            object3.init(2, (Key)object, new IvParameterSpec((byte[])object2));
            return object3.doFinal(arrby);
        }
        catch (NoSuchAlgorithmException var1_2) {
            throw new a(this, var1_2);
        }
        catch (InvalidKeyException var1_3) {
            throw new a(this, var1_3);
        }
        catch (IllegalBlockSizeException var1_4) {
            throw new a(this, var1_4);
        }
        catch (NoSuchPaddingException var1_5) {
            throw new a(this, var1_5);
        }
        catch (BadPaddingException var1_6) {
            throw new a(this, var1_6);
        }
        catch (InvalidAlgorithmParameterException var1_7) {
            throw new a(this, var1_7);
        }
        catch (IllegalArgumentException var1_8) {
            throw new a(this, var1_8);
        }
    }

    public class a
    extends Exception {
        final /* synthetic */ o kX;

        public a(o o) {
            this.kX = o;
        }

        public a(o o, Throwable throwable) {
            this.kX = o;
            super(throwable);
        }
    }

}

