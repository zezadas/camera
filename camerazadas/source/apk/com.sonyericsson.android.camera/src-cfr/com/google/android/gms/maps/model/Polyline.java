/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import java.util.List;

public final class Polyline {
    private final IPolylineDelegate ako;

    public Polyline(IPolylineDelegate iPolylineDelegate) {
        this.ako = o.i(iPolylineDelegate);
    }

    public boolean equals(Object object) {
        if (!(object instanceof Polyline)) {
            return false;
        }
        try {
            boolean bl = this.ako.equalsRemote(((Polyline)object).ako);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int getColor() {
        try {
            int n = this.ako.getColor();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public String getId() {
        try {
            String string = this.ako.getId();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public List<LatLng> getPoints() {
        try {
            List<LatLng> list = this.ako.getPoints();
            return list;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getWidth() {
        try {
            float f = this.ako.getWidth();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getZIndex() {
        try {
            float f = this.ako.getZIndex();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.ako.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isGeodesic() {
        try {
            boolean bl = this.ako.isGeodesic();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isVisible() {
        try {
            boolean bl = this.ako.isVisible();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void remove() {
        try {
            this.ako.remove();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public void setColor(int n) {
        try {
            this.ako.setColor(n);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setGeodesic(boolean bl) {
        try {
            this.ako.setGeodesic(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setPoints(List<LatLng> list) {
        try {
            this.ako.setPoints(list);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setVisible(boolean bl) {
        try {
            this.ako.setVisible(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setWidth(float f) {
        try {
            this.ako.setWidth(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZIndex(float f) {
        try {
            this.ako.setZIndex(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

