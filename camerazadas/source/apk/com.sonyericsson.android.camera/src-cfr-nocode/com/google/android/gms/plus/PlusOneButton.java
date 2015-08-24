/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/*
 * Exception performing whole class analysis.
 */
public final class PlusOneButton
extends FrameLayout {
    public static final int ANNOTATION_BUBBLE = 1;
    public static final int ANNOTATION_INLINE = 2;
    public static final int ANNOTATION_NONE = 0;
    public static final int DEFAULT_ACTIVITY_REQUEST_CODE = -1;
    public static final int SIZE_MEDIUM = 1;
    public static final int SIZE_SMALL = 0;
    public static final int SIZE_STANDARD = 3;
    public static final int SIZE_TALL = 2;
    private View all;
    private int alm;
    private int aln;
    private OnPlusOneClickListener alo;
    private int mSize;
    private String uR;

    public PlusOneButton(Context var1);

    public PlusOneButton(Context var1, AttributeSet var2);

    private void G(Context var1);

    static /* synthetic */ View a(PlusOneButton var0);

    static /* synthetic */ int b(PlusOneButton var0);

    protected static int getAnnotation(Context var0, AttributeSet var1);

    protected static int getSize(Context var0, AttributeSet var1);

    public void initialize(String var1, int var2);

    public void initialize(String var1, OnPlusOneClickListener var2);

    @Override
    protected void onLayout(boolean var1, int var2, int var3, int var4, int var5);

    @Override
    protected void onMeasure(int var1, int var2);

    public void setAnnotation(int var1);

    public void setOnPlusOneClickListener(OnPlusOneClickListener var1);

    public void setSize(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class DefaultOnPlusOneClickListener
    implements View.OnClickListener,
    OnPlusOneClickListener {
        private final OnPlusOneClickListener alp;
        final /* synthetic */ PlusOneButton alq;

        public DefaultOnPlusOneClickListener(PlusOneButton var1, OnPlusOneClickListener var2);

        @Override
        public void onClick(View var1);

        @Override
        public void onPlusOneClick(Intent var1);
    }

    public static interface OnPlusOneClickListener {
        public void onPlusOneClick(Intent var1);
    }

}

