/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.analytics.aj;
import com.google.android.gms.analytics.h;
import com.google.android.gms.analytics.l;
import com.google.android.gms.analytics.z;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

class a
implements l {
    private static a xA;
    private static Object xz;
    private Context mContext;
    private AdvertisingIdClient.Info xB;
    private long xC;
    private String xD;
    private boolean xE = false;
    private Object xF = new Object();

    static {
        xz = new Object();
    }

    a(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean a(AdvertisingIdClient.Info object, AdvertisingIdClient.Info object2) {
        Object var4_3 = null;
        object2 = object2 == null ? null : object2.getId();
        if (TextUtils.isEmpty((CharSequence)object2)) {
            return true;
        }
        h.y(this.mContext);
        h h = h.dQ();
        String string = h.getValue("&cid");
        Object object3 = this.xF;
        synchronized (object3) {
            if (!this.xE) {
                this.xD = a.x(this.mContext);
                this.xE = true;
            } else if (TextUtils.isEmpty((CharSequence)this.xD)) {
                object = object == null ? var4_3 : object.getId();
                if (object == null) {
                    return this.ab((String)object2 + string);
                }
                this.xD = a.aa((String)object + string);
            }
            if (TextUtils.isEmpty((CharSequence)(object = a.aa((String)object2 + string)))) {
                return false;
            }
            if (object.equals(this.xD)) {
                return true;
            }
            if (!TextUtils.isEmpty((CharSequence)this.xD)) {
                z.V("Resetting the client id because Advertising Id changed.");
                object = h.dR();
                z.V("New client Id: " + (String)object);
                return this.ab((String)object2 + (String)object);
            } else {
                object = string;
            }
            return this.ab((String)object2 + (String)object);
        }
    }

    static String aa(String string) {
        MessageDigest messageDigest = aj.ap("MD5");
        if (messageDigest == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest(string.getBytes())));
    }

    private boolean ab(String string) {
        try {
            string = a.aa(string);
            z.V("Storing hashed adid.");
            FileOutputStream fileOutputStream = this.mContext.openFileOutput("gaClientIdData", 0);
            fileOutputStream.write(string.getBytes());
            fileOutputStream.close();
            this.xD = string;
            return true;
        }
        catch (FileNotFoundException var1_2) {
            z.T("Error creating hash file.");
            return false;
        }
        catch (IOException var1_3) {
            z.T("Error writing to hash file.");
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static l w(Context context) {
        if (xA == null) {
            Object object = xz;
            synchronized (object) {
                if (xA == null) {
                    xA = new a(context);
                }
            }
        }
        return xA;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    static String x(Context var0) {
        var2_3 = null;
        var4_5 = var0.openFileInput("gaClientIdData");
        var3_6 = new byte[128];
        var1_8 = var4_5.read((byte[])var3_6, 0, 128);
        if (var4_5.available() > 0) {
            z.W("Hash file seems corrupted, deleting it.");
            var4_5.close();
            var0.deleteFile("gaClientIdData");
            return null;
        }
        if (var1_8 <= 0) {
            z.U("Hash file is empty.");
            var4_5.close();
            return null;
        }
        var3_6 = new String((byte[])var3_6, 0, var1_8);
        var4_5.close();
        return var3_6;
        catch (IOException var3_7) {}
        ** GOTO lbl-1000
        catch (IOException var2_4) {
            var2_3 = var3_6;
        }
lbl-1000: // 2 sources:
        {
            z.W("Error reading Hash file, deleting it.");
            var0.deleteFile("gaClientIdData");
            return var2_3;
        }
        catch (FileNotFoundException var0_1) {
            return var3_6;
        }
        catch (FileNotFoundException var0_2) {
            return null;
        }
    }

    AdvertisingIdClient.Info dG() {
        try {
            AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(this.mContext);
            return info;
        }
        catch (IllegalStateException var1_2) {
            z.W("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        }
        catch (GooglePlayServicesRepairableException var1_3) {
            z.W("GooglePlayServicesRepairableException getting Ad Id Info");
            return null;
        }
        catch (IOException var1_4) {
            z.W("IOException getting Ad Id Info");
            return null;
        }
        catch (GooglePlayServicesNotAvailableException var1_5) {
            z.W("GooglePlayServicesNotAvailableException getting Ad Id Info");
            return null;
        }
        catch (Throwable var1_6) {
            z.W("Unknown exception. Could not get the ad Id.");
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public String getValue(String string) {
        long l = System.currentTimeMillis();
        if (l - this.xC > 1000) {
            AdvertisingIdClient.Info info = this.dG();
            this.xB = this.a(this.xB, info) ? info : new AdvertisingIdClient.Info("", false);
            this.xC = l;
        }
        if (this.xB != null) {
            if ("&adid".equals(string)) {
                return this.xB.getId();
            }
            if ("&ate".equals(string)) {
                if (this.xB.isLimitAdTrackingEnabled()) {
                    return "0";
                }
                return "1";
            }
        }
        return null;
    }
}

