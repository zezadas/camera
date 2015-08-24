/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.ai;
import com.google.android.gms.analytics.i;
import com.google.android.gms.analytics.j;
import com.google.android.gms.analytics.z;
import java.util.Map;

class ah
extends j<ai> {
    public ah(Context context) {
        super(context, new a());
    }

    private static class a
    implements j.a<ai> {
        private final ai BB = new ai();

        @Override
        public void c(String string, int n) {
            if ("ga_sessionTimeout".equals(string)) {
                this.BB.BE = n;
                return;
            }
            z.W("int configuration name not recognized:  " + string);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void d(String object, boolean bl) {
            int n = 1;
            int n2 = 1;
            int n3 = 1;
            if ("ga_autoActivityTracking".equals(object)) {
                object = this.BB;
                if (!bl) {
                    n3 = 0;
                }
                object.BF = n3;
                return;
            }
            if ("ga_anonymizeIp".equals(object)) {
                object = this.BB;
                n3 = bl ? n : 0;
                object.BG = n3;
                return;
            }
            if (!"ga_reportUncaughtExceptions".equals(object)) {
                z.W("bool configuration name not recognized:  " + (String)object);
                return;
            }
            object = this.BB;
            n3 = bl ? n2 : 0;
            object.BH = n3;
        }

        @Override
        public /* synthetic */ i dW() {
            return this.eY();
        }

        public ai eY() {
            return this.BB;
        }

        @Override
        public void f(String string, String string2) {
            this.BB.BI.put(string, string2);
        }

        @Override
        public void g(String string, String string2) {
            if ("ga_trackingId".equals(string)) {
                this.BB.BC = string2;
                return;
            }
            if ("ga_sampleFrequency".equals(string)) {
                try {
                    this.BB.BD = Double.parseDouble(string2);
                    return;
                }
                catch (NumberFormatException var1_2) {
                    z.T("Error parsing ga_sampleFrequency value: " + string2);
                    return;
                }
            }
            z.W("string configuration name not recognized:  " + string);
        }
    }

}

