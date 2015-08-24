/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.c;

public final class GroundOverlay {
    private final c ajN;

    public GroundOverlay(c c) {
        this.ajN = o.i(c);
    }

    public boolean equals(Object object) {
        if (!(object instanceof GroundOverlay)) {
            return false;
        }
        try {
            boolean bl = this.ajN.a(((GroundOverlay)object).ajN);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getBearing() {
        try {
            float f = this.ajN.getBearing();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public LatLngBounds getBounds() {
        try {
            LatLngBounds latLngBounds = this.ajN.getBounds();
            return latLngBounds;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getHeight() {
        try {
            float f = this.ajN.getHeight();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public String getId() {
        try {
            String string = this.ajN.getId();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public LatLng getPosition() {
        try {
            LatLng latLng = this.ajN.getPosition();
            return latLng;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getTransparency() {
        try {
            float f = this.ajN.getTransparency();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getWidth() {
        try {
            float f = this.ajN.getWidth();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getZIndex() {
        try {
            float f = this.ajN.getZIndex();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.ajN.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isVisible() {
        try {
            boolean bl = this.ajN.isVisible();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void remove() {
        try {
            this.ajN.remove();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public void setBearing(float f) {
        try {
            this.ajN.setBearing(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setDimensions(float f) {
        try {
            this.ajN.setDimensions(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setDimensions(float f, float f2) {
        try {
            this.ajN.a(f, f2);
            return;
        }
        catch (RemoteException var3_3) {
            throw new RuntimeRemoteException(var3_3);
        }
    }

    public void setImage(BitmapDescriptor bitmapDescriptor) {
        try {
            this.ajN.m(bitmapDescriptor.mo());
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            this.ajN.setPosition(latLng);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setPositionFromBounds(LatLngBounds latLngBounds) {
        try {
            this.ajN.setPositionFromBounds(latLngBounds);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setTransparency(float f) {
        try {
            this.ajN.setTransparency(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setVisible(boolean bl) {
        try {
            this.ajN.setVisible(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZIndex(float f) {
        try {
            this.ajN.setZIndex(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

