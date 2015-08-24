/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import org.json.JSONException;
import org.json.JSONObject;

@ez
public class df {
    private final boolean rb;
    private final boolean rc;
    private final boolean rd;
    private final boolean re;
    private final boolean rf;

    private df(a a) {
        this.rb = a.rb;
        this.rc = a.rc;
        this.rd = a.rd;
        this.re = a.re;
        this.rf = a.rf;
    }

    public JSONObject bK() {
        try {
            JSONObject jSONObject = new JSONObject().put("sms", this.rb).put("tel", this.rc).put("calendar", this.rd).put("storePicture", this.re).put("inlineVideo", this.rf);
            return jSONObject;
        }
        catch (JSONException var1_2) {
            gs.b("Error occured while obtaining the MRAID capabilities.", var1_2);
            return null;
        }
    }

    public static final class a {
        private boolean rb;
        private boolean rc;
        private boolean rd;
        private boolean re;
        private boolean rf;

        public df bL() {
            return new df(this);
        }

        public a i(boolean bl) {
            this.rb = bl;
            return this;
        }

        public a j(boolean bl) {
            this.rc = bl;
            return this;
        }

        public a k(boolean bl) {
            this.rd = bl;
            return this;
        }

        public a l(boolean bl) {
            this.re = bl;
            return this;
        }

        public a m(boolean bl) {
            this.rf = bl;
            return this;
        }
    }

}

