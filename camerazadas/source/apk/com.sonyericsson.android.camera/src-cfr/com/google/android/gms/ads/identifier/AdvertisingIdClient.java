/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.s;
import java.io.IOException;

public final class AdvertisingIdClient {
    a lk;
    s ll;
    boolean lm;
    final Context mContext;

    public AdvertisingIdClient(Context context) {
        o.i(context);
        this.mContext = context;
        this.lm = false;
    }

    static s a(Context object, a a) throws IOException {
        try {
            object = s.a.b(a.fW());
            return object;
        }
        catch (InterruptedException var0_1) {
            throw new IOException("Interrupted exception");
        }
    }

    public static Info getAdvertisingIdInfo(Context object) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        object = new AdvertisingIdClient((Context)object);
        try {
            object.start();
            Info info = object.W();
            return info;
        }
        finally {
            object.finish();
        }
    }

    static a i(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
        try {
            GooglePlayServicesUtil.D(context);
            a a = new a();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (context.bindService(intent, a, 1)) {
                return a;
            }
        }
        catch (GooglePlayServicesNotAvailableException var0_2) {
            throw new IOException(var0_2);
        }
        throw new IOException("Connection failure");
    }

    public Info W() throws IOException {
        o.aU("Calling this from your main thread can lead to deadlock");
        o.i(this.lk);
        o.i(this.ll);
        if (!this.lm) {
            throw new IOException("AdvertisingIdService is not connected.");
        }
        try {
            Info info = new Info(this.ll.getId(), this.ll.a(true));
            return info;
        }
        catch (RemoteException var1_2) {
            Log.i("AdvertisingIdClient", "GMS remote exception ", var1_2);
            throw new IOException("Remote exception");
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void finish() {
        o.aU("Calling this from your main thread can lead to deadlock");
        if (this.mContext == null || this.lk == null) {
            return;
        }
        try {
            if (this.lm) {
                this.mContext.unbindService(this.lk);
            }
        }
        catch (IllegalArgumentException var1_1) {
            Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", var1_1);
        }
        this.lm = false;
        this.ll = null;
        this.lk = null;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        o.aU("Calling this from your main thread can lead to deadlock");
        if (this.lm) {
            this.finish();
        }
        this.lk = AdvertisingIdClient.i(this.mContext);
        this.ll = AdvertisingIdClient.a(this.mContext, this.lk);
        this.lm = true;
    }

    public static final class Info {
        private final String ln;
        private final boolean lo;

        public Info(String string, boolean bl) {
            this.ln = string;
            this.lo = bl;
        }

        public String getId() {
            return this.ln;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.lo;
        }

        public String toString() {
            return "{" + this.ln + "}" + this.lo;
        }
    }

}

