/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.f;

public final class Marker {
    private final f akc;

    public Marker(f f) {
        this.akc = o.i(f);
    }

    public boolean equals(Object object) {
        if (!(object instanceof Marker)) {
            return false;
        }
        try {
            boolean bl = this.akc.h(((Marker)object).akc);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getAlpha() {
        try {
            float f = this.akc.getAlpha();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public String getId() {
        try {
            String string = this.akc.getId();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public LatLng getPosition() {
        try {
            LatLng latLng = this.akc.getPosition();
            return latLng;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getRotation() {
        try {
            float f = this.akc.getRotation();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public String getSnippet() {
        try {
            String string = this.akc.getSnippet();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public String getTitle() {
        try {
            String string = this.akc.getTitle();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.akc.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void hideInfoWindow() {
        try {
            this.akc.hideInfoWindow();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public boolean isDraggable() {
        try {
            boolean bl = this.akc.isDraggable();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isFlat() {
        try {
            boolean bl = this.akc.isFlat();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isInfoWindowShown() {
        try {
            boolean bl = this.akc.isInfoWindowShown();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isVisible() {
        try {
            boolean bl = this.akc.isVisible();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void remove() {
        try {
            this.akc.remove();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public void setAlpha(float f) {
        try {
            this.akc.setAlpha(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setAnchor(float f, float f2) {
        try {
            this.akc.setAnchor(f, f2);
            return;
        }
        catch (RemoteException var3_3) {
            throw new RuntimeRemoteException(var3_3);
        }
    }

    public void setDraggable(boolean bl) {
        try {
            this.akc.setDraggable(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setFlat(boolean bl) {
        try {
            this.akc.setFlat(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setIcon(BitmapDescriptor bitmapDescriptor) {
        try {
            this.akc.n(bitmapDescriptor.mo());
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setInfoWindowAnchor(float f, float f2) {
        try {
            this.akc.setInfoWindowAnchor(f, f2);
            return;
        }
        catch (RemoteException var3_3) {
            throw new RuntimeRemoteException(var3_3);
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            this.akc.setPosition(latLng);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setRotation(float f) {
        try {
            this.akc.setRotation(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setSnippet(String string) {
        try {
            this.akc.setSnippet(string);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setTitle(String string) {
        try {
            this.akc.setTitle(string);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setVisible(boolean bl) {
        try {
            this.akc.setVisible(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void showInfoWindow() {
        try {
            this.akc.showInfoWindow();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }
}

