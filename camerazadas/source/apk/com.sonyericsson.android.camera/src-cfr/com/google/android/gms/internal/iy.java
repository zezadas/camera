/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

public final class iy
extends ImageView {
    private Uri Lj;
    private int Lk;
    private int Ll;
    private a Lm;
    private int Ln;
    private float Lo;

    public void ay(int n) {
        this.Lk = n;
    }

    public void g(Uri uri) {
        this.Lj = uri;
    }

    public int gM() {
        return this.Lk;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        if (this.Lm != null) {
            canvas.clipPath(this.Lm.g(this.getWidth(), this.getHeight()));
        }
        super.onDraw(canvas);
        if (this.Ll != 0) {
            canvas.drawColor(this.Ll);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onMeasure(int n, int n2) {
        super.onMeasure(n, n2);
        switch (this.Ln) {
            default: {
                return;
            }
            case 1: {
                n = this.getMeasuredHeight();
                n2 = (int)((float)n * this.Lo);
                break;
            }
            case 2: {
                n2 = this.getMeasuredWidth();
                n = (int)((float)n2 / this.Lo);
            }
        }
        this.setMeasuredDimension(n2, n);
    }

    public static interface a {
        public Path g(int var1, int var2);
    }

}

