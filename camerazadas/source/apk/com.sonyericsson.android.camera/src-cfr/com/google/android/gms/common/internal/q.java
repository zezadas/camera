/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.Button;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.o;

public final class q
extends Button {
    public q(Context context) {
        this(context, null);
    }

    public q(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    private int b(int n, int n2, int n3) {
        switch (n) {
            default: {
                throw new IllegalStateException("Unknown color scheme: " + n);
            }
            case 1: {
                n2 = n3;
            }
            case 0: 
        }
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(Resources resources, int n, int n2) {
        switch (n) {
            default: {
                throw new IllegalStateException("Unknown button size: " + n);
            }
            case 0: 
            case 1: {
                n = this.b(n2, R.drawable.common_signin_btn_text_dark, R.drawable.common_signin_btn_text_light);
                break;
            }
            case 2: {
                n = this.b(n2, R.drawable.common_signin_btn_icon_dark, R.drawable.common_signin_btn_icon_light);
            }
        }
        if (n == -1) {
            throw new IllegalStateException("Could not find background resource!");
        }
        this.setBackgroundDrawable(resources.getDrawable(n));
    }

    private void c(Resources resources) {
        this.setTypeface(Typeface.DEFAULT_BOLD);
        this.setTextSize(14.0f);
        float f = resources.getDisplayMetrics().density;
        this.setMinHeight((int)(f * 48.0f + 0.5f));
        this.setMinWidth((int)(f * 48.0f + 0.5f));
    }

    private void c(Resources resources, int n, int n2) {
        this.setTextColor(resources.getColorStateList(this.b(n2, R.color.common_signin_btn_text_dark, R.color.common_signin_btn_text_light)));
        switch (n) {
            default: {
                throw new IllegalStateException("Unknown button size: " + n);
            }
            case 0: {
                this.setText((CharSequence)resources.getString(R.string.common_signin_button_text));
                return;
            }
            case 1: {
                this.setText((CharSequence)resources.getString(R.string.common_signin_button_text_long));
                return;
            }
            case 2: 
        }
        this.setText(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void a(Resources resources, int n, int n2) {
        boolean bl = n >= 0 && n < 3;
        o.a(bl, "Unknown button size %d", n);
        bl = n2 >= 0 && n2 < 2;
        o.a(bl, "Unknown color scheme %s", n2);
        this.c(resources);
        this.b(resources, n, n2);
        this.c(resources, n, n2);
    }
}

