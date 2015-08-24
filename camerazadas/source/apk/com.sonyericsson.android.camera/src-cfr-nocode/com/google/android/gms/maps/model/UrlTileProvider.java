/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileProvider;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

/*
 * Exception performing whole class analysis.
 */
public abstract class UrlTileProvider
implements TileProvider {
    private final int lf;
    private final int lg;

    public UrlTileProvider(int var1, int var2);

    private static long a(InputStream var0, OutputStream var1) throws IOException;

    private static byte[] e(InputStream var0) throws IOException;

    @Override
    public final Tile getTile(int var1, int var2, int var3);

    public abstract URL getTileUrl(int var1, int var2, int var3);
}

