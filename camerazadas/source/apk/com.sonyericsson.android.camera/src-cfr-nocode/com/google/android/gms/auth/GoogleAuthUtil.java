/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.auth;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.auth.AccountChangeEvent;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.UserRecoverableNotifiedException;
import java.io.IOException;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    private GoogleAuthUtil();

    private static void D(Context var0) throws GoogleAuthException;

    private static String a(Context var0, String var1, String var2, Bundle var3) throws IOException, UserRecoverableNotifiedException, GoogleAuthException;

    private static boolean aw(String var0);

    private static boolean ax(String var0);

    private static boolean b(Context var0, int var1);

    public static void clearToken(Context var0, String var1) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException;

    public static List<AccountChangeEvent> getAccountChangeEvents(Context var0, int var1, String var2) throws GoogleAuthException, IOException;

    public static String getAccountId(Context var0, String var1) throws GoogleAuthException, IOException;

    public static String getAppCert(Context var0, String var1);

    public static String getToken(Context var0, String var1, String var2) throws IOException, UserRecoverableAuthException, GoogleAuthException;

    public static String getToken(Context var0, String var1, String var2, Bundle var3) throws IOException, UserRecoverableAuthException, GoogleAuthException;

    public static String getTokenWithNotification(Context var0, String var1, String var2, Bundle var3) throws IOException, UserRecoverableNotifiedException, GoogleAuthException;

    public static String getTokenWithNotification(Context var0, String var1, String var2, Bundle var3, Intent var4) throws IOException, UserRecoverableNotifiedException, GoogleAuthException;

    public static String getTokenWithNotification(Context var0, String var1, String var2, Bundle var3, String var4, Bundle var5) throws IOException, UserRecoverableNotifiedException, GoogleAuthException;

    private static void h(Intent var0);

    @Deprecated
    public static void invalidateToken(Context var0, String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends Handler {
        private final Context mD;

        a(Context var1);

        @Override
        public void handleMessage(Message var1);
    }

}

