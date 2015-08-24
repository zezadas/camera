/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.widget.ImageView;
import com.sonyericsson.cameracommon.utility.RotationUtil;

public class Indicator {
    protected boolean mOn;
    protected final ImageView mView;
    protected boolean mVisible;

    public Indicator(ImageView imageView) {
        this.mView = imageView;
        this.mOn = false;
        this.mVisible = false;
        this.update();
    }

    private void update() {
        if (this.mOn) {
            if (this.mVisible) {
                this.mView.setVisibility(0);
                return;
            }
            this.mView.setVisibility(4);
            return;
        }
        this.mView.setVisibility(8);
    }

    public void hide() {
        this.mVisible = false;
        this.update();
    }

    public void set(boolean bl) {
        this.mOn = bl;
        this.update();
    }

    public void setImageResource(int n) {
        this.mView.setImageResource(n);
    }

    public void setSensorOrientation(int n) {
        this.mView.setRotation(RotationUtil.getAngle(n));
    }

    public void show() {
        this.mVisible = true;
        this.update();
    }
}

