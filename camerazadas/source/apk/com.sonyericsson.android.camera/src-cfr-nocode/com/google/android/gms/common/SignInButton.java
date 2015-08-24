/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;

/*
 * Exception performing whole class analysis.
 */
public final class SignInButton
extends FrameLayout
implements View.OnClickListener {
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private View Im;
    private View.OnClickListener In;
    private int mColor;
    private int mSize;

    public SignInButton(Context var1);

    public SignInButton(Context var1, AttributeSet var2);

    public SignInButton(Context var1, AttributeSet var2, int var3);

    private void G(Context var1);

    private static Button a(Context var0, int var1, int var2);

    @Override
    public void onClick(View var1);

    public void setColorScheme(int var1);

    @Override
    public void setEnabled(boolean var1);

    @Override
    public void setOnClickListener(View.OnClickListener var1);

    public void setSize(int var1);

    public void setStyle(int var1, int var2);
}

