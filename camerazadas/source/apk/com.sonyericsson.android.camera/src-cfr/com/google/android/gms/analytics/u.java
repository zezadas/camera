/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.i;
import com.google.android.gms.analytics.j;
import com.google.android.gms.analytics.v;
import com.google.android.gms.analytics.z;

class u
extends j<v> {
    public u(Context context) {
        super(context, new a());
    }

    private static class a
    implements j.a<v> {
        private final v Ar = new v();

        @Override
        public void c(String string, int n) {
            if ("ga_dispatchPeriod".equals(string)) {
                this.Ar.At = n;
                return;
            }
            z.W("int configuration name not recognized:  " + string);
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void d(String object, boolean bl) {
            if (!"ga_dryRun".equals(object)) {
                z.W("bool configuration name not recognized:  " + (String)object);
                return;
            }
            object = this.Ar;
            int n = bl ? 1 : 0;
            object.Au = n;
        }

        @Override
        public /* synthetic */ i dW() {
            return this.es();
        }

        public v es() {
            return this.Ar;
        }

        @Override
        public void f(String string, String string2) {
        }

        @Override
        public void g(String string, String string2) {
            if ("ga_appName".equals(string)) {
                this.Ar.xL = string2;
                return;
            }
            if ("ga_appVersion".equals(string)) {
                this.Ar.xM = string2;
                return;
            }
            if ("ga_logLevel".equals(string)) {
                this.Ar.As = string2;
                return;
            }
            z.W("string configuration name not recognized:  " + string);
        }
    }

}

