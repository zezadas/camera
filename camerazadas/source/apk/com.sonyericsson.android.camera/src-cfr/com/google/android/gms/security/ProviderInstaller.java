/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;

public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static Method anK;
    private static final Object uf;

    static {
        uf = new Object();
        anK = null;
    }

    private static void V(Context context) throws ClassNotFoundException, NoSuchMethodException {
        anK = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void installIfNeeded(Context object) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        o.b(object, (Object)"Context must not be null");
        GooglePlayServicesUtil.D((Context)object);
        Context context = GooglePlayServicesUtil.getRemoteContext((Context)object);
        if (context == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        object = uf;
        synchronized (object) {
            try {
                if (anK == null) {
                    ProviderInstaller.V(context);
                }
                anK.invoke(null, context);
                return;
            }
            catch (Exception var1_2) {
                Log.e("ProviderInstaller", "Failed to install provider: " + var1_2.getMessage());
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(final Context context, final ProviderInstallListener providerInstallListener) {
        o.b(context, (Object)"Context must not be null");
        o.b(providerInstallListener, (Object)"Listener must not be null");
        o.aT("Must be called on the UI thread");
        new AsyncTask<Void, Void, Integer>(){

            protected /* varargs */ Integer b(Void ... arrvoid) {
                try {
                    ProviderInstaller.installIfNeeded(context);
                }
                catch (GooglePlayServicesRepairableException var1_2) {
                    return var1_2.getConnectionStatusCode();
                }
                catch (GooglePlayServicesNotAvailableException var1_3) {
                    return var1_3.errorCode;
                }
                return 0;
            }

            protected void d(Integer n) {
                if (n == 0) {
                    providerInstallListener.onProviderInstalled();
                    return;
                }
                Intent intent = GooglePlayServicesUtil.ai(n);
                providerInstallListener.onProviderInstallFailed(n, intent);
            }

            @Override
            protected /* synthetic */ Object doInBackground(Object[] arrobject) {
                return this.b((Void[])arrobject);
            }

            @Override
            protected /* synthetic */ void onPostExecute(Object object) {
                this.d((Integer)object);
            }
        }.execute(new Void[0]);
    }

    public static interface ProviderInstallListener {
        public void onProviderInstallFailed(int var1, Intent var2);

        public void onProviderInstalled();
    }

}

