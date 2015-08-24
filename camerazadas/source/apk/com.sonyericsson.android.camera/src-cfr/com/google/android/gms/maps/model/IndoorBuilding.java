/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.model.IndoorLevel;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class IndoorBuilding {
    private final d ajW;

    public IndoorBuilding(d d) {
        this.ajW = o.i(d);
    }

    public boolean equals(Object object) {
        if (!(object instanceof IndoorBuilding)) {
            return false;
        }
        try {
            boolean bl = this.ajW.b(((IndoorBuilding)object).ajW);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int getActiveLevelIndex() {
        try {
            int n = this.ajW.getActiveLevelIndex();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public int getDefaultLevelIndex() {
        try {
            int n = this.ajW.getActiveLevelIndex();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public List<IndoorLevel> getLevels() {
        ArrayList<IndoorLevel> arrayList;
        try {
            Object object = this.ajW.getLevels();
            arrayList = new ArrayList<IndoorLevel>(object.size());
            object = object.iterator();
            while (object.hasNext()) {
                arrayList.add(new IndoorLevel(e.a.bt((IBinder)object.next())));
            }
        }
        catch (RemoteException var1_3) {
            throw new RuntimeRemoteException(var1_3);
        }
        return arrayList;
    }

    public int hashCode() {
        try {
            int n = this.ajW.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }

    public boolean isUnderground() {
        try {
            boolean bl = this.ajW.isUnderground();
            return bl;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

