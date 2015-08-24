/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.internal.av;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class gc {
    private final Object mw = new Object();
    private final String vL;
    private int vX = 0;
    private long vY = -1;
    private long vZ = -1;
    private int wa = 0;
    private int wb = -1;

    public gc(String string) {
        this.vL = string;
    }

    public static boolean m(Context context) {
        block4 : {
            int n = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
            if (n == 0) {
                gs.U("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                return false;
            }
            ComponentName componentName = new ComponentName(context.getPackageName(), "com.google.android.gms.ads.AdActivity");
            try {
                if (n != context.getPackageManager().getActivityInfo((ComponentName)componentName, (int)0).theme) break block4;
                return true;
            }
            catch (PackageManager.NameNotFoundException var0_1) {
                gs.W("Fail to fetch AdActivity theme");
                gs.U("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                return false;
            }
        }
        gs.U("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public Bundle b(Context context, String string) {
        Object object = this.mw;
        synchronized (object) {
            Bundle bundle = new Bundle();
            bundle.putString("session_id", this.vL);
            bundle.putLong("basets", this.vZ);
            bundle.putLong("currts", this.vY);
            bundle.putString("seq_num", string);
            bundle.putInt("preqs", this.wb);
            bundle.putInt("pclick", this.vX);
            bundle.putInt("pimp", this.wa);
            bundle.putBoolean("support_transparent_background", gc.m(context));
            return bundle;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(av av, long l) {
        Object object = this.mw;
        synchronized (object) {
            this.vY = this.vZ == -1 ? (this.vZ = l) : l;
            if (av.extras != null && av.extras.getInt("gw", 2) == 1) {
                return;
            }
            ++this.wb;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cO() {
        Object object = this.mw;
        synchronized (object) {
            ++this.wa;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cP() {
        Object object = this.mw;
        synchronized (object) {
            ++this.vX;
            return;
        }
    }

    public long dh() {
        return this.vZ;
    }
}

