/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.Tile;

public interface TileProvider {
    public static final Tile NO_TILE;

    static;

    public Tile getTile(int var1, int var2, int var3);
}

