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

    public void ay(int var1);

    public void g(Uri var1);

    public int gM();

    @Override
    protected void onDraw(Canvas var1);

    @Override
    protected void onMeasure(int var1, int var2);

    public static interface a {
        public Path g(int var1, int var2);
    }

}

