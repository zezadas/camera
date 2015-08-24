/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.plus.internal.g;

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

    public PlusOneButton(Context context) {
        this(context, null);
    }

    public PlusOneButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSize = PlusOneButton.getSize(context, attributeSet);
        this.alm = PlusOneButton.getAnnotation(context, attributeSet);
        this.aln = -1;
        this.G(this.getContext());
        if (this.isInEditMode()) {
            // empty if block
        }
    }

    private void G(Context context) {
        if (this.all != null) {
            this.removeView(this.all);
        }
        this.all = g.a(context, this.mSize, this.alm, this.uR, this.aln);
        this.setOnPlusOneClickListener(this.alo);
        this.addView(this.all);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected static int getAnnotation(Context object, AttributeSet attributeSet) {
        int n = 0;
        if ("INLINE".equalsIgnoreCase((String)(object = r.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", (Context)object, attributeSet, true, false, "PlusOneButton")))) {
            return 2;
        }
        if ("NONE".equalsIgnoreCase((String)object)) return n;
        return 1;
    }

    protected static int getSize(Context object, AttributeSet attributeSet) {
        if ("SMALL".equalsIgnoreCase((String)(object = r.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", (Context)object, attributeSet, true, false, "PlusOneButton")))) {
            return 0;
        }
        if ("MEDIUM".equalsIgnoreCase((String)object)) {
            return 1;
        }
        if ("TALL".equalsIgnoreCase((String)object)) {
            return 2;
        }
        return 3;
    }

    public void initialize(String string, int n) {
        o.a(this.getContext() instanceof Activity, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener).");
        this.uR = string;
        this.aln = n;
        this.G(this.getContext());
    }

    public void initialize(String string, OnPlusOneClickListener onPlusOneClickListener) {
        this.uR = string;
        this.aln = 0;
        this.G(this.getContext());
        this.setOnPlusOneClickListener(onPlusOneClickListener);
    }

    @Override
    protected void onLayout(boolean bl, int n, int n2, int n3, int n4) {
        this.all.layout(0, 0, n3 - n, n4 - n2);
    }

    @Override
    protected void onMeasure(int n, int n2) {
        View view = this.all;
        this.measureChild(view, n, n2);
        this.setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setAnnotation(int n) {
        this.alm = n;
        this.G(this.getContext());
    }

    public void setOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
        this.alo = onPlusOneClickListener;
        this.all.setOnClickListener(new DefaultOnPlusOneClickListener(onPlusOneClickListener));
    }

    public void setSize(int n) {
        this.mSize = n;
        this.G(this.getContext());
    }

    protected class DefaultOnPlusOneClickListener
    implements View.OnClickListener,
    OnPlusOneClickListener {
        private final OnPlusOneClickListener alp;

        public DefaultOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
            this.alp = onPlusOneClickListener;
        }

        @Override
        public void onClick(View object) {
            object = (Intent)PlusOneButton.this.all.getTag();
            if (this.alp != null) {
                this.alp.onPlusOneClick((Intent)object);
                return;
            }
            this.onPlusOneClick((Intent)object);
        }

        @Override
        public void onPlusOneClick(Intent intent) {
            Context context = PlusOneButton.this.getContext();
            if (context instanceof Activity && intent != null) {
                ((Activity)context).startActivityForResult(intent, PlusOneButton.this.aln);
            }
        }
    }

    public static interface OnPlusOneClickListener {
        public void onPlusOneClick(Intent var1);
    }

}

