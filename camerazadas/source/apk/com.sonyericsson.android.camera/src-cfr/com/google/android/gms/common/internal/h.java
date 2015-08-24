/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;

public class h {
    private static final Uri Md = Uri.parse("http://plus.google.com/");
    private static final Uri Me = Md.buildUpon().appendPath("circles").appendPath("find").build();

    public static Intent aW(String object) {
        object = Uri.fromParts("package", (String)object, null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData((Uri)object);
        return intent;
    }

    private static Uri aX(String string) {
        return Uri.parse("market://details").buildUpon().appendQueryParameter("id", string).build();
    }

    public static Intent aY(String string) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(h.aX(string));
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }

    public static Intent gZ() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}

