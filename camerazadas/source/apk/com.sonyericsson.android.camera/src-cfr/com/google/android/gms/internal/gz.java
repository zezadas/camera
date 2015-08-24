/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.view.View;
import android.webkit.WebChromeClient;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gx;

@ez
public final class gz
extends gx {
    public gz(gv gv) {
        super(gv);
    }

    @Override
    public void onShowCustomView(View view, int n, WebChromeClient.CustomViewCallback customViewCallback) {
        this.a(view, n, customViewCallback);
    }
}

