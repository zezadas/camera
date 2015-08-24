/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.aa;
import com.google.android.gms.analytics.m;
import com.google.android.gms.analytics.w;
import java.net.URL;
import java.util.List;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.HttpClient;

/*
 * Exception performing whole class analysis.
 */
class ag
implements m {
    private final HttpClient Bj;
    private URL Bk;
    private final Context mContext;
    private final String vW;
    private GoogleAnalytics yu;

    ag(HttpClient var1, Context var2);

    ag(HttpClient var1, GoogleAnalytics var2, Context var3);

    private void a(aa var1, URL var2, boolean var3);

    private void a(HttpEntityEnclosingRequest var1);

    private HttpEntityEnclosingRequest h(String var1, String var2);

    @Override
    public int a(List<w> var1, aa var2, boolean var3);

    String a(String var1, String var2, String var3, String var4, String var5, String var6);

    URL a(w var1);

    @Override
    public void af(String var1);

    @Override
    public boolean dX();

    boolean eS();
}

