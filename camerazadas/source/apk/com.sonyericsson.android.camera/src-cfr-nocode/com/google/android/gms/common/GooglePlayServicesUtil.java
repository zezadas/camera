/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class GooglePlayServicesUtil {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 6171000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean Ii;
    public static boolean Ij;
    private static int Ik;
    private static final Object Il;

    static;

    private GooglePlayServicesUtil();

    public static void D(Context var0) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException;

    private static void E(Context var0);

    private static String F(Context var0);

    private static Dialog a(int var0, Activity var1, Fragment var2, int var3, DialogInterface.OnCancelListener var4);

    public static boolean a(PackageManager var0, PackageInfo var1);

    public static boolean a(Resources var0);

    private static byte[] a(PackageInfo var0, boolean var1);

    private static /* varargs */ byte[] a(PackageInfo var0, byte[] ... var1);

    public static Intent ai(int var0);

    public static boolean b(PackageManager var0);

    public static boolean b(PackageManager var0, String var1);

    private static boolean b(Resources var0);

    @Deprecated
    public static Intent c(Context var0, int var1);

    public static boolean c(PackageManager var0);

    public static String d(Context var0, int var1);

    public static String e(Context var0, int var1);

    public static String f(Context var0, int var1);

    public static boolean ga();

    public static Dialog getErrorDialog(int var0, Activity var1, int var2);

    public static Dialog getErrorDialog(int var0, Activity var1, int var2, DialogInterface.OnCancelListener var3);

    public static PendingIntent getErrorPendingIntent(int var0, Context var1, int var2);

    public static String getErrorString(int var0);

    public static String getOpenSourceSoftwareLicenseInfo(Context var0);

    public static Context getRemoteContext(Context var0);

    public static Resources getRemoteResource(Context var0);

    public static int isGooglePlayServicesAvailable(Context var0);

    public static boolean isGoogleSignedUid(PackageManager var0, int var1);

    public static boolean isUserRecoverableError(int var0);

    public static boolean showErrorDialogFragment(int var0, Activity var1, int var2);

    public static boolean showErrorDialogFragment(int var0, Activity var1, int var2, DialogInterface.OnCancelListener var3);

    public static boolean showErrorDialogFragment(int var0, Activity var1, Fragment var2, int var3, DialogInterface.OnCancelListener var4);

    public static void showErrorNotification(int var0, Context var1);
}

