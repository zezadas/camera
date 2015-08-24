/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import java.io.IOException;

@ez
public class gy
extends gw {
    public gy(gv var1, boolean var2);

    protected WebResourceResponse d(Context var1, String var2, String var3) throws IOException;

    @Override
    public WebResourceResponse shouldInterceptRequest(WebView var1, String var2);
}

