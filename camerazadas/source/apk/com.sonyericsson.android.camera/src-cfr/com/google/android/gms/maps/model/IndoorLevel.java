/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.internal.e;

public final class IndoorLevel {
    private final e ajX;

    public IndoorLevel(e e) {
        this.ajX = o.i(e);
    }

    public void activate() {
        try {
            this.ajX.activate();
            return;
        }
        catch (RemoteException var1_1) {
            throw new RuntimeRemoteException(var1_1);
        }
    }

    public boolean equals(Object object) {
        if (!(object instanceof IndoorLevel)) {
            return false;
        }
        try {
            boolean bl = this.ajX.a(((IndoorLevel)object).ajX);
            return bl;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public String getName() {
        try {
            String string = this.ajX.getName();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public String getShortName() {
        try {
            String string = this.ajX.getShortName();
            return string;
        }
        catch (RemoteException var1_2) {
            throw new RuntimeRemoteException(var1_2);
        }
    }

    public int hashCode() {
        try {
            int n = this.ajX.hashCodeRemote();
            return n;
        }
        catch (RemoteException var2_2) {
            throw new RuntimeRemoteException(var2_2);
        }
    }
}

