/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fc;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import java.net.URI;
import java.net.URISyntaxException;

@ez
public class ha
extends WebViewClient {
    private final gv md;
    private final String xc;
    private boolean xd;
    private final fc xe;

    public ha(fc fc, gv gv, String string) {
        this.xc = this.Z(string);
        this.xd = false;
        this.md = gv;
        this.xe = fc;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private String Z(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            return string;
        }
        try {
            if (!string.endsWith("/")) return string;
            return string.substring(0, string.length() - 1);
        }
        catch (IndexOutOfBoundsException var2_3) {
            gs.T(var2_3.getMessage());
            return string;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    protected boolean Y(String string) {
        if (TextUtils.isEmpty((CharSequence)(string = this.Z(string)))) {
            return false;
        }
        try {
            Object object = new URI(string);
            if ("passback".equals(object.getScheme())) {
                gs.S("Passback received");
                this.xe.cz();
                return true;
            }
            if (TextUtils.isEmpty((CharSequence)this.xc)) return false;
            Object object2 = new URI(this.xc);
            string = object2.getHost();
            String string2 = object.getHost();
            object2 = object2.getPath();
            object = object.getPath();
            if (!n.equal(string, string2)) return false;
            if (!n.equal(object2, object)) return false;
            gs.S("Passback received");
            this.xe.cz();
            return true;
        }
        catch (URISyntaxException var1_2) {
            gs.T(var1_2.getMessage());
            return false;
        }
    }

    @Override
    public void onLoadResource(WebView webView, String string) {
        gs.S("JavascriptAdWebViewClient::onLoadResource: " + string);
        if (!this.Y(string)) {
            this.md.du().onLoadResource(this.md, string);
        }
    }

    @Override
    public void onPageFinished(WebView webView, String string) {
        gs.S("JavascriptAdWebViewClient::onPageFinished: " + string);
        if (!this.xd) {
            this.xe.cy();
            this.xd = true;
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String string) {
        gs.S("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + string);
        if (this.Y(string)) {
            gs.S("shouldOverrideUrlLoading: received passback url");
            return true;
        }
        return this.md.du().shouldOverrideUrlLoading(this.md, string);
    }
}

