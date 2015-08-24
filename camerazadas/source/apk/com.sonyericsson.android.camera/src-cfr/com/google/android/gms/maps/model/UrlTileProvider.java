/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileProvider;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public abstract class UrlTileProvider
implements TileProvider {
    private final int lf;
    private final int lg;

    public UrlTileProvider(int n, int n2) {
        this.lf = n;
        this.lg = n2;
    }

    private static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] arrby = new byte[4096];
        long l = 0;
        int n;
        while ((n = inputStream.read(arrby)) != -1) {
            outputStream.write(arrby, 0, n);
            l+=(long)n;
        }
        return l;
    }

    private static byte[] e(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        UrlTileProvider.a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override
    public final Tile getTile(int n, int n2, int n3) {
        Object object = this.getTileUrl(n, n2, n3);
        if (object == null) {
            return NO_TILE;
        }
        try {
            object = new Tile(this.lf, this.lg, UrlTileProvider.e(object.openStream()));
            return object;
        }
        catch (IOException var4_5) {
            return null;
        }
    }

    public abstract URL getTileUrl(int var1, int var2, int var3);
}

