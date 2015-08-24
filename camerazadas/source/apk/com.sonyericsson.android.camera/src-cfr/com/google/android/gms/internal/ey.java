/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.LinkedList;

@ez
public class ey
implements Thread.UncaughtExceptionHandler {
    private Context mContext;
    private Thread.UncaughtExceptionHandler sR;
    private Thread.UncaughtExceptionHandler sS;
    private gt sT;

    public ey(Context context, gt gt, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread.UncaughtExceptionHandler uncaughtExceptionHandler2) {
        this.sR = uncaughtExceptionHandler;
        this.sS = uncaughtExceptionHandler2;
        this.mContext = context;
        this.sT = gt;
    }

    public static ey a(Context object, Thread thread, gt gt) {
        if (object == null || thread == null || gt == null) {
            return null;
        }
        gb.bD();
        if (!ey.k((Context)object)) {
            return null;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
        object = new ey((Context)object, gt, uncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
        if (!(uncaughtExceptionHandler != null && uncaughtExceptionHandler instanceof ey)) {
            try {
                thread.setUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)object);
                return object;
            }
            catch (SecurityException var0_1) {
                gs.c("Fail to set UncaughtExceptionHandler.", var0_1);
                return null;
            }
        }
        return (ey)uncaughtExceptionHandler;
    }

    private String cw() {
        String string = Build.MODEL;
        String string2 = Build.MANUFACTURER;
        if (string.startsWith(string2)) {
            return string;
        }
        return string2 + " " + string;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Throwable d(Throwable throwable) {
        Bundle bundle = gb.bD();
        if (bundle != null && bundle.getBoolean("gads:sdk_crash_report_full_stacktrace", false)) {
            return throwable;
        }
        LinkedList<Throwable> linkedList = new LinkedList<Throwable>();
        for (; throwable != null; throwable = throwable.getCause()) {
            linkedList.push(throwable);
        }
        throwable = null;
        block1 : while (!linkedList.isEmpty()) {
            Throwable throwable2 = (Throwable)linkedList.pop();
            StackTraceElement[] arrstackTraceElement = throwable2.getStackTrace();
            ArrayList<StackTraceElement> arrayList = new ArrayList<StackTraceElement>();
            arrayList.add(new StackTraceElement(throwable2.getClass().getName(), "<filtered>", "<filtered>", 1));
            int n = arrstackTraceElement.length;
            int n2 = 0;
            boolean bl = false;
            do {
                if (n2 >= n) continue block1;
                StackTraceElement stackTraceElement = arrstackTraceElement[n2];
                if (this.G(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    bl = true;
                } else if (this.H(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                } else {
                    arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                }
                ++n2;
            } while (true);
            break;
        }
        return throwable;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static boolean k(Context object) {
        object = gb.bD();
        if (!(object != null && object.getBoolean("gads:sdk_crash_report_enabled", false))) {
            return false;
        }
        return true;
    }

    protected boolean G(String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            return false;
        }
        if (string.startsWith("com.google.android.gms.ads")) {
            return true;
        }
        if (string.startsWith("com.google.ads")) {
            return true;
        }
        try {
            boolean bl = Class.forName(string).isAnnotationPresent(ez.class);
            return bl;
        }
        catch (Exception var3_3) {
            gs.a("Fail to check class type for class " + string, var3_3);
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean H(String string) {
        if (!(!TextUtils.isEmpty((CharSequence)string) && (string.startsWith("android.") || string.startsWith("java.")))) {
            return false;
        }
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected boolean a(Throwable throwable) {
        boolean bl = true;
        if (throwable == null) {
            return false;
        }
        boolean bl2 = false;
        boolean bl3 = false;
        for (; throwable != null; throwable = throwable.getCause()) {
            for (StackTraceElement stackTraceElement : throwable.getStackTrace()) {
                if (this.G(stackTraceElement.getClassName())) {
                    bl3 = true;
                }
                if (!this.getClass().getName().equals(stackTraceElement.getClassName())) continue;
                bl2 = true;
            }
        }
        if (!bl3) return false;
        if (bl2) return false;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void b(Throwable throwable) {
        if (!(ey.k(this.mContext) && (throwable = this.d(throwable)) != null)) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(this.c(throwable));
        gj.a(this.mContext, this.sT.wD, arrayList, gb.de());
    }

    protected String c(Throwable throwable) {
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        return new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT)).appendQueryParameter("device", this.cw()).appendQueryParameter("js", this.sT.wD).appendQueryParameter("appid", this.mContext.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", stringWriter.toString()).toString();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void uncaughtException(Thread thread, Throwable throwable) {
        if (this.a(throwable)) {
            this.b(throwable);
            if (Looper.getMainLooper().getThread() != thread) {
                return;
            }
        }
        if (this.sR != null) {
            this.sR.uncaughtException(thread, throwable);
            return;
        }
        if (this.sS == null) return;
        this.sS.uncaughtException(thread, throwable);
    }
}

