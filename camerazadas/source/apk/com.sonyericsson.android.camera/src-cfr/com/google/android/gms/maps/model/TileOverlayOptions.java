/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.v;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileProvider;
import com.google.android.gms.maps.model.internal.i;
import com.google.android.gms.maps.model.w;
import com.google.android.gms.maps.model.x;

public final class TileOverlayOptions
implements SafeParcelable {
    public static final w CREATOR = new w();
    private final int BR;
    private float ajL;
    private boolean ajM = true;
    private i akr;
    private TileProvider aks;
    private boolean akt = true;

    public TileOverlayOptions() {
        this.BR = 1;
    }

    /*
     * Enabled aggressive block sorting
     */
    TileOverlayOptions(int n, IBinder object, boolean bl, float f, boolean bl2) {
        this.BR = n;
        this.akr = i.a.by((IBinder)object);
        object = this.akr == null ? null : new TileProvider(){
            private final i aku;

            @Override
            public Tile getTile(int n, int n2, int n3) {
                try {
                    Tile tile = this.aku.getTile(n, n2, n3);
                    return tile;
                }
                catch (RemoteException var4_5) {
                    return null;
                }
            }
        };
        this.aks = object;
        this.ajM = bl;
        this.ajL = f;
        this.akt = bl2;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public TileOverlayOptions fadeIn(boolean bl) {
        this.akt = bl;
        return this;
    }

    public boolean getFadeIn() {
        return this.akt;
    }

    public TileProvider getTileProvider() {
        return this.aks;
    }

    int getVersionCode() {
        return this.BR;
    }

    public float getZIndex() {
        return this.ajL;
    }

    public boolean isVisible() {
        return this.ajM;
    }

    IBinder mR() {
        return this.akr.asBinder();
    }

    /*
     * Enabled aggressive block sorting
     */
    public TileOverlayOptions tileProvider(TileProvider object) {
        this.aks = object;
        object = this.aks == null ? null : new i.a((TileProvider)object){
            final /* synthetic */ TileProvider akw;

            @Override
            public Tile getTile(int n, int n2, int n3) {
                return this.akw.getTile(n, n2, n3);
            }
        };
        this.akr = object;
        return this;
    }

    public TileOverlayOptions visible(boolean bl) {
        this.ajM = bl;
        return this;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        if (v.mM()) {
            x.a(this, parcel, n);
            return;
        }
        w.a(this, parcel, n);
    }

    public TileOverlayOptions zIndex(float f) {
        this.ajL = f;
        return this;
    }

}

