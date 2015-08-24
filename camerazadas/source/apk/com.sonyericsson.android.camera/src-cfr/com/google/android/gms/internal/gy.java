/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

@ez
public class gy
extends gw {
    public gy(gv gv, boolean bl) {
        super(gv, bl);
    }

    protected WebResourceResponse d(Context object, String string, String object2) throws IOException {
        object2 = (HttpURLConnection)new URL((String)object2).openConnection();
        try {
            gj.a((Context)object, string, true, (HttpURLConnection)object2, true);
            object2.addRequestProperty("Cache-Control", "max-stale=3600");
            object2.connect();
            object = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(gj.a(new InputStreamReader(object2.getInputStream())).getBytes("UTF-8")));
            return object;
        }
        finally {
            object2.disconnect();
        }
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView webView, String string) {
        try {
            if (!"mraid.js".equalsIgnoreCase(new File(string).getName())) {
                return super.shouldInterceptRequest(webView, string);
            }
            if (!(webView instanceof gv)) {
                gs.W("Tried to intercept request from a WebView that wasn't an AdWebView.");
                return super.shouldInterceptRequest(webView, string);
            }
            Object object = (gv)webView;
            object.du().bX();
            if (object.Y().og) {
                gs.V("shouldInterceptRequest(https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js)");
                return this.d(object.getContext(), this.md.dx().wD, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
            }
            if (object.dy()) {
                gs.V("shouldInterceptRequest(https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js)");
                return this.d(object.getContext(), this.md.dx().wD, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
            }
            gs.V("shouldInterceptRequest(https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js)");
            object = this.d(object.getContext(), this.md.dx().wD, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
            return object;
        }
        catch (IOException var3_4) {
            gs.W("Could not fetch MRAID JS. " + var3_4.getMessage());
            return super.shouldInterceptRequest(webView, string);
        }
    }
}

