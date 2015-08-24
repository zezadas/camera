/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import com.google.android.gms.analytics.i;
import com.google.android.gms.analytics.z;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

abstract class j<T extends i> {
    Context mContext;
    a<T> xV;

    public j(Context context, a<T> a) {
        this.mContext = context;
        this.xV = a;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private T a(XmlResourceParser var1_1) {
        block19 : {
            try {
                var1_1.next();
                var2_4 = var1_1.getEventType();
lbl4: // 2 sources:
                if (var2_4 == 1) return this.xV.dW();
                if (var1_1.getEventType() != 2) break block19;
                var4_6 = var1_1.getName().toLowerCase();
                if (var4_6.equals("screenname")) {
                    var4_6 = var1_1.getAttributeValue(null, "name");
                    var5_7 = var1_1.nextText().trim();
                    if (!(TextUtils.isEmpty((CharSequence)var4_6) || TextUtils.isEmpty((CharSequence)var5_7))) {
                        this.xV.f(var4_6, var5_7);
                    } else {
                        ** GOTO lbl47
                    }
                    break block19;
                }
                if (var4_6.equals("string")) {
                    var4_6 = var1_1.getAttributeValue(null, "name");
                    var5_7 = var1_1.nextText().trim();
                    if (!(TextUtils.isEmpty((CharSequence)var4_6) || var5_7 == null)) {
                        this.xV.g(var4_6, var5_7);
                    } else {
                        ** GOTO lbl47
                    }
                    break block19;
                }
                if (var4_6.equals("bool")) {
                    var5_7 = var1_1.getAttributeValue(null, "name");
                    var4_6 = var1_1.nextText().trim();
                    if (!(TextUtils.isEmpty((CharSequence)var5_7) || (var3_5 = TextUtils.isEmpty((CharSequence)var4_6)))) {
                        try {
                            var3_5 = Boolean.parseBoolean(var4_6);
                            this.xV.d(var5_7, var3_5);
                        }
                        catch (NumberFormatException var5_8) {
                            z.T("Error parsing bool configuration value: " + var4_6);
                        }
                    } else {
                        ** GOTO lbl47
                    }
                    break block19;
                }
                if (!var4_6.equals("integer")) break block19;
                var5_7 = var1_1.getAttributeValue(null, "name");
                var4_6 = var1_1.nextText().trim();
                if (TextUtils.isEmpty((CharSequence)var5_7) || (var3_5 = TextUtils.isEmpty((CharSequence)var4_6))) break block19;
                ** try [egrp 4[TRYBLOCK] [19 : 380->401)] { 
lbl35: // 1 sources:
            }
            catch (XmlPullParserException var1_2) {
                z.T("Error parsing tracker configuration file: " + var1_2);
            }
            return this.xV.dW();
            catch (IOException var1_3) {
                z.T("Error parsing tracker configuration file: " + var1_3);
                return this.xV.dW();
            }
            {
                var2_4 = Integer.parseInt(var4_6);
                this.xV.c(var5_7, var2_4);
            }
lbl45: // 1 sources:
            catch (NumberFormatException var5_9) {
                z.T("Error parsing int configuration value: " + var4_6);
            }
        }
        var2_4 = var1_1.next();
        ** GOTO lbl4
    }

    public T w(int n) {
        T t;
        try {
            t = this.a(this.mContext.getResources().getXml(n));
        }
        catch (Resources.NotFoundException var2_3) {
            z.W("inflate() called with unknown resourceId: " + var2_3);
            return null;
        }
        return t;
    }

    public static interface a<U extends i> {
        public void c(String var1, int var2);

        public void d(String var1, boolean var2);

        public U dW();

        public void f(String var1, String var2);

        public void g(String var1, String var2);
    }

}

