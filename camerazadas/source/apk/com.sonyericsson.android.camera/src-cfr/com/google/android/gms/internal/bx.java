/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.gq;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.l;
import java.util.HashMap;
import java.util.Map;

@ez
public final class bx {
    public static final by pA = new by(){

        @Override
        public void a(gv gv, Map<String, String> map) {
        }
    };
    public static final by pB = new by(){

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void a(gv gv, Map<String, String> object) {
            if (TextUtils.isEmpty((CharSequence)(object = (String)object.get("urls")))) {
                gs.W("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String[] arrstring = object.split(",");
            HashMap<String, Boolean> hashMap = new HashMap<String, Boolean>();
            PackageManager packageManager = gv.getContext().getPackageManager();
            int n = arrstring.length;
            int n2 = 0;
            do {
                if (n2 >= n) {
                    gv.a("openableURLs", hashMap);
                    return;
                }
                String string = arrstring[n2];
                object = string.split(";", 2);
                String string2 = object[0].trim();
                object = object.length > 1 ? object[1].trim() : "android.intent.action.VIEW";
                boolean bl = packageManager.resolveActivity(new Intent((String)object, Uri.parse(string2)), 65536) != null;
                hashMap.put(string, bl);
                ++n2;
            } while (true);
        }
    };
    public static final by pC = new by(){

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(gv gv, Map<String, String> object) {
            String string = (String)object.get("u");
            if (string == null) {
                gs.W("URL missing from click GMSG.");
                return;
            }
            object = Uri.parse(string);
            try {
                Object object2 = gv.dw();
                if (object2 != null && object2.b((Uri)object)) {
                    object = object2 = object2.a((Uri)object, gv.getContext());
                }
            }
            catch (l var3_5) {
                gs.W("Unable to append parameter to URL: " + string);
            }
            object = object.toString();
            new gq(gv.getContext(), gv.dx().wD, (String)object).start();
        }
    };
    public static final by pD = new by(){

        @Override
        public void a(gv object, Map<String, String> map) {
            if ((object = object.dt()) == null) {
                gs.W("A GMSG tried to close something that wasn't an overlay.");
                return;
            }
            object.close();
        }
    };
    public static final by pE = new by(){

        @Override
        public void a(gv gv, Map<String, String> map) {
            gv.o("1".equals(map.get("custom_close")));
        }
    };
    public static final by pF = new by(){

        @Override
        public void a(gv gv, Map<String, String> object) {
            if ((object = object.get("u")) == null) {
                gs.W("URL missing from httpTrack GMSG.");
                return;
            }
            new gq(gv.getContext(), gv.dx().wD, (String)object).start();
        }
    };
    public static final by pG = new by(){

        @Override
        public void a(gv gv, Map<String, String> map) {
            gs.U("Received log message: " + map.get("string"));
        }
    };
    public static final by pH = new by(){

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public void a(gv object, Map<String, String> object2) {
            int n;
            int n2;
            int n3;
            String string = (String)object2.get("tx");
            String string2 = (String)object2.get("ty");
            object2 = (String)object2.get("td");
            try {
                n2 = Integer.parseInt(string);
                n3 = Integer.parseInt(string2);
                n = Integer.parseInt((String)object2);
                object = object.dw();
                if (object == null) return;
            }
            catch (NumberFormatException var1_2) {
                gs.W("Could not parse touch parameters from gmsg.");
                return;
            }
            object.z().a(n2, n3, n);
        }
    };
    public static final by pI = new ce();

}

