/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.g;
import java.util.List;

public final class Polygon {
    private final g akk;

    public Polygon(g g) {
        this.akk = o.i(g);
    }

    public boolean equals(Object object) {
        if (!(object instanceof Polygon)) {
            return false;
        }
        try {
            boolean bl = this.akk.a(((Polygon)object).akk);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int getFillColor() {
        try {
            int n = this.akk.getFillColor();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public List<List<LatLng>> getHoles() {
        try {
            List list = this.akk.getHoles();
            return list;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public String getId() {
        try {
            String string = this.akk.getId();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public List<LatLng> getPoints() {
        try {
            List<LatLng> list = this.akk.getPoints();
            return list;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int getStrokeColor() {
        try {
            int n = this.akk.getStrokeColor();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getStrokeWidth() {
        try {
            float f = this.akk.getStrokeWidth();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public float getZIndex() {
        try {
            float f = this.akk.getZIndex();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.akk.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isGeodesic() {
        try {
            boolean bl = this.akk.isGeodesic();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isVisible() {
        try {
            boolean bl = this.akk.isVisible();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void remove() {
        try {
            this.akk.remove();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public void setFillColor(int n) {
        try {
            this.akk.setFillColor(n);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setGeodesic(boolean bl) {
        try {
            this.akk.setGeodesic(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setHoles(List<? extends List<LatLng>> list) {
        try {
            this.akk.setHoles(list);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setPoints(List<LatLng> list) {
        try {
            this.akk.setPoints(list);
            return;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public void setStrokeColor(int n) {
        try {
            this.akk.setStrokeColor(n);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setStrokeWidth(float f) {
        try {
            this.akk.setStrokeWidth(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setVisible(boolean bl) {
        try {
            this.akk.setVisible(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZIndex(float f) {
        try {
            this.akk.setZIndex(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

