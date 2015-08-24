/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.autoupload;

import android.graphics.drawable.Drawable;

/*
 * Exception performing whole class analysis.
 */
public class AutoUploadPluginItem {
    private boolean mChecked;
    private final Drawable mIcon;
    private final String mPackageClassName;
    private final String mTitle;

    public AutoUploadPluginItem(String var1, Drawable var2, String var3);

    public Drawable getIcon();

    public String getPackageClassName();

    public String getTitle();

    public boolean isChecked();

    public void setChecked(boolean var1);
}

