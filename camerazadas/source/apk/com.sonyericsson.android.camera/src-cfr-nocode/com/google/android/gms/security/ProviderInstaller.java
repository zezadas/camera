/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static Method anK;
    private static final Object uf;

    static;

    public ProviderInstaller();

    private static void V(Context var0) throws ClassNotFoundException, NoSuchMethodException;

    public static void installIfNeeded(Context var0) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException;

    public static void installIfNeededAsync(Context var0, ProviderInstallListener var1);

    public static interface ProviderInstallListener {
        public void onProviderInstallFailed(int var1, Intent var2);

        public void onProviderInstalled();
    }

}

