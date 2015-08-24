/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.SystemClock;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gq;
import com.google.android.gms.internal.gs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

@ez
public final class dy
extends eg.a {
    private Context mContext;
    private String mv;
    private String su;
    private ArrayList<String> sv;

    public dy(String string, ArrayList<String> arrayList, Context context, String string2) {
        this.su = string;
        this.sv = arrayList;
        this.mv = string2;
        this.mContext = context;
    }

    private void cq() {
        try {
            this.mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", Context.class, String.class, String.class, Boolean.TYPE).invoke(null, this.mContext, this.su, "", true);
            return;
        }
        catch (ClassNotFoundException var1_1) {
            gs.W("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
            return;
        }
        catch (NoSuchMethodException var1_2) {
            gs.W("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
            return;
        }
        catch (Exception var1_3) {
            gs.d("Fail to report a conversion.", var1_3);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected String a(String string, HashMap<String, String> hashMap) {
        String string2;
        String string3 = this.mContext.getPackageName();
        try {
            string2 = this.mContext.getPackageManager().getPackageInfo((String)string3, (int)0).versionName;
        }
        catch (PackageManager.NameNotFoundException var7_5) {
            gs.d("Error to retrieve app version", var7_5);
            string2 = "";
        }
        long l = SystemClock.elapsedRealtime();
        long l2 = gb.cY().dh();
        Iterator<String> iterator = hashMap.keySet().iterator();
        while (iterator.hasNext()) {
            String string4 = iterator.next();
            string = string.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", string4), String.format("$1%s$2", hashMap.get(string4)));
        }
        return string.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "sessionid"), String.format("$1%s$2", gb.vK)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "appid"), String.format("$1%s$2", string3)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "osversion"), String.format("$1%s$2", String.valueOf(Build.VERSION.SDK_INT))).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "sdkversion"), String.format("$1%s$2", this.mv)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "appversion"), String.format("$1%s$2", string2)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "timestamp"), String.format("$1%s$2", String.valueOf(l - l2))).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "[^@]+"), String.format("$1%s$2", "")).replaceAll("@@", "@");
    }

    @Override
    public String getProductId() {
        return this.su;
    }

    protected int o(int n) {
        if (n == 0) {
            return 1;
        }
        if (n == 1) {
            return 2;
        }
        if (n == 4) {
            return 3;
        }
        return 0;
    }

    @Override
    public void recordPlayBillingResolution(int n) {
        if (n == 0) {
            this.cq();
        }
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("google_play_status", String.valueOf(n));
        hashMap.put("sku", this.su);
        hashMap.put("status", String.valueOf(this.o(n)));
        for (String string : this.sv) {
            new gq(this.mContext, this.mv, this.a(string, hashMap)).start();
        }
    }

    @Override
    public void recordResolution(int n) {
        if (n == 1) {
            this.cq();
        }
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("status", String.valueOf(n));
        hashMap.put("sku", this.su);
        for (String string : this.sv) {
            new gq(this.mContext, this.mv, this.a(string, hashMap)).start();
        }
    }
}

