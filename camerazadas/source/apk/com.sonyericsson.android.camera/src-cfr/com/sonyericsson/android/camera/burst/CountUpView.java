/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.burst;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Locale;

public class CountUpView {
    public static final String TAG = CountUpView.class.getSimpleName();

    public static FrameLayout createCountUpView(Activity callback) {
        LayoutInflater layoutInflater = callback.getLayoutInflater();
        callback = null;
        if (layoutInflater != null) {
            callback = (FrameLayout)layoutInflater.inflate(2130903048, null);
            callback.findViewById(2131689531).setBackgroundResource(2130837611);
        }
        return callback;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void setCount(View view, int n) {
        view = (TextView)view.findViewById(2131689532);
        if (n > 0 && n <= 999) {
            view.setText((CharSequence)("" + n));
            return;
        } else {
            if (999 >= n) return;
            {
                view.setText((CharSequence)("" + 999 + String.format(Locale.US, "+", new Object[0])));
                return;
            }
        }
    }
}

