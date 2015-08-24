/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.dynamic.g;

public final class SignInButton
extends FrameLayout
implements View.OnClickListener {
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private View Im;
    private View.OnClickListener In = null;
    private int mColor;
    private int mSize;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.setStyle(0, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void G(Context context) {
        if (this.Im != null) {
            this.removeView(this.Im);
        }
        try {
            this.Im = p.b(context, this.mSize, this.mColor);
        }
        catch (g.a var2_2) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.Im = SignInButton.a(context, this.mSize, this.mColor);
        }
        this.addView(this.Im);
        this.Im.setEnabled(this.isEnabled());
        this.Im.setOnClickListener(this);
    }

    private static Button a(Context context, int n, int n2) {
        q q = new q(context);
        q.a(context.getResources(), n, n2);
        return q;
    }

    @Override
    public void onClick(View view) {
        if (this.In != null && view == this.Im) {
            this.In.onClick(this);
        }
    }

    public void setColorScheme(int n) {
        this.setStyle(this.mSize, n);
    }

    @Override
    public void setEnabled(boolean bl) {
        super.setEnabled(bl);
        this.Im.setEnabled(bl);
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.In = onClickListener;
        if (this.Im != null) {
            this.Im.setOnClickListener(this);
        }
    }

    public void setSize(int n) {
        this.setStyle(n, this.mColor);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setStyle(int n, int n2) {
        boolean bl = n >= 0 && n < 3;
        o.a(bl, "Unknown button size %d", n);
        bl = n2 >= 0 && n2 < 2;
        o.a(bl, "Unknown color scheme %s", n2);
        this.mSize = n;
        this.mColor = n2;
        this.G(this.getContext());
    }
}

