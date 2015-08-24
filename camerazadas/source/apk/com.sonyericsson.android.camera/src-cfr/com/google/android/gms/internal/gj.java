/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gn;
import com.google.android.gms.internal.gp;
import com.google.android.gms.internal.gq;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.nio.Buffer;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Illegal identifiers - consider using --renameillegalidents true
 */
@ez
public final class gj {
    private static final Object uf = new Object();
    private static final SimpleDateFormat[] wm = new SimpleDateFormat[]{new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss"), new SimpleDateFormat("yyyyMMdd")};
    private static boolean wn = true;
    private static String wo;
    private static boolean wp;

    static {
        wp = false;
    }

    public static String L(String string) {
        return Uri.parse(string).buildUpon().query(null).build().toString();
    }

    public static int M(String string) {
        try {
            int n = Integer.parseInt(string);
            return n;
        }
        catch (NumberFormatException var0_1) {
            gs.W("Could not parse value:" + var0_1);
            return 0;
        }
    }

    public static boolean N(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            return false;
        }
        return string.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static long O(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            return -1;
        }
        for (SimpleDateFormat simpleDateFormat : wm) {
            try {
                simpleDateFormat.setLenient(false);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long l = simpleDateFormat.parse(string).getTime();
                return l;
            }
            catch (ParseException var6_5) {
                continue;
            }
        }
        try {
            long l = Long.parseLong(string);
            return l;
        }
        catch (NumberFormatException var0_1) {
            return -1;
        }
    }

    public static String a(Readable readable) throws IOException {
        int n;
        StringBuilder stringBuilder = new StringBuilder();
        CharBuffer charBuffer = CharBuffer.allocate(2048);
        while ((n = readable.read(charBuffer)) != -1) {
            charBuffer.flip();
            stringBuilder.append(charBuffer, 0, n);
        }
        return stringBuilder.toString();
    }

    private static JSONArray a(Collection<?> object) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        object = object.iterator();
        while (object.hasNext()) {
            gj.a(jSONArray, object.next());
        }
        return jSONArray;
    }

    static JSONArray a(Object[] arrobject) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        int n = arrobject.length;
        for (int i = 0; i < n; ++i) {
            gj.a(jSONArray, arrobject[i]);
        }
        return jSONArray;
    }

    public static void a(Context context, String string, WebSettings webSettings) {
        webSettings.setUserAgentString(gj.c(context, string));
    }

    public static void a(Context context, String string, List<String> object) {
        object = object.iterator();
        while (object.hasNext()) {
            new gq(context, string, (String)object.next()).start();
        }
    }

    public static void a(Context context, String string, List<String> object, String string2) {
        object = object.iterator();
        while (object.hasNext()) {
            new gq(context, string, (String)object.next(), string2).start();
        }
    }

    public static void a(Context context, String string, boolean bl, HttpURLConnection httpURLConnection) {
        gj.a(context, string, bl, httpURLConnection, false);
    }

    public static void a(Context context, String string, boolean bl, HttpURLConnection httpURLConnection, String string2) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(bl);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", string2);
        httpURLConnection.setUseCaches(false);
    }

    public static void a(Context context, String string, boolean bl, HttpURLConnection httpURLConnection, boolean bl2) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(bl);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", gj.c(context, string));
        httpURLConnection.setUseCaches(bl2);
    }

    public static void a(WebView webView) {
        if (Build.VERSION.SDK_INT >= 11) {
            gn.a(webView);
        }
    }

    private static void a(JSONArray jSONArray, Object object) throws JSONException {
        if (object instanceof Bundle) {
            jSONArray.put(gj.c((Bundle)object));
            return;
        }
        if (object instanceof Map) {
            jSONArray.put(gj.t((Map)object));
            return;
        }
        if (object instanceof Collection) {
            jSONArray.put(gj.a((Collection)object));
            return;
        }
        if (object instanceof Object[]) {
            jSONArray.put(gj.a((Object[])object));
            return;
        }
        jSONArray.put(object);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void a(JSONObject jSONObject, String string, Object object) throws JSONException {
        if (object instanceof Bundle) {
            jSONObject.put(string, gj.c((Bundle)object));
            return;
        }
        if (object instanceof Map) {
            jSONObject.put(string, gj.t((Map)object));
            return;
        }
        if (object instanceof Collection) {
            if (string == null) {
                string = "null";
            }
            jSONObject.put(string, gj.a((Collection)object));
            return;
        }
        if (object instanceof Object[]) {
            jSONObject.put(string, gj.a(Arrays.asList((Object[])object)));
            return;
        }
        jSONObject.put(string, object);
    }

    public static boolean a(PackageManager packageManager, String string, String string2) {
        if (packageManager.checkPermission(string2, string) == 0) {
            return true;
        }
        return false;
    }

    public static boolean a(ClassLoader classLoader, Class<?> class_, String string) {
        try {
            boolean bl = class_.isAssignableFrom(Class.forName(string, false, classLoader));
            return bl;
        }
        catch (Throwable var0_1) {
            return false;
        }
    }

    public static void b(WebView webView) {
        if (Build.VERSION.SDK_INT >= 11) {
            gn.b(webView);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String c(Context object, String string) {
        Object object2 = uf;
        synchronized (object2) {
            if (wo != null) {
                return wo;
            }
            int n = Build.VERSION.SDK_INT;
            if (n >= 17) {
                try {
                    wo = gp.getDefaultUserAgent((Context)object);
                    return gj.wo = wo + " (Mobile; " + string + ")";
                }
                catch (Exception var4_7) {
                    // empty catch block
                }
            }
            if (gr.ds()) {
                try {
                    wo = gj.r((Context)object);
                    return gj.wo = wo + " (Mobile; " + string + ")";
                }
                catch (Exception var0_2) {
                    wo = gj.dn();
                }
                return gj.wo = wo + " (Mobile; " + string + ")";
            } else {
                gr.wC.post(new Runnable((Context)object){
                    final /* synthetic */ Context mV;

                    /*
                     * Enabled aggressive block sorting
                     * Enabled unnecessary exception pruning
                     */
                    @Override
                    public void run() {
                        Object object = uf;
                        synchronized (object) {
                            wo = gj.r(this.mV);
                            uf.notifyAll();
                            return;
                        }
                    }
                });
                while ((object = wo) == null) {
                    try {
                        uf.wait();
                    }
                    catch (InterruptedException var0_1) {
                        wo = gj.dn();
                        gs.W("Interrupted, use default user agent: " + wo);
                    }
                }
                return gj.wo = wo + " (Mobile; " + string + ")";
            }
        }
    }

    public static Map<String, String> c(Uri object) {
        if (object == null) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<String, String>();
        UrlQuerySanitizer object22 = new UrlQuerySanitizer();
        object22.setAllowUnregisteredParamaters(true);
        object22.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
        object22.parseUrl(object.toString());
        for (UrlQuerySanitizer.ParameterValuePair parameterValuePair : object22.getParameterList()) {
            hashMap.put(parameterValuePair.mParameter, parameterValuePair.mValue);
        }
        return hashMap;
    }

    private static JSONObject c(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String string : bundle.keySet()) {
            gj.a(jSONObject, string, bundle.get(string));
        }
        return jSONObject;
    }

    public static void c(Context context, String string, String string2) {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(string2);
        gj.a(context, string, arrayList);
    }

    public static boolean dk() {
        return wn;
    }

    public static int dl() {
        if (Build.VERSION.SDK_INT >= 9) {
            return 6;
        }
        return 0;
    }

    public static int dm() {
        if (Build.VERSION.SDK_INT >= 9) {
            return 7;
        }
        return 1;
    }

    static String dn() {
        StringBuffer stringBuffer = new StringBuffer(256);
        stringBuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            stringBuffer.append(" ").append(Build.VERSION.RELEASE);
        }
        stringBuffer.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null) {
            stringBuffer.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                stringBuffer.append(" Build/").append(Build.DISPLAY);
            }
        }
        stringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringBuffer.toString();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String do() {
        Object object = UUID.randomUUID();
        byte[] arrby = BigInteger.valueOf(object.getLeastSignificantBits()).toByteArray();
        byte[] arrby2 = BigInteger.valueOf(object.getMostSignificantBits()).toByteArray();
        object = new BigInteger(1, arrby).toString();
        for (int i = 0; i < 2; ++i) {
            try {
                Object object2 = MessageDigest.getInstance("MD5");
                object2.update(arrby);
                object2.update(arrby2);
                byte[] arrby3 = new byte[8];
                System.arraycopy(object2.digest(), 0, arrby3, 0, 8);
                object = object2 = new BigInteger(1, arrby3).toString();
                continue;
            }
            catch (NoSuchAlgorithmException var2_5) {}
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean p(Context object) {
        boolean bl;
        Intent intent = new Intent();
        intent.setClassName((Context)object, "com.google.android.gms.ads.AdActivity");
        object = object.getPackageManager().resolveActivity(intent, 65536);
        if (object == null || object.activityInfo == null) {
            gs.W("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
            return false;
        }
        if ((object.activityInfo.configChanges & 16) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboard"));
            bl = false;
        } else {
            bl = true;
        }
        if ((object.activityInfo.configChanges & 32) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboardHidden"));
            bl = false;
        }
        if ((object.activityInfo.configChanges & 128) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "orientation"));
            bl = false;
        }
        if ((object.activityInfo.configChanges & 256) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenLayout"));
            bl = false;
        }
        if ((object.activityInfo.configChanges & 512) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "uiMode"));
            bl = false;
        }
        if ((object.activityInfo.configChanges & 1024) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenSize"));
            bl = false;
        }
        if ((object.activityInfo.configChanges & 2048) == 0) {
            gs.W(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "smallestScreenSize"));
            return false;
        }
        return bl;
    }

    public static void q(Context context) {
        if (wp) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new a(), intentFilter);
        wp = true;
    }

    private static String r(Context context) {
        return new WebView(context).getSettings().getUserAgentString();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int s(Context object) {
        int n;
        int n2 = 0;
        if (object instanceof Activity) {
            object = ((Activity)object).getWindow();
            Rect rect = new Rect();
            object.getDecorView().getWindowVisibleDisplayFrame(rect);
            n = rect.top;
            n2 = object.findViewById(16908290).getTop() - n;
            do {
                return n2 + n;
                break;
            } while (true);
        }
        n = 0;
        return n2 + n;
    }

    public static JSONObject t(Map<String, ?> map) throws JSONException {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            for (String string : map.keySet()) {
                gj.a(jSONObject, string, map.get(string));
            }
        }
        catch (ClassCastException var0_1) {
            throw new JSONException("Could not convert map to JSON: " + var0_1.getMessage());
        }
        return jSONObject;
    }

    public static int[] t(Context object) {
        object = (WindowManager)object.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        object.getDefaultDisplay().getMetrics(displayMetrics);
        float f = 160.0f / (float)displayMetrics.densityDpi;
        return new int[]{(int)((float)displayMetrics.widthPixels * f), (int)(f * (float)displayMetrics.heightPixels)};
    }

    private static final class a
    extends BroadcastReceiver {
        private a() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                wn = true;
                return;
            } else {
                if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) return;
                {
                    wn = false;
                    return;
                }
            }
        }
    }

}

