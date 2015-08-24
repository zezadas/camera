/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gr;
import java.util.Locale;

@ez
public final class fw {
    public final int uS;
    public final boolean uT;
    public final boolean uU;
    public final String uV;
    public final String uW;
    public final boolean uX;
    public final boolean uY;
    public final boolean uZ;
    public final String va;
    public final String vb;
    public final int vc;
    public final int vd;
    public final int ve;
    public final int vf;
    public final int vg;
    public final int vh;
    public final float vi;
    public final int vj;
    public final int vk;
    public final double vl;
    public final boolean vm;
    public final boolean vn;
    public final int vo;

    /*
     * Enabled aggressive block sorting
     */
    public fw(Context context) {
        boolean bl = true;
        AudioManager audioManager = (AudioManager)context.getSystemService("audio");
        ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Locale locale = Locale.getDefault();
        PackageManager packageManager = context.getPackageManager();
        TelephonyManager telephonyManager = (TelephonyManager)context.getSystemService("phone");
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.uS = audioManager.getMode();
        boolean bl2 = fw.a(packageManager, "geo:0,0?q=donuts") != null;
        this.uT = bl2;
        bl2 = fw.a(packageManager, "http://www.google.com") != null;
        this.uU = bl2;
        this.uV = telephonyManager.getNetworkOperator();
        this.uW = locale.getCountry();
        this.uX = gr.dr();
        this.uY = audioManager.isMusicActive();
        this.uZ = audioManager.isSpeakerphoneOn();
        this.va = locale.getLanguage();
        this.vb = fw.a(packageManager);
        this.vc = audioManager.getStreamVolume(3);
        this.vd = fw.a(context, connectivityManager, packageManager);
        this.ve = telephonyManager.getNetworkType();
        this.vf = telephonyManager.getPhoneType();
        this.vg = audioManager.getRingerMode();
        this.vh = audioManager.getStreamVolume(2);
        this.vi = displayMetrics.density;
        this.vj = displayMetrics.widthPixels;
        this.vk = displayMetrics.heightPixels;
        if (intent != null) {
            int n = intent.getIntExtra("status", -1);
            int n2 = intent.getIntExtra("level", -1);
            int n3 = intent.getIntExtra("scale", -1);
            this.vl = (float)n2 / (float)n3;
            bl2 = bl;
            if (n != 2) {
                bl2 = n == 5 ? bl : false;
            }
            this.vm = bl2;
        } else {
            this.vl = -1.0;
            this.vm = false;
        }
        if (Build.VERSION.SDK_INT < 16) {
            this.vn = false;
            this.vo = -1;
            return;
        }
        this.vn = connectivityManager.isActiveNetworkMetered();
        if (connectivityManager.getActiveNetworkInfo() != null) {
            this.vo = connectivityManager.getActiveNetworkInfo().getDetailedState().ordinal();
            return;
        }
        this.vo = -1;
    }

    private static int a(Context object, ConnectivityManager connectivityManager, PackageManager packageManager) {
        int n = -2;
        if (gj.a(packageManager, object.getPackageName(), "android.permission.ACCESS_NETWORK_STATE")) {
            object = connectivityManager.getActiveNetworkInfo();
            if (object != null) {
                n = object.getType();
            }
        } else {
            return n;
        }
        return -1;
    }

    private static ResolveInfo a(PackageManager packageManager, String string) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)), 65536);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String a(PackageManager object) {
        ResolveInfo resolveInfo = fw.a((PackageManager)object, "market://details?id=com.google.android.gms.ads");
        if (resolveInfo == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        if (activityInfo == null) return null;
        try {
            if ((object = object.getPackageInfo(activityInfo.packageName, 0)) == null) return null;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return null;
        }
        return "" + object.versionCode + "." + activityInfo.packageName;
    }
}

