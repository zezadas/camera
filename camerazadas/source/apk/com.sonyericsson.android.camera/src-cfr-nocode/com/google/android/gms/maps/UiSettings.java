/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IUiSettingsDelegate;

/*
 * Exception performing whole class analysis.
 */
public final class UiSettings {
    private final IUiSettingsDelegate ajw;

    UiSettings(IUiSettingsDelegate var1);

    public boolean isCompassEnabled();

    public boolean isIndoorLevelPickerEnabled();

    public boolean isMyLocationButtonEnabled();

    public boolean isRotateGesturesEnabled();

    public boolean isScrollGesturesEnabled();

    public boolean isTiltGesturesEnabled();

    public boolean isZoomControlsEnabled();

    public boolean isZoomGesturesEnabled();

    public void setAllGesturesEnabled(boolean var1);

    public void setCompassEnabled(boolean var1);

    public void setIndoorLevelPickerEnabled(boolean var1);

    public void setMyLocationButtonEnabled(boolean var1);

    public void setRotateGesturesEnabled(boolean var1);

    public void setScrollGesturesEnabled(boolean var1);

    public void setTiltGesturesEnabled(boolean var1);

    public void setZoomControlsEnabled(boolean var1);

    public void setZoomGesturesEnabled(boolean var1);
}

