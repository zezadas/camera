/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.l;
import com.google.android.gms.analytics.z;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

class h
implements l {
    private static h xQ;
    private static final Object xz;
    private final Context mContext;
    private String xR;
    private boolean xS = false;
    private final Object xT = new Object();

    static {
        xz = new Object();
    }

    protected h(Context context) {
        this.mContext = context;
        this.dU();
    }

    private boolean ad(String string) {
        try {
            z.V("Storing clientId.");
            FileOutputStream fileOutputStream = this.mContext.openFileOutput("gaClientId", 0);
            fileOutputStream.write(string.getBytes());
            fileOutputStream.close();
            return true;
        }
        catch (FileNotFoundException var1_2) {
            z.T("Error creating clientId file.");
            return false;
        }
        catch (IOException var1_3) {
            z.T("Error writing to clientId file.");
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static h dQ() {
        Object object = xz;
        synchronized (object) {
            return xQ;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private String dS() {
        if (!this.xS) {
            Object object = this.xT;
            synchronized (object) {
                if (!this.xS) {
                    z.V("Waiting for clientId to load");
                    do {
                        try {
                            this.xT.wait();
                            continue;
                        }
                        catch (InterruptedException var2_2) {
                            z.T("Exception while waiting for clientId: " + var2_2);
                        }
                    } while (!this.xS);
                }
            }
        }
        z.V("Loaded clientId");
        return this.xR;
    }

    private void dU() {
        new Thread("client_id_fetcher"){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                Object object = h.this.xT;
                synchronized (object) {
                    h.this.xR = h.this.dV();
                    h.this.xS = true;
                    h.this.xT.notifyAll();
                    return;
                }
            }
        }.start();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void y(Context context) {
        Object object = xz;
        synchronized (object) {
            if (xQ == null) {
                xQ = new h(context);
            }
            return;
        }
    }

    public boolean ac(String string) {
        return "&cid".equals(string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    String dR() {
        Object object = this.xT;
        synchronized (object) {
            this.xR = this.dT();
            return this.xR;
        }
    }

    protected String dT() {
        String string;
        String string2 = string = UUID.randomUUID().toString().toLowerCase();
        try {
            if (!this.ad(string)) {
                string2 = "0";
            }
            return string2;
        }
        catch (Exception var1_3) {
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    String dV() {
        block9 : {
            var4_1 = null;
            var3_2 = null;
            var5_5 = this.mContext.openFileInput("gaClientId");
            var2_6 = new byte[128];
            var1_9 = var5_5.read((byte[])var2_6, 0, 128);
            if (var5_5.available() > 0) {
                z.T("clientId file seems corrupted, deleting it.");
                var5_5.close();
                this.mContext.deleteFile("gaClientId");
                var2_6 = var3_2;
                break block9;
            }
            if (var1_9 <= 0) {
                z.T("clientId file seems empty, deleting it.");
                var5_5.close();
                this.mContext.deleteFile("gaClientId");
                var2_6 = var3_2;
                break block9;
            }
            var2_6 = new String((byte[])var2_6, 0, var1_9);
            var5_5.close();
            z.V("Loaded client id from disk.");
            break block9;
            catch (IOException var2_7) {
                var2_6 = var4_1;
                ** GOTO lbl28
                catch (IOException var3_3) {}
lbl28: // 2 sources:
                z.T("Error reading clientId file, deleting it.");
                this.mContext.deleteFile("gaClientId");
            }
            catch (FileNotFoundException var3_4) {
                break block9;
            }
            catch (FileNotFoundException var2_8) {
                var2_6 = var3_2;
            }
        }
        var3_2 = var2_6;
        if (var2_6 != null) return var3_2;
        return this.dT();
    }

    @Override
    public String getValue(String string) {
        if ("&cid".equals(string)) {
            return this.dS();
        }
        return null;
    }

}

