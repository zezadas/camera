/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public final class dh {
    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static boolean a(Context context, dj dj, dq dq) {
        if (dj == null) {
            gs.W("No intent data for launcher overlay.");
            return false;
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty((CharSequence)dj.rq)) {
            gs.W("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty((CharSequence)dj.mimeType)) {
            intent.setDataAndType(Uri.parse(dj.rq), dj.mimeType);
        } else {
            intent.setData(Uri.parse(dj.rq));
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty((CharSequence)dj.packageName)) {
            intent.setPackage(dj.packageName);
        }
        if (!TextUtils.isEmpty((CharSequence)dj.rr)) {
            String[] arrstring = dj.rr.split("/", 2);
            if (arrstring.length < 2) {
                gs.W("Could not parse component name from open GMSG: " + dj.rr);
                return false;
            }
            intent.setClassName(arrstring[0], arrstring[1]);
        }
        try {
            gs.V("Launching an intent: " + intent);
            context.startActivity(intent);
            dq.ab();
            return true;
        }
        catch (ActivityNotFoundException var0_1) {
            gs.W(var0_1.getMessage());
            return false;
        }
    }
}

