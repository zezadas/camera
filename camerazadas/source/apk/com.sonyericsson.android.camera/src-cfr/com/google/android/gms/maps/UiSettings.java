/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class UiSettings {
    private final IUiSettingsDelegate ajw;

    UiSettings(IUiSettingsDelegate iUiSettingsDelegate) {
        this.ajw = iUiSettingsDelegate;
    }

    public boolean isCompassEnabled() {
        try {
            boolean bl = this.ajw.isCompassEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isIndoorLevelPickerEnabled() {
        try {
            boolean bl = this.ajw.isIndoorLevelPickerEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isMyLocationButtonEnabled() {
        try {
            boolean bl = this.ajw.isMyLocationButtonEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isRotateGesturesEnabled() {
        try {
            boolean bl = this.ajw.isRotateGesturesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isScrollGesturesEnabled() {
        try {
            boolean bl = this.ajw.isScrollGesturesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isTiltGesturesEnabled() {
        try {
            boolean bl = this.ajw.isTiltGesturesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isZoomControlsEnabled() {
        try {
            boolean bl = this.ajw.isZoomControlsEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isZoomGesturesEnabled() {
        try {
            boolean bl = this.ajw.isZoomGesturesEnabled();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setAllGesturesEnabled(boolean bl) {
        try {
            this.ajw.setAllGesturesEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setCompassEnabled(boolean bl) {
        try {
            this.ajw.setCompassEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setIndoorLevelPickerEnabled(boolean bl) {
        try {
            this.ajw.setIndoorLevelPickerEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setMyLocationButtonEnabled(boolean bl) {
        try {
            this.ajw.setMyLocationButtonEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setRotateGesturesEnabled(boolean bl) {
        try {
            this.ajw.setRotateGesturesEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setScrollGesturesEnabled(boolean bl) {
        try {
            this.ajw.setScrollGesturesEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setTiltGesturesEnabled(boolean bl) {
        try {
            this.ajw.setTiltGesturesEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZoomControlsEnabled(boolean bl) {
        try {
            this.ajw.setZoomControlsEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZoomGesturesEnabled(boolean bl) {
        try {
            this.ajw.setZoomGesturesEnabled(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

