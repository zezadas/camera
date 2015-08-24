/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;

public class GeotagIndicator
extends Indicator {
    public GeotagIndicator(ImageView imageView) {
        super(imageView);
    }

    private int getAcquiredGpsIcon() {
        if (BrandConfig.isVerizonBrand()) {
            return R.drawable.cam_acquired_gps_vzw_icn;
        }
        return R.drawable.cam_acquired_gps_icn;
    }

    private int getAcquiringGpsResource() {
        if (BrandConfig.isVerizonBrand()) {
            return R.drawable.cam_acquiring_gps_vzw_anim;
        }
        return R.drawable.cam_acquiring_gps_anim;
    }

    public void isAcquired(boolean bl) {
        if (bl) {
            this.mView.setImageResource(this.getAcquiredGpsIcon());
            return;
        }
        this.mView.setImageResource(this.getAcquiringGpsResource());
        ((AnimationDrawable)this.mView.getDrawable()).start();
    }
}

