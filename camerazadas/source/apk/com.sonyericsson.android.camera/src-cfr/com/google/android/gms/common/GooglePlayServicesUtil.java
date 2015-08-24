/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.google.android.gms.R;
import com.google.android.gms.common.ErrorDialogFragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.SupportErrorDialogFragment;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.kc;
import java.io.InputStream;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

public final class GooglePlayServicesUtil {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 6171000;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean Ii = false;
    public static boolean Ij = false;
    private static int Ik = -1;
    private static final Object Il = new Object();

    private GooglePlayServicesUtil() {
    }

    public static void D(Context object) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int n = GooglePlayServicesUtil.isGooglePlayServicesAvailable((Context)object);
        if (n != 0) {
            object = GooglePlayServicesUtil.c((Context)object, n);
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + n);
            if (object == null) {
                throw new GooglePlayServicesNotAvailableException(n);
            }
            throw new GooglePlayServicesRepairableException(n, "Google Play Services not available", (Intent)object);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void E(Context object) {
        Object var2_2 = null;
        try {
            object = object.getPackageManager().getApplicationInfo(object.getPackageName(), 128);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            Log.wtf("GooglePlayServicesUtil", "This should never happen.", var0_1);
            object = var2_2;
        }
        if ((object = object.metaData) != null) {
            int n = object.getInt("com.google.android.gms.version");
            if (n == 6171000) {
                return;
            }
            throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 6171000 but found " + n + ".  You must have the" + " following declaration within the <application> element: " + "    <meta-data android:name=\"" + "com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
        }
        throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String F(Context object) {
        Object object2;
        Object object3 = object2 = object.getApplicationInfo().name;
        if (!TextUtils.isEmpty((CharSequence)object2)) return object3;
        object3 = object.getPackageName();
        object2 = object.getApplicationContext().getPackageManager();
        try {
            object = object2.getApplicationInfo(object.getPackageName(), 0);
            if (object == null) return object3;
            return object2.getApplicationLabel((ApplicationInfo)object).toString();
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return object3;
        }
    }

    /*
     * Exception decompiling
     */
    private static Dialog a(int var0, Activity var1_1, Fragment var2_2, int var3_3, DialogInterface.OnCancelListener var4_4) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean a(PackageManager packageManager, PackageInfo packageInfo) {
        boolean bl = true;
        boolean bl2 = false;
        boolean bl3 = false;
        if (packageInfo == null) {
            return bl3;
        }
        if (GooglePlayServicesUtil.c(packageManager)) {
            if (GooglePlayServicesUtil.a(packageInfo, true) == null) return false;
            return bl;
        }
        bl = bl2;
        if (GooglePlayServicesUtil.a(packageInfo, false) != null) {
            return true;
        }
        bl3 = bl;
        if (bl) return bl3;
        bl3 = bl;
        if (GooglePlayServicesUtil.a(packageInfo, true) == null) return bl3;
        Log.w("GooglePlayServicesUtil", "Test-keys aren't accepted on this build.");
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static boolean a(Resources resources) {
        if (resources == null) {
            return false;
        }
        boolean bl = (resources.getConfiguration().screenLayout & 15) > 3;
        if (kc.hB()) {
            if (bl) return true;
        }
        if (!GooglePlayServicesUtil.b(resources)) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static byte[] a(PackageInfo set, boolean bl) {
        if (set.signatures.length != 1) {
            Log.w("GooglePlayServicesUtil", "Package has more than one signature.");
            return null;
        }
        byte[] arrby = set.signatures[0].toByteArray();
        set = bl ? com.google.android.gms.common.b.fY() : com.google.android.gms.common.b.fZ();
        if (set.contains(arrby)) {
            return arrby;
        }
        if (Log.isLoggable("GooglePlayServicesUtil", 2)) {
            Log.v("GooglePlayServicesUtil", "Signature not valid.  Found: \n" + Base64.encodeToString(arrby, 0));
        }
        return null;
    }

    private static /* varargs */ byte[] a(PackageInfo packageInfo, byte[] ... arrby) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GooglePlayServicesUtil", "Package has more than one signature.");
            return null;
        }
        packageInfo = (PackageInfo)packageInfo.signatures[0].toByteArray();
        for (int i = 0; i < arrby.length; ++i) {
            byte[] arrby2 = arrby[i];
            if (!Arrays.equals(arrby2, (byte[])packageInfo)) continue;
            return arrby2;
        }
        if (Log.isLoggable("GooglePlayServicesUtil", 2)) {
            Log.v("GooglePlayServicesUtil", "Signature not valid.  Found: \n" + Base64.encodeToString((byte[])packageInfo, 0));
        }
        return null;
    }

    public static Intent ai(int n) {
        switch (n) {
            default: {
                return null;
            }
            case 1: 
            case 2: {
                return h.aY("com.google.android.gms");
            }
            case 42: {
                return h.gZ();
            }
            case 3: 
        }
        return h.aW("com.google.android.gms");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public static boolean b(PackageManager packageManager) {
        block6 : {
            Object object = Il;
            // MONITORENTER : object
            int n = Ik;
            if (n == -1) {
                try {
                    if (GooglePlayServicesUtil.a(packageManager.getPackageInfo("com.google.android.gms", 64), com.google.android.gms.common.b.Ie[1]) != null) {
                        Ik = 1;
                        break block6;
                    }
                    Ik = 0;
                }
                catch (PackageManager.NameNotFoundException var0_1) {
                    Ik = 0;
                }
            }
        }
        // MONITOREXIT : object
        if (Ik == 0) return false;
        return true;
    }

    public static boolean b(PackageManager packageManager, String string) {
        PackageInfo packageInfo;
        try {
            packageInfo = packageManager.getPackageInfo(string, 64);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            if (Log.isLoggable("GooglePlayServicesUtil", 3)) {
                Log.d("GooglePlayServicesUtil", "Package manager can't find package " + string + ", defaulting to false");
            }
            return false;
        }
        return GooglePlayServicesUtil.a(packageManager, packageInfo);
    }

    private static boolean b(Resources object) {
        boolean bl = false;
        object = object.getConfiguration();
        boolean bl2 = bl;
        if (kc.hD()) {
            bl2 = bl;
            if ((object.screenLayout & 15) <= 3) {
                bl2 = bl;
                if (object.smallestScreenWidthDp >= 600) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    @Deprecated
    public static Intent c(Context context, int n) {
        return GooglePlayServicesUtil.ai(n);
    }

    public static boolean c(PackageManager packageManager) {
        if (GooglePlayServicesUtil.b(packageManager) || !GooglePlayServicesUtil.ga()) {
            return true;
        }
        return false;
    }

    public static String d(Context context, int n) {
        Resources resources = context.getResources();
        switch (n) {
            default: {
                return resources.getString(R.string.common_google_play_services_unknown_issue);
            }
            case 1: {
                if (GooglePlayServicesUtil.a(context.getResources())) {
                    return resources.getString(R.string.common_google_play_services_install_text_tablet);
                }
                return resources.getString(R.string.common_google_play_services_install_text_phone);
            }
            case 3: {
                return resources.getString(R.string.common_google_play_services_enable_text);
            }
            case 2: {
                return resources.getString(R.string.common_google_play_services_update_text);
            }
            case 42: {
                return resources.getString(R.string.common_android_wear_update_text);
            }
            case 9: {
                return resources.getString(R.string.common_google_play_services_unsupported_text);
            }
            case 7: {
                return resources.getString(R.string.common_google_play_services_network_error_text);
            }
            case 5: 
        }
        return resources.getString(R.string.common_google_play_services_invalid_account_text);
    }

    public static String e(Context object, int n) {
        object = object.getResources();
        switch (n) {
            default: {
                return object.getString(17039370);
            }
            case 1: {
                return object.getString(R.string.common_google_play_services_install_button);
            }
            case 3: {
                return object.getString(R.string.common_google_play_services_enable_button);
            }
            case 2: 
            case 42: 
        }
        return object.getString(R.string.common_google_play_services_update_button);
    }

    public static String f(Context object, int n) {
        object = object.getResources();
        switch (n) {
            default: {
                return object.getString(R.string.common_google_play_services_unknown_issue);
            }
            case 1: {
                return object.getString(R.string.common_google_play_services_notification_needs_installation_title);
            }
            case 2: {
                return object.getString(R.string.common_google_play_services_notification_needs_update_title);
            }
            case 42: {
                return object.getString(R.string.common_android_wear_notification_needs_update_text);
            }
            case 3: {
                return object.getString(R.string.common_google_play_services_needs_enabling_title);
            }
            case 9: {
                return object.getString(R.string.common_google_play_services_unsupported_text);
            }
            case 7: {
                return object.getString(R.string.common_google_play_services_network_error_text);
            }
            case 5: 
        }
        return object.getString(R.string.common_google_play_services_invalid_account_text);
    }

    public static boolean ga() {
        if (Ii) {
            return Ij;
        }
        return "user".equals(Build.TYPE);
    }

    public static Dialog getErrorDialog(int n, Activity activity, int n2) {
        return GooglePlayServicesUtil.getErrorDialog(n, activity, n2, null);
    }

    public static Dialog getErrorDialog(int n, Activity activity, int n2, DialogInterface.OnCancelListener onCancelListener) {
        return GooglePlayServicesUtil.a(n, activity, null, n2, onCancelListener);
    }

    public static PendingIntent getErrorPendingIntent(int n, Context context, int n2) {
        Intent intent = GooglePlayServicesUtil.c(context, n);
        if (intent == null) {
            return null;
        }
        return PendingIntent.getActivity(context, n2, intent, 268435456);
    }

    public static String getErrorString(int n) {
        switch (n) {
            default: {
                return "UNKNOWN_ERROR_CODE";
            }
            case 0: {
                return "SUCCESS";
            }
            case 1: {
                return "SERVICE_MISSING";
            }
            case 2: {
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            }
            case 3: {
                return "SERVICE_DISABLED";
            }
            case 4: {
                return "SIGN_IN_REQUIRED";
            }
            case 5: {
                return "INVALID_ACCOUNT";
            }
            case 6: {
                return "RESOLUTION_REQUIRED";
            }
            case 7: {
                return "NETWORK_ERROR";
            }
            case 8: {
                return "INTERNAL_ERROR";
            }
            case 9: {
                return "SERVICE_INVALID";
            }
            case 10: {
                return "DEVELOPER_ERROR";
            }
            case 11: 
        }
        return "LICENSE_CHECK_FAILED";
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static String getOpenSourceSoftwareLicenseInfo(Context object) {
        InputStream inputStream;
        Object object2 = new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build();
        try {
            inputStream = object.getContentResolver().openInputStream((Uri)object2);
        }
        catch (Exception var0_3) {
            return null;
        }
        object2 = object = new Scanner(inputStream).useDelimiter("\\A").next();
        if (inputStream == null) return object2;
        inputStream.close();
        return object;
        catch (NoSuchElementException noSuchElementException) {
            if (inputStream == null) return null;
            inputStream.close();
            return null;
        }
        catch (Throwable throwable) {
            if (inputStream == null) throw throwable;
            inputStream.close();
            throw throwable;
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            context = context.createPackageContext("com.google.android.gms", 3);
            return context;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context object) {
        try {
            object = object.getPackageManager().getResourcesForApplication("com.google.android.gms");
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return null;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static int isGooglePlayServicesAvailable(Context var0) {
        var2_4 = var0.getPackageManager();
        if (!b.Lr) {
            try {
                var0.getResources().getString(R.string.common_google_play_services_unknown_issue);
            }
            catch (Throwable var3_6) {
                Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
            }
        }
        if (!b.Lr) {
            GooglePlayServicesUtil.E((Context)var0);
        }
        try {
            var3_7 = var2_4.getPackageInfo("com.google.android.gms", 64);
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
        if (jt.aP(var3_7.versionCode)) {
            var1_8 = GooglePlayServicesUtil.ga() != false ? 0 : 1;
            if (GooglePlayServicesUtil.a(var3_7, new byte[][]{com.google.android.gms.common.b.HH[var1_8], com.google.android.gms.common.b.HN[var1_8], com.google.android.gms.common.b.HM[var1_8]}) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play Services signature invalid on Glass.");
                return 9;
            } else {
                ** GOTO lbl21
            }
        }
        ** GOTO lbl30
lbl21: // 2 sources:
        var0 = var0.getPackageName();
        try {
            var4_9 = var2_4.getPackageInfo((String)var0, 64);
            if (!GooglePlayServicesUtil.a(var2_4, var4_9)) {
                Log.w("GooglePlayServicesUtil", "Calling package " + var4_9.packageName + " signature invalid on Glass.");
                return 9;
            } else {
                ** GOTO lbl46
            }
        }
        catch (PackageManager.NameNotFoundException var2_5) {
            Log.w("GooglePlayServicesUtil", "Could not get info for calling package: " + (String)var0);
            return 9;
        }
lbl30: // 1 sources:
        if (jt.K((Context)var0)) {
            if (GooglePlayServicesUtil.a(var3_7, com.google.android.gms.common.b.HH) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            } else {
                ** GOTO lbl46
            }
        }
        try {
            var0 = var2_4.getPackageInfo("com.android.vending", 64);
        }
        catch (PackageManager.NameNotFoundException var0_2) {
            Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
            return 9;
        }
        var0 = GooglePlayServicesUtil.a((PackageInfo)var0, com.google.android.gms.common.b.HH);
        if (var0 == null) {
            Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
            return 9;
        }
        if (GooglePlayServicesUtil.a(var3_7, new byte[][]{var0}) == null) {
            Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
            return 9;
        }
lbl46: // 6 sources:
        var1_8 = jt.aN(6171000);
        if (jt.aN(var3_7.versionCode) < var1_8) {
            Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires 6171000 but found " + var3_7.versionCode);
            return 2;
        }
        try {
            var0 = var2_4.getApplicationInfo("com.google.android.gms", 0);
            if (var0.enabled != false) return 0;
            return 3;
        }
        catch (PackageManager.NameNotFoundException var0_3) {
            Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
            var0_3.printStackTrace();
            return 1;
        }
    }

    public static boolean isGoogleSignedUid(PackageManager packageManager, int n) {
        if (packageManager == null) {
            throw new SecurityException("Unknown error: invalid Package Manager");
        }
        String[] arrstring = packageManager.getPackagesForUid(n);
        if (!(arrstring.length != 0 && GooglePlayServicesUtil.b(packageManager, arrstring[0]))) {
            throw new SecurityException("Uid is not Google Signed");
        }
        return true;
    }

    public static boolean isUserRecoverableError(int n) {
        switch (n) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
            case 3: 
            case 9: 
        }
        return true;
    }

    public static boolean showErrorDialogFragment(int n, Activity activity, int n2) {
        return GooglePlayServicesUtil.showErrorDialogFragment(n, activity, n2, null);
    }

    public static boolean showErrorDialogFragment(int n, Activity activity, int n2, DialogInterface.OnCancelListener onCancelListener) {
        return GooglePlayServicesUtil.showErrorDialogFragment(n, activity, null, n2, onCancelListener);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static boolean showErrorDialogFragment(int n, Activity object, Fragment onCreateContextMenuListener, int n2, DialogInterface.OnCancelListener onCancelListener) {
        boolean bl;
        bl = false;
        if ((onCreateContextMenuListener = GooglePlayServicesUtil.a(n, (Activity)object, onCreateContextMenuListener, n2, onCancelListener)) == null) {
            return false;
        }
        try {
            boolean bl2;
            bl = bl2 = object instanceof FragmentActivity;
        }
        catch (NoClassDefFoundError var7_7) {}
        if (bl) {
            object = ((FragmentActivity)object).getSupportFragmentManager();
            SupportErrorDialogFragment.newInstance((Dialog)onCreateContextMenuListener, onCancelListener).show((FragmentManager)object, "GooglePlayServicesErrorDialog");
            return true;
        }
        if (!kc.hB()) throw new RuntimeException("This Activity does not support Fragments.");
        object = object.getFragmentManager();
        ErrorDialogFragment.newInstance((Dialog)onCreateContextMenuListener, onCancelListener).show((android.app.FragmentManager)object, "GooglePlayServicesErrorDialog");
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void showErrorNotification(int n, Context context) {
        boolean bl = jt.K(context);
        int n2 = n;
        if (bl) {
            n2 = n;
            if (n == 2) {
                n2 = 42;
            }
        }
        Object object = context.getResources();
        String string = GooglePlayServicesUtil.f(context, n2);
        String string2 = object.getString(R.string.common_google_play_services_error_notification_requested_by_msg, GooglePlayServicesUtil.F(context));
        PendingIntent pendingIntent = GooglePlayServicesUtil.getErrorPendingIntent(n2, context, 0);
        if (bl) {
            o.I(kc.hF());
            object = new Notification.Builder(context).setSmallIcon(R.drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText((CharSequence)(string + " " + string2))).addAction(R.drawable.common_full_open_on_phone, (CharSequence)object.getString(R.string.common_open_on_phone), pendingIntent).build();
        } else {
            object = new Notification(17301642, (CharSequence)object.getString(R.string.common_google_play_services_notification_ticker), System.currentTimeMillis());
            object.flags|=16;
            object.setLatestEventInfo(context, (CharSequence)string, (CharSequence)string2, pendingIntent);
        }
        ((NotificationManager)context.getSystemService("notification")).notify(39789, (Notification)object);
    }
}

