/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

class cz {
    static void a(Context object, String string, String string2, String string3) {
        object = object.getSharedPreferences(string, 0).edit();
        object.putString(string2, string3);
        cz.a((SharedPreferences.Editor)object);
    }

    static void a(final SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
            return;
        }
        new Thread(new Runnable(){

            @Override
            public void run() {
                editor.commit();
            }
        }).start();
    }

}

