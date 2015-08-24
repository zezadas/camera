/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.b;

public final class Circle {
    private final b ajF;

    public Circle(b b) {
        this.ajF = o.i(b);
    }

    public boolean equals(Object object) {
        if (!(object instanceof Circle)) {
            return false;
        }
        try {
            boolean bl = this.ajF.a(((Circle)object).ajF);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public LatLng getCenter() {
        try {
            LatLng latLng = this.ajF.getCenter();
            return latLng;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int getFillColor() {
        try {
            int n = this.ajF.getFillColor();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public String getId() {
        try {
            String string = this.ajF.getId();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public double getRadius() {
        try {
            double d = this.ajF.getRadius();
            return d;
        }
        catch (RemoteException var3_2) {
            throw new RuntimeRemoteException(var3_2);
        }
    }

    public int getStrokeColor() {
        try {
            int n = this.ajF.getStrokeColor();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getStrokeWidth() {
        try {
            float f = this.ajF.getStrokeWidth();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getZIndex() {
        try {
            float f = this.ajF.getZIndex();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.ajF.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isVisible() {
        try {
            boolean bl = this.ajF.isVisible();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void remove() {
        try {
            this.ajF.remove();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public void setCenter(LatLng latLng) {
        try {
            this.ajF.setCenter(latLng);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setFillColor(int n) {
        try {
            this.ajF.setFillColor(n);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setRadius(double d) {
        try {
            this.ajF.setRadius(d);
            return;
        }
        catch (RemoteException var3_2) {
            throw new RuntimeRemoteException(var3_2);
        }
    }

    public void setStrokeColor(int n) {
        try {
            this.ajF.setStrokeColor(n);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setStrokeWidth(float f) {
        try {
            this.ajF.setStrokeWidth(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setVisible(boolean bl) {
        try {
            this.ajF.setVisible(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZIndex(float f) {
        try {
            this.ajF.setZIndex(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

