/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileProvider;
import com.google.android.gms.maps.model.internal.i;
import com.google.android.gms.maps.model.w;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class TileOverlayOptions
implements SafeParcelable {
    public static final w CREATOR;
    private final int BR;
    private float ajL;
    private boolean ajM;
    private i akr;
    private TileProvider aks;
    private boolean akt;

    static;

    public TileOverlayOptions();

    TileOverlayOptions(int var1, IBinder var2, boolean var3, float var4, boolean var5);

    static /* synthetic */ i a(TileOverlayOptions var0);

    @Override
    public int describeContents();

    public TileOverlayOptions fadeIn(boolean var1);

    public boolean getFadeIn();

    public TileProvider getTileProvider();

    int getVersionCode();

    public float getZIndex();

    public boolean isVisible();

    IBinder mR();

    public TileOverlayOptions tileProvider(TileProvider var1);

    public TileOverlayOptions visible(boolean var1);

    @Override
    public void writeToParcel(Parcel var1, int var2);

    public TileOverlayOptions zIndex(float var1);

}

