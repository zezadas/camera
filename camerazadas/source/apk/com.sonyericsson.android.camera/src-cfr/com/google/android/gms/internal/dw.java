/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;

@ez
public class dw {
    private final Context mContext;
    private Object sk;

    public dw(Context context) {
        this.mContext = context;
    }

    public Bundle a(String object, String string, String string2) {
        try {
            Class class_ = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            object = (Bundle)class_.getDeclaredMethod("getBuyIntent", Integer.TYPE, String.class, String.class, String.class, String.class).invoke(class_.cast(this.sk), 3, object, string, "inapp", string2);
            return object;
        }
        catch (Exception var1_2) {
            gs.d("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", var1_2);
            return null;
        }
    }

    public int c(String string, String string2) {
        try {
            Class class_ = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            int n = (Integer)class_.getDeclaredMethod("consumePurchase", Integer.TYPE, String.class, String.class).invoke(class_.cast(this.sk), 3, string, string2);
            return n;
        }
        catch (Exception var1_2) {
            gs.d("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", var1_2);
            return 5;
        }
    }

    public Bundle d(String object, String string) {
        try {
            Class class_ = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
            object = (Bundle)class_.getDeclaredMethod("getPurchases", Integer.TYPE, String.class, String.class, String.class).invoke(class_.cast(this.sk), 3, object, "inapp", string);
            return object;
        }
        catch (Exception var1_2) {
            gs.d("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", var1_2);
            return null;
        }
    }

    public void destroy() {
        this.sk = null;
    }

    public void r(IBinder iBinder) {
        try {
            this.sk = this.mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService$Stub").getDeclaredMethod("asInterface", IBinder.class).invoke(null, iBinder);
            return;
        }
        catch (Exception var1_2) {
            gs.W("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.");
            return;
        }
    }
}

