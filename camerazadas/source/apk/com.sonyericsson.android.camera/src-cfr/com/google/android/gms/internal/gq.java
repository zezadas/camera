/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gg;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

@ez
public final class gq
extends gg {
    private final Context mContext;
    private final String mv;
    private final String uR;
    private String vW = null;

    public gq(Context context, String string, String string2) {
        this.mContext = context;
        this.mv = string;
        this.uR = string2;
    }

    public gq(Context context, String string, String string2, String string3) {
        this.mContext = context;
        this.mv = string;
        this.uR = string2;
        this.vW = string3;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void co() {
        HttpURLConnection httpURLConnection;
        block11 : {
            gs.V("Pinging URL: " + this.uR);
            httpURLConnection = (HttpURLConnection)new URL(this.uR).openConnection();
            try {
                int n;
                if (this.vW == null) {
                    gj.a(this.mContext, this.mv, true, httpURLConnection);
                } else {
                    gj.a(this.mContext, this.mv, true, httpURLConnection, this.vW);
                }
                if ((n = httpURLConnection.getResponseCode()) >= 200 && n < 300) break block11;
                gs.W("Received non-success response code " + n + " from pinging URL: " + this.uR);
            }
            catch (Throwable var3_5) {
                try {
                    httpURLConnection.disconnect();
                    throw var3_5;
                }
                catch (IndexOutOfBoundsException var2_2) {
                    gs.W("Error while parsing ping URL: " + this.uR + ". " + var2_2.getMessage());
                    return;
                }
                catch (IOException var2_3) {
                    gs.W("Error while pinging URL: " + this.uR + ". " + var2_3.getMessage());
                    return;
                }
            }
        }
        httpURLConnection.disconnect();
    }

    @Override
    public void onStop() {
    }
}

