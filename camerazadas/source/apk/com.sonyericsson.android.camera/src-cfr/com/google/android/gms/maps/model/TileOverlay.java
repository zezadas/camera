/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.h;

public final class TileOverlay {
    private final h akq;

    public TileOverlay(h h) {
        this.akq = o.i(h);
    }

    public void clearTileCache() {
        try {
            this.akq.clearTileCache();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public boolean equals(Object object) {
        if (!(object instanceof TileOverlay)) {
            return false;
        }
        try {
            boolean bl = this.akq.a(((TileOverlay)object).akq);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public boolean getFadeIn() {
        try {
            boolean bl = this.akq.getFadeIn();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public String getId() {
        try {
            String string = this.akq.getId();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public float getZIndex() {
        try {
            float f = this.akq.getZIndex();
            return f;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.akq.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isVisible() {
        try {
            boolean bl = this.akq.isVisible();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void remove() {
        try {
            this.akq.remove();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public void setFadeIn(boolean bl) {
        try {
            this.akq.setFadeIn(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setVisible(boolean bl) {
        try {
            this.akq.setVisible(bl);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public void setZIndex(float f) {
        try {
            this.akq.setZIndex(f);
            return;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

