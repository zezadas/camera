/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;

public interface ViewFinderInterface {
    public void changeLayoutTo(LayoutPattern var1);

    public boolean isHeadUpDesplayReady();

    public void onCaptureDone();

    public void onShutterDone(boolean var1);

    public void onZoomChanged(int var1, int var2);

    public void onZoomChanged(int var1, int var2, int var3);

    public void requestSetupHeadUpDisplay();

    public void requestUpdateSurfaceSize(int var1, int var2);
}

