/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.google.android.gms.tagmanager.bh;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class ce {
    private static ce aqd;
    private volatile String aoc;
    private volatile a aqe;
    private volatile String aqf;
    private volatile String aqg;

    ce() {
        this.clear();
    }

    private String cI(String string) {
        return string.split("&")[0].split("=")[1];
    }

    private String j(Uri uri) {
        return uri.getQuery().replace((CharSequence)"&gtm_debug=x", (CharSequence)"");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static ce oJ() {
        synchronized (ce.class) {
            if (aqd != null) return aqd;
            aqd = new ce();
            return aqd;
        }
    }

    void clear() {
        this.aqe = a.aqh;
        this.aqf = null;
        this.aoc = null;
        this.aqg = null;
    }

    String getContainerId() {
        return this.aoc;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    boolean i(Uri var1_1) {
        var2_3 = true;
        // MONITORENTER : this
        try {
            var3_4 = URLDecoder.decode(var1_1.toString(), "UTF-8");
            ** if (!var3_4.matches((String)"^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) goto lbl16
        }
        catch (UnsupportedEncodingException var1_2) {
            return false;
        }
lbl-1000: // 1 sources:
        {
            bh.V("Container preview url: " + var3_4);
            this.aqe = var3_4.matches(".*?&gtm_debug=x$") != false ? a.aqj : a.aqi;
            this.aqg = this.j(var1_1);
            if (this.aqe == a.aqi || this.aqe == a.aqj) {
                this.aqf = "/r?" + this.aqg;
            }
            this.aoc = this.cI(this.aqg);
            // MONITOREXIT : this
            return var2_3;
        }
lbl16: // 1 sources:
        if (!var3_4.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
            bh.W("Invalid preview uri: " + var3_4);
            return false;
        }
        if (this.cI(var1_1.getQuery()).equals(this.aoc) == false) return false;
        bh.V("Exit preview mode for container: " + this.aoc);
        this.aqe = a.aqh;
        this.aqf = null;
        return var2_3;
    }

    a oK() {
        return this.aqe;
    }

    String oL() {
        return this.aqf;
    }

    static enum a {
        aqh,
        aqi,
        aqj;
        

        private a() {
        }
    }

}

