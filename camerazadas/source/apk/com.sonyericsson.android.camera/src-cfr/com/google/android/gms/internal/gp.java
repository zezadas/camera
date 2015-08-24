/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gn;

@ez
public final class gp {
    public static void a(Context context, WebSettings webSettings) {
        gn.a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
    }

    public static String getDefaultUserAgent(Context context) {
        return WebSettings.getDefaultUserAgent(context);
    }
}

