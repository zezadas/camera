/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.google.android.gms.tagmanager.ab;
import com.google.android.gms.tagmanager.ap;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.bo;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class db
implements ab {
    private final String arH;
    private final HttpClient arI;
    private a arJ;
    private final Context arq;

    db(HttpClient httpClient, Context context, a a) {
        this.arq = context.getApplicationContext();
        this.arH = this.a("GoogleTagManager", "4.00", Build.VERSION.RELEASE, db.c(Locale.getDefault()), Build.MODEL, Build.ID);
        this.arI = httpClient;
        this.arJ = a;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private HttpEntityEnclosingRequest a(URL var1_1) {
        try {
            var1_1 = new BasicHttpEntityEnclosingRequest("GET", var1_1.toURI().toString());
        }
        catch (URISyntaxException var2_2) {
            var1_1 = null;
            ** GOTO lbl6
lbl6: // 2 sources:
            bh.W("Exception sending hit: " + var2_3.getClass().getSimpleName());
            bh.W(var2_3.getMessage());
            return var1_1;
        }
        var1_1.addHeader("User-Agent", this.arH);
        return var1_1;
        {
            catch (URISyntaxException var2_4) {}
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void a(HttpEntityEnclosingRequest object) {
        int n;
        StringBuffer stringBuffer = new StringBuffer();
        Object object2 = object.getAllHeaders();
        int n2 = object2.length;
        for (n = 0; n < n2; ++n) {
            stringBuffer.append(object2[n].toString()).append("\n");
        }
        stringBuffer.append(object.getRequestLine().toString()).append("\n");
        if (object.getEntity() != null) {
            try {
                object = object.getEntity().getContent();
                if (object != null && (n = object.available()) > 0) {
                    object2 = new byte[n];
                    object.read((byte[])object2);
                    stringBuffer.append("POST:\n");
                    stringBuffer.append(new String((byte[])object2)).append("\n");
                }
            }
            catch (IOException var1_2) {
                bh.V("Error Writing hit to log...");
            }
        }
        bh.V(stringBuffer.toString());
    }

    /*
     * Enabled aggressive block sorting
     */
    static String c(Locale locale) {
        if (locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(locale.getLanguage().toLowerCase());
        if (locale.getCountry() != null && locale.getCountry().length() != 0) {
            stringBuilder.append("-").append(locale.getCountry().toLowerCase());
        }
        return stringBuilder.toString();
    }

    String a(String string, String string2, String string3, String string4, String string5, String string6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", string, string2, string3, string4, string5, string6);
    }

    URL d(ap object) {
        object = object.ou();
        try {
            object = new URL((String)object);
            return object;
        }
        catch (MalformedURLException var1_2) {
            bh.T("Error trying to parse the GTM url.");
            return null;
        }
    }

    @Override
    public boolean dX() {
        NetworkInfo networkInfo = ((ConnectivityManager)this.arq.getSystemService("connectivity")).getActiveNetworkInfo();
        if (!(networkInfo != null && networkInfo.isConnected())) {
            bh.V("...no network connectivity");
            return false;
        }
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public void j(List<ap> var1_1) {
        var6_2 = Math.min(var1_1.size(), 40);
        var2_3 = true;
        for (var5_4 = 0; var5_4 < var6_2; ++var5_4) {
            var8_8 = var1_1.get(var5_4);
            var10_15 = this.d(var8_8);
            if (var10_15 == null) {
                bh.W("No destination: discarding hit.");
                this.arJ.b(var8_8);
                continue;
            }
            var9_10 = this.a((URL)var10_15);
            if (var9_10 == null) {
                this.arJ.b(var8_8);
                continue;
            }
            var10_15 = new HttpHost(var10_15.getHost(), var10_15.getPort(), var10_15.getProtocol());
            var9_10.addHeader("Host", var10_15.toHostString());
            this.a(var9_10);
            var3_5 = var2_3;
            if (!var2_3) ** GOTO lbl23
            var4_6 = var2_3;
            try {
                bo.A(this.arq);
                var3_5 = false;
lbl23: // 2 sources:
                var4_6 = var3_5;
                var2_3 = var3_5;
                var9_11 = this.arI.execute((HttpHost)var10_15, var9_10);
                var4_6 = var3_5;
                var2_3 = var3_5;
                var7_7 = var9_11.getStatusLine().getStatusCode();
                var4_6 = var3_5;
                var2_3 = var3_5;
                var10_15 = var9_11.getEntity();
                if (var10_15 != null) {
                    var4_6 = var3_5;
                    var2_3 = var3_5;
                    var10_15.consumeContent();
                }
                if (var7_7 != 200) {
                    var4_6 = var3_5;
                    var2_3 = var3_5;
                    bh.W("Bad response: " + var9_11.getStatusLine().getStatusCode());
                    var4_6 = var3_5;
                    var2_3 = var3_5;
                    this.arJ.c(var8_8);
                } else {
                    var4_6 = var3_5;
                    var2_3 = var3_5;
                    this.arJ.a(var8_8);
                }
            }
            catch (ClientProtocolException var9_12) {
                bh.W("ClientProtocolException sending hit; discarding hit...");
                this.arJ.b(var8_8);
                var2_3 = var4_6;
                continue;
            }
            catch (IOException var9_13) {
                bh.W("Exception sending hit: " + var9_13.getClass().getSimpleName());
                bh.W(var9_13.getMessage());
                this.arJ.c(var8_8);
                continue;
            }
            var2_3 = var3_5;
        }
    }

    public static interface a {
        public void a(ap var1);

        public void b(ap var1);

        public void c(ap var1);
    }

}

