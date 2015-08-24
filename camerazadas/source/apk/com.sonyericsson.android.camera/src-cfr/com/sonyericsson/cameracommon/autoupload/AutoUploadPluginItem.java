/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.graphics.drawable.Drawable;

public class AutoUploadPluginItem {
    private boolean mChecked;
    private final Drawable mIcon;
    private final String mPackageClassName;
    private final String mTitle;

    public AutoUploadPluginItem(String string, Drawable drawable, String string2) {
        this.mTitle = string;
        this.mIcon = drawable;
        this.mPackageClassName = string2;
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public String getPackageClassName() {
        return this.mPackageClassName;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public boolean isChecked() {
        return this.mChecked;
    }

    public void setChecked(boolean bl) {
        this.mChecked = bl;
    }
}

