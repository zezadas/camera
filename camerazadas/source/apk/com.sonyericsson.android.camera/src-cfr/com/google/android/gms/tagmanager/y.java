/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.tagmanager.aq;
import com.google.android.gms.tagmanager.ar;
import com.google.android.gms.tagmanager.as;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.cg;
import com.google.android.gms.tagmanager.cw;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class y
implements aq {
    private static y apb;
    private static final Object xz;
    private cg aos;
    private String apc;
    private String apd;
    private ar ape;

    static {
        xz = new Object();
    }

    private y(Context context) {
        this(as.Z(context), new cw());
    }

    y(ar ar, cg cg) {
        this.ape = ar;
        this.aos = cg;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static aq X(Context object) {
        Object object2 = xz;
        synchronized (object2) {
            if (apb != null) return apb;
            apb = new y((Context)object);
            return apb;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public boolean cz(String string) {
        if (!this.aos.eJ()) {
            bh.W("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
            return false;
        }
        String string2 = string;
        if (this.apc != null) {
            string2 = string;
            if (this.apd != null) {
                string2 = this.apc + "?" + this.apd + "=" + URLEncoder.encode(string, "UTF-8");
                bh.V("Sending wrapped url hit: " + string2);
            }
        }
        this.ape.cC(string2);
        return true;
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            bh.d("Error wrapping URL for testing.", unsupportedEncodingException);
            return false;
        }
    }
}

