/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.internal.ez;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public final class gj {
    private static final Object uf;
    private static final SimpleDateFormat[] wm;
    private static boolean wn;
    private static String wo;
    private static boolean wp;

    static;

    public static String L(String var0);

    public static int M(String var0);

    public static boolean N(String var0);

    public static long O(String var0);

    static /* synthetic */ String P(String var0);

    public static String a(Readable var0) throws IOException;

    private static JSONArray a(Collection<?> var0) throws JSONException;

    static JSONArray a(Object[] var0) throws JSONException;

    public static void a(Context var0, String var1, WebSettings var2);

    public static void a(Context var0, String var1, List<String> var2);

    public static void a(Context var0, String var1, List<String> var2, String var3);

    public static void a(Context var0, String var1, boolean var2, HttpURLConnection var3);

    public static void a(Context var0, String var1, boolean var2, HttpURLConnection var3, String var4);

    public static void a(Context var0, String var1, boolean var2, HttpURLConnection var3, boolean var4);

    public static void a(WebView var0);

    private static void a(JSONArray var0, Object var1) throws JSONException;

    private static void a(JSONObject var0, String var1, Object var2) throws JSONException;

    public static boolean a(PackageManager var0, String var1, String var2);

    public static boolean a(ClassLoader var0, Class<?> var1, String var2);

    public static void b(WebView var0);

    public static String c(Context var0, String var1);

    public static Map<String, String> c(Uri var0);

    private static JSONObject c(Bundle var0) throws JSONException;

    public static void c(Context var0, String var1, String var2);

    public static boolean dk();

    public static int dl();

    public static int dm();

    static String dn();

    public static String do();

    static /* synthetic */ Object dp();

    public static boolean p(Context var0);

    public static void q(Context var0);

    private static String r(Context var0);

    public static int s(Context var0);

    public static JSONObject t(Map<String, ?> var0) throws JSONException;

    public static int[] t(Context var0);

    static /* synthetic */ String u(Context var0);

    static /* synthetic */ boolean w(boolean var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a
    extends BroadcastReceiver {
        private a();

        /* synthetic */ a( var1);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

}

