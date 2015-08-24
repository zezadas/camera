/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.e;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.n;
import com.google.android.gms.internal.p;
import java.io.IOException;

public class j
extends i {
    protected j(Context context, m m, n n) {
        super(context, m, n);
    }

    public static j a(String string, Context context) {
        e e = new e();
        j.a(string, context, e);
        return new j(context, e, new p(239));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void b(Context context) {
        super.b(context);
        try {
            try {
                Object object = this.h(context);
                long l = object.isLimitAdTrackingEnabled() ? 1 : 0;
                this.a(28, l);
                object = object.getId();
                if (object != null) {
                    this.a(26, 5);
                    this.a(24, (String)object);
                }
                return;
            }
            catch (GooglePlayServicesNotAvailableException var4_5) {
                this.a(24, j.d(context));
                return;
            }
        }
        catch (IOException var1_2) {
            return;
        }
        catch (i.a var1_3) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    a h(Context object) throws IOException, GooglePlayServicesNotAvailableException {
        AdvertisingIdClient.Info info;
        int n = 0;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo((Context)object);
        }
        catch (GooglePlayServicesRepairableException var1_2) {
            throw new IOException(var1_2);
        }
        catch (SecurityException var1_3) {
            throw new IOException(var1_3);
        }
        object = info.getId();
        if (object == null) return new a((String)object, info.isLimitAdTrackingEnabled());
        if (!object.matches("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$")) return new a((String)object, info.isLimitAdTrackingEnabled());
        byte[] arrby = new byte[16];
        int n2 = 0;
        do {
            int n3;
            block7 : {
                if (n >= object.length()) {
                    object = this.ky.a(arrby, true);
                    return new a((String)object, info.isLimitAdTrackingEnabled());
                }
                if (n != 8 && n != 13 && n != 18) {
                    n3 = n;
                    if (n != 23) break block7;
                }
                n3 = n + 1;
            }
            arrby[n2] = (byte)((Character.digit(object.charAt(n3), 16) << 4) + Character.digit(object.charAt(n3 + 1), 16));
            ++n2;
            n = n3 + 2;
        } while (true);
    }

    class a {
        private String kO;
        private boolean kP;

        public a(String string, boolean bl) {
            this.kO = string;
            this.kP = bl;
        }

        public String getId() {
            return this.kO;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.kP;
        }
    }

}

