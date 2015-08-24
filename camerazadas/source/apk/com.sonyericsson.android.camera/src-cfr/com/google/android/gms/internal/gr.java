/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

@ez
public final class gr {
    public static final Handler wC = new Handler(Looper.getMainLooper());

    public static String R(String string) {
        for (int i = 0; i < 2; ++i) {
            try {
                Object object = MessageDigest.getInstance("MD5");
                object.update(string.getBytes());
                object = String.format(Locale.US, "%032X", new BigInteger(1, object.digest()));
                return object;
            }
            catch (NoSuchAlgorithmException var2_2) {
                continue;
            }
        }
        return null;
    }

    public static int a(Context context, int n) {
        return gr.a(context.getResources().getDisplayMetrics(), n);
    }

    public static int a(DisplayMetrics displayMetrics, int n) {
        return (int)TypedValue.applyDimension(1, n, displayMetrics);
    }

    public static void a(ViewGroup viewGroup, ay ay, String string) {
        gr.a(viewGroup, ay, string, -16777216, -1);
    }

    private static void a(ViewGroup viewGroup, ay ay, String object, int n, int n2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText((CharSequence)object);
        textView.setTextColor(n);
        textView.setBackgroundColor(n2);
        object = new FrameLayout(context);
        object.setBackgroundColor(n);
        n = gr.a(context, 3);
        object.addView((View)textView, new FrameLayout.LayoutParams(ay.widthPixels - n, ay.heightPixels - n, 17));
        viewGroup.addView((View)object, ay.widthPixels, ay.heightPixels);
    }

    public static void a(ViewGroup viewGroup, ay ay, String string, String string2) {
        gs.W(string2);
        gr.a(viewGroup, ay, string, -65536, -16777216);
    }

    public static boolean dr() {
        return Build.DEVICE.startsWith("generic");
    }

    public static boolean ds() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static String v(Context object) {
        if ((object = Settings.Secure.getString(object.getContentResolver(), "android_id")) == null || gr.dr()) {
            object = "emulator";
        }
        return gr.R((String)object);
    }
}

