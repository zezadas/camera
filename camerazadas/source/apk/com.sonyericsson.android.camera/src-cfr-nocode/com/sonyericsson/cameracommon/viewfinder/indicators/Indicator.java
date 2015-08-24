/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.widget.ImageView;

/*
 * Exception performing whole class analysis.
 */
public class Indicator {
    protected boolean mOn;
    protected final ImageView mView;
    protected boolean mVisible;

    public Indicator(ImageView var1);

    private void update();

    public void hide();

    public void set(boolean var1);

    public void setImageResource(int var1);

    public void setSensorOrientation(int var1);

    public void show();
}

