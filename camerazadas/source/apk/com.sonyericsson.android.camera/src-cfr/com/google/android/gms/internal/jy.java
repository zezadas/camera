/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class jy {
    public static long a(InputStream inputStream, OutputStream outputStream, boolean bl) throws IOException {
        return jy.a(inputStream, outputStream, bl, 1024);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static long a(InputStream inputStream, OutputStream outputStream, boolean bl, int n) throws IOException {
        byte[] arrby = new byte[n];
        long l = 0;
        try {
            while ((n = inputStream.read(arrby, 0, arrby.length)) != -1) {
                l+=(long)n;
                outputStream.write(arrby, 0, n);
            }
            return l;
        }
        finally {
            if (bl) {
                jy.b(inputStream);
                jy.b(outputStream);
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) return;
        try {
            parcelFileDescriptor.close();
            return;
        }
        catch (IOException var0_1) {
            return;
        }
    }

    public static byte[] a(InputStream inputStream, boolean bl) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        jy.a(inputStream, byteArrayOutputStream, bl);
        return byteArrayOutputStream.toByteArray();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void b(Closeable closeable) {
        if (closeable == null) return;
        try {
            closeable.close();
            return;
        }
        catch (IOException var0_1) {
            return;
        }
    }

    public static byte[] d(InputStream inputStream) throws IOException {
        return jy.a(inputStream, true);
    }
}

