/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Base64;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.X509EncodedKeySpec;

@ez
public class ef {
    public static PublicKey F(String object) {
        try {
            object = Base64.decode((String)object, 0);
            object = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec((byte[])object));
            return object;
        }
        catch (NoSuchAlgorithmException var0_1) {
            throw new RuntimeException(var0_1);
        }
        catch (InvalidKeySpecException var0_2) {
            gs.T("Invalid key specification.");
            throw new IllegalArgumentException(var0_2);
        }
    }

    public static boolean a(PublicKey publicKey, String string, String string2) {
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publicKey);
            signature.update(string.getBytes());
            if (!signature.verify(Base64.decode(string2, 0))) {
                gs.T("Signature verification failed.");
                return false;
            }
            return true;
        }
        catch (NoSuchAlgorithmException var0_1) {
            gs.T("NoSuchAlgorithmException.");
            return false;
        }
        catch (InvalidKeyException var0_2) {
            gs.T("Invalid key specification.");
            return false;
        }
        catch (SignatureException var0_3) {
            gs.T("Signature exception.");
            return false;
        }
    }

    public static boolean b(String string, String string2, String string3) {
        if (TextUtils.isEmpty((CharSequence)string2) || TextUtils.isEmpty((CharSequence)string) || TextUtils.isEmpty((CharSequence)string3)) {
            gs.T("Purchase verification failed: missing data.");
            return false;
        }
        return ef.a(ef.F(string), string2, string3);
    }
}

