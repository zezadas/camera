/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fc;
import com.google.android.gms.internal.gv;

/*
 * Exception performing whole class analysis.
 */
@ez
public class ha
extends WebViewClient {
    private final gv md;
    private final String xc;
    private boolean xd;
    private final fc xe;

    public ha(fc var1, gv var2, String var3);

    private String Z(String var1);

    protected boolean Y(String var1);

    @Override
    public void onLoadResource(WebView var1, String var2);

    @Override
    public void onPageFinished(WebView var1, String var2);

    @Override
    public boolean shouldOverrideUrlLoading(WebView var1, String var2);
}

