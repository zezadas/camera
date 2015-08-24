/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.UserRecoverableNotifiedException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.r;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

public final class GoogleAuthUtil {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    private static final ComponentName Dn;
    private static final ComponentName Do;
    private static final Intent Dp;
    private static final Intent Dq;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";
    @Deprecated
    public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            // empty if block
        }
        KEY_CALLER_UID = "callerUid";
        if (Build.VERSION.SDK_INT >= 14) {
            // empty if block
        }
        KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
        Dn = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        Do = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
        Dp = new Intent().setPackage("com.google.android.gms").setComponent(Dn);
        Dq = new Intent().setPackage("com.google.android.gms").setComponent(Do);
    }

    private GoogleAuthUtil() {
    }

    private static void D(Context context) throws GoogleAuthException {
        try {
            GooglePlayServicesUtil.D(context);
            return;
        }
        catch (GooglePlayServicesRepairableException var0_1) {
            throw new GooglePlayServicesAvailabilityException(var0_1.getConnectionStatusCode(), var0_1.getMessage(), var0_1.getIntent());
        }
        catch (GooglePlayServicesNotAvailableException var0_2) {
            throw new GoogleAuthException(var0_2.getMessage());
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static String a(Context object, String string, String string2, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        try {
            return GoogleAuthUtil.getToken((Context)object, string, string2, bundle2);
        }
        catch (GooglePlayServicesAvailabilityException var1_3) {
            int n = var1_3.getConnectionStatusCode();
            if (GoogleAuthUtil.b((Context)object, n)) {
                object = new a(object.getApplicationContext());
                object.sendMessageDelayed(object.obtainMessage(1), 30000);
                do {
                    throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
                    break;
                } while (true);
            }
            GooglePlayServicesUtil.showErrorNotification(n, (Context)object);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
        catch (UserRecoverableAuthException var0_1) {
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }

    private static boolean aw(String string) {
        if ("NetworkError".equals(string) || "ServiceUnavailable".equals(string) || "Timeout".equals(string)) {
            return true;
        }
        return false;
    }

    private static boolean ax(String string) {
        if ("BadAuthentication".equals(string) || "CaptchaRequired".equals(string) || "DeviceManagementRequiredOrSyncDisabled".equals(string) || "NeedPermission".equals(string) || "NeedsBrowser".equals(string) || "UserCancel".equals(string) || "AppDownloadRequired".equals(string) || if.DT.ft().equals(string) || if.DU.ft().equals(string) || if.DV.ft().equals(string) || if.DW.ft().equals(string) || if.DX.ft().equals(string) || if.DY.ft().equals(string)) {
            return true;
        }
        return false;
    }

    private static boolean b(Context object, int n) {
        if (n == 1) {
            object = object.getPackageManager();
            try {
                boolean bl = object.getApplicationInfo((String)"com.google.android.gms", (int)8192).enabled;
                if (bl) {
                    return true;
                }
            }
            catch (PackageManager.NameNotFoundException var0_1) {
                // empty catch block
            }
        }
        return false;
    }

    /*
     * Exception decompiling
     */
    public static void clearToken(Context var0, String var1_1) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 5[CATCHBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
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
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, int n, String object) throws GoogleAuthException, IOException {
        o.b((String)object, (Object)"accountName must be provided");
        o.aU("Calling this from your main thread can lead to deadlock");
        context = context.getApplicationContext();
        GoogleAuthUtil.D(context);
        com.google.android.gms.common.a a = new com.google.android.gms.common.a();
        if (!context.bindService(Dp, a, 1)) {
            throw new IOException("Could not bind to service with the given context.");
        }
        try {
            object = r.a.a(a.fW()).a(new AccountChangeEventsRequest().setAccountName((String)object).setEventIndex(n)).getEvents();
            return object;
        }
        catch (RemoteException var2_3) {
            Log.i("GoogleAuthUtil", "GMS remote exception ", var2_3);
            throw new IOException("remote exception");
        }
        catch (InterruptedException var2_5) {
            throw new GoogleAuthException("Interrupted");
        }
        finally {
            context.unbindService(a);
        }
    }

    public static String getAccountId(Context context, String string) throws GoogleAuthException, IOException {
        o.b(string, (Object)"accountName must be provided");
        o.aU("Calling this from your main thread can lead to deadlock");
        GoogleAuthUtil.D(context.getApplicationContext());
        return GoogleAuthUtil.getToken(context, string, "^^_account_id_^^", new Bundle());
    }

    public static String getAppCert(Context context, String string) {
        return "spatula";
    }

    public static String getToken(Context context, String string, String string2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return GoogleAuthUtil.getToken(context, string, string2, new Bundle());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String getToken(Context object, String object2, String string, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        Context context = object.getApplicationContext();
        o.aU("Calling this from your main thread can lead to deadlock");
        GoogleAuthUtil.D(context);
        bundle = bundle == null ? new Bundle() : new Bundle(bundle);
        object = object.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", (String)object);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, (String)object);
        }
        if (!context.bindService(Dp, (ServiceConnection)(object = new com.google.android.gms.common.a()), 1)) {
            throw new IOException("Could not bind to service with the given context.");
        }
        try {
            block13 : {
                block12 : {
                    object2 = r.a.a(object.fW()).a((String)object2, string, bundle);
                    string = object2.getString("authtoken");
                    boolean bl = TextUtils.isEmpty((CharSequence)string);
                    if (!bl) {
                        context.unbindService((ServiceConnection)object);
                        return string;
                    }
                    string = object2.getString("Error");
                    object2 = (Intent)object2.getParcelable("userRecoveryIntent");
                    if (!GoogleAuthUtil.ax(string)) break block12;
                    throw new UserRecoverableAuthException(string, (Intent)object2);
                }
                if (!GoogleAuthUtil.aw(string)) break block13;
                throw new IOException(string);
            }
            try {
                throw new GoogleAuthException(string);
            }
            catch (RemoteException var1_2) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", var1_2);
                throw new IOException("remote exception");
            }
        }
        catch (Throwable var1_3) {
            context.unbindService((ServiceConnection)object);
            throw var1_3;
        }
        catch (InterruptedException var1_4) {
            throw new GoogleAuthException("Interrupted");
        }
    }

    public static String getTokenWithNotification(Context context, String string, String string2, Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putBoolean("handle_notification", true);
        return GoogleAuthUtil.a(context, string, string2, bundle2);
    }

    public static String getTokenWithNotification(Context context, String string, String string2, Bundle bundle, Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        GoogleAuthUtil.h(intent);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putParcelable("callback_intent", intent);
        bundle2.putBoolean("handle_notification", true);
        return GoogleAuthUtil.a(context, string, string2, bundle2);
    }

    public static String getTokenWithNotification(Context context, String string, String string2, Bundle bundle, String string3, Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        if (TextUtils.isEmpty((CharSequence)string3)) {
            throw new IllegalArgumentException("Authority cannot be empty or null.");
        }
        Bundle bundle3 = bundle;
        if (bundle == null) {
            bundle3 = new Bundle();
        }
        bundle = bundle2;
        if (bundle2 == null) {
            bundle = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle);
        bundle3.putString("authority", string3);
        bundle3.putBundle("sync_extras", bundle);
        bundle3.putBoolean("handle_notification", true);
        return GoogleAuthUtil.a(context, string, string2, bundle3);
    }

    private static void h(Intent object) {
        if (object == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        object = object.toUri(1);
        try {
            Intent.parseUri((String)object, 1);
            return;
        }
        catch (URISyntaxException var0_1) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    @Deprecated
    public static void invalidateToken(Context context, String string) {
        AccountManager.get(context).invalidateAuthToken("com.google", string);
    }

    private static class a
    extends Handler {
        private final Context mD;

        /*
         * Enabled aggressive block sorting
         */
        a(Context context) {
            Looper looper = Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper();
            super(looper);
            this.mD = context;
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what == 1) {
                int n = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mD);
                if (GooglePlayServicesUtil.isUserRecoverableError(n)) {
                    GooglePlayServicesUtil.showErrorNotification(n, this.mD);
                }
                return;
            }
            Log.wtf("GoogleAuthUtil", "Don't know how to handle this message: " + message.what);
        }
    }

}

