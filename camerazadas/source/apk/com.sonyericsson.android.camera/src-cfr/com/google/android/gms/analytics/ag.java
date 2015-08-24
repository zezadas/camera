/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.aa;
import com.google.android.gms.analytics.aj;
import com.google.android.gms.analytics.m;
import com.google.android.gms.analytics.p;
import com.google.android.gms.analytics.w;
import com.google.android.gms.analytics.x;
import com.google.android.gms.analytics.z;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
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
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class ag
implements m {
    private final HttpClient Bj;
    private URL Bk;
    private final Context mContext;
    private final String vW;
    private GoogleAnalytics yu;

    ag(HttpClient httpClient, Context context) {
        this(httpClient, GoogleAnalytics.getInstance(context), context);
    }

    ag(HttpClient httpClient, GoogleAnalytics googleAnalytics, Context context) {
        this.mContext = context.getApplicationContext();
        this.vW = this.a("GoogleAnalytics", "3.0", Build.VERSION.RELEASE, aj.a(Locale.getDefault()), Build.MODEL, Build.ID);
        this.Bj = httpClient;
        this.yu = googleAnalytics;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private void a(aa object, URL object2, boolean bl) {
        if (TextUtils.isEmpty((CharSequence)object.eL())) return;
        if (!this.eS()) {
            return;
        }
        if (object2 == null) {
            object2 = this.Bk != null ? this.Bk : new URL("https://ssl.google-analytics.com/collect");
        }
        HttpHost httpHost = new HttpHost(object2.getHost(), object2.getPort(), object2.getProtocol());
        try {
            if ((object = this.h(object.eL(), object2.getPath())) == null) return;
            object.addHeader("Host", httpHost.toHostString());
            if (z.eK()) {
                this.a((HttpEntityEnclosingRequest)object);
            }
            if (bl) {
                p.A(this.mContext);
            }
            object = this.Bj.execute(httpHost, (HttpRequest)object);
            int n = object.getStatusLine().getStatusCode();
            object2 = object.getEntity();
            if (object2 != null) {
                object2.consumeContent();
            }
            if (n == 200) return;
            z.W("Bad response: " + object.getStatusLine().getStatusCode());
            return;
        }
        catch (ClientProtocolException var1_2) {
            z.W("ClientProtocolException sending monitoring hit.");
            return;
        }
        catch (MalformedURLException malformedURLException) {
            return;
        }
        catch (IOException iOException) {
            z.W("Exception sending monitoring hit: " + iOException.getClass().getSimpleName());
            z.W(iOException.getMessage());
            return;
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
                z.V("Error Writing hit to log...");
            }
        }
        z.V(stringBuffer.toString());
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private HttpEntityEnclosingRequest h(String object, String object2) {
        if (TextUtils.isEmpty((CharSequence)object)) {
            z.W("Empty hit, discarding.");
            return null;
        }
        String string = (String)object2 + "?" + (String)object;
        if (string.length() < 2036) {
            object = new BasicHttpEntityEnclosingRequest("GET", string);
        } else {
            object2 = new BasicHttpEntityEnclosingRequest("POST", (String)object2);
            object2.setEntity(new StringEntity((String)object));
            object = object2;
        }
        object.addHeader("User-Agent", this.vW);
        return object;
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            z.W("Encoding error, discarding hit");
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    public int a(List<w> var1_1, aa var2_3, boolean var3_4) {
        var7_5 = 0;
        var8_6 = Math.min(var1_1.size(), 40);
        var2_3.e("_hr", var1_1.size());
        var4_7 = 0;
        var13_8 = null;
        var10_9 = true;
        var6_10 = 0;
        do {
            if (var6_10 >= var8_6) {
                var2_3.e("_hd", var4_7);
                var2_3.e("_hs", var7_5);
                if (var3_4 == false) return var7_5;
                this.a(var2_3, (URL)var13_8, var10_9);
                return var7_5;
            }
            var17_19 = var1_1.get(var6_10);
            var14_15 = this.a(var17_19);
            if (var14_15 != null) ** GOTO lbl25
            if (z.eK()) {
                z.W("No destination: discarding hit: " + var17_19.eF());
            } else {
                z.W("No destination: discarding hit.");
            }
            ++var4_7;
            var5_11 = var7_5 + 1;
            ** GOTO lbl81
lbl25: // 1 sources:
            var15_16 = new HttpHost(var14_15.getHost(), var14_15.getPort(), var14_15.getProtocol());
            var16_18 = var14_15.getPath();
            var13_8 = TextUtils.isEmpty((CharSequence)var17_19.eF()) != false ? "" : x.a(var17_19, System.currentTimeMillis());
            if ((var16_18 = this.h((String)var13_8, (String)var16_18)) != null) ** GOTO lbl33
            ++var4_7;
            var5_11 = var7_5 + 1;
            var13_8 = var14_15;
            ** GOTO lbl81
lbl33: // 1 sources:
            var16_18.addHeader("Host", var15_16.toHostString());
            if (z.eK()) {
                this.a((HttpEntityEnclosingRequest)var16_18);
            }
            if (var13_8.length() <= 8192) ** GOTO lbl40
            z.W("Hit too long (> 8192 bytes)--not sent");
            var5_11 = var4_7 + 1;
            ** GOTO lbl77
lbl40: // 1 sources:
            if (!this.yu.isDryRunEnabled()) ** GOTO lbl44
            z.U("Dry run enabled. Hit not actually sent.");
            var5_11 = var4_7;
            ** GOTO lbl77
lbl44: // 1 sources:
            var11_13 = var10_9;
            if (!var10_9) ** GOTO lbl50
            var12_14 = var10_9;
            try {
                p.A(this.mContext);
                var11_13 = false;
lbl50: // 2 sources:
                var12_14 = var11_13;
                var10_9 = var11_13;
                var15_16 = this.Bj.execute((HttpHost)var15_16, (HttpRequest)var16_18);
                var12_14 = var11_13;
                var10_9 = var11_13;
                var9_12 = var15_16.getStatusLine().getStatusCode();
                var12_14 = var11_13;
                var10_9 = var11_13;
                var16_18 = var15_16.getEntity();
                if (var16_18 != null) {
                    var12_14 = var11_13;
                    var10_9 = var11_13;
                    var16_18.consumeContent();
                }
                var10_9 = var11_13;
                var5_11 = var4_7;
                if (var9_12 != 200) {
                    var12_14 = var11_13;
                    var10_9 = var11_13;
                    z.W("Bad response: " + var15_16.getStatusLine().getStatusCode());
                    var10_9 = var11_13;
                    var5_11 = var4_7;
                }
            }
            catch (ClientProtocolException var15_17) {
                z.W("ClientProtocolException sending hit; discarding hit...");
                var2_3.e("_hd", var4_7);
                var10_9 = var12_14;
                var5_11 = var4_7;
            }
lbl77: // 6 sources:
            var2_3.e("_td", var13_8.getBytes().length);
            var13_8 = var14_15;
            var4_7 = var5_11;
            var5_11 = ++var7_5;
lbl81: // 3 sources:
            ++var6_10;
            var7_5 = var5_11;
        } while (true);
        catch (IOException var1_2) {
            z.W("Exception sending hit: " + var1_2.getClass().getSimpleName());
            z.W(var1_2.getMessage());
            var2_3.e("_de", 1);
            var2_3.e("_hd", var4_7);
            var2_3.e("_hs", var7_5);
            this.a(var2_3, var14_15, var10_9);
            return var7_5;
        }
    }

    String a(String string, String string2, String string3, String string4, String string5, String string6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", string, string2, string3, string4, string5, string6);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    URL a(w object) {
        if (this.Bk != null) {
            return this.Bk;
        }
        object = object.eI();
        try {
            object = "http:".equals(object) ? "http://www.google-analytics.com/collect" : "https://ssl.google-analytics.com/collect";
            return new URL((String)object);
        }
        catch (MalformedURLException var1_2) {
            z.T("Error trying to parse the hardcoded host url. This really shouldn't happen.");
            return null;
        }
    }

    @Override
    public void af(String string) {
        try {
            this.Bk = new URL(string);
            return;
        }
        catch (MalformedURLException var1_2) {
            this.Bk = null;
            return;
        }
    }

    @Override
    public boolean dX() {
        NetworkInfo networkInfo = ((ConnectivityManager)this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (!(networkInfo != null && networkInfo.isConnected())) {
            z.V("...no network connectivity");
            return false;
        }
        return true;
    }

    boolean eS() {
        if (Math.random() * 100.0 <= 1.0) {
            return true;
        }
        return false;
    }
}

