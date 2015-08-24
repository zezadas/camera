/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class LibjingleNativeSocket
implements RealTimeSocket {
    private static final String TAG = LibjingleNativeSocket.class.getSimpleName();
    private final ParcelFileDescriptor KE;
    private final InputStream XX;
    private final OutputStream XY;

    LibjingleNativeSocket(ParcelFileDescriptor parcelFileDescriptor) {
        this.KE = parcelFileDescriptor;
        this.XX = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        this.XY = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
    }

    @Override
    public void close() throws IOException {
        this.KE.close();
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return this.XX;
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return this.XY;
    }

    @Override
    public ParcelFileDescriptor getParcelFileDescriptor() throws IOException {
        return this.KE;
    }

    @Override
    public boolean isClosed() {
        try {
            this.XX.available();
            return false;
        }
        catch (IOException var1_1) {
            return true;
        }
    }
}

