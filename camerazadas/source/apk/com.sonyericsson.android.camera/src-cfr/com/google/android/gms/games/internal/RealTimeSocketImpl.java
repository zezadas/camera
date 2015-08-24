/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.net.LocalSocket;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

final class RealTimeSocketImpl
implements RealTimeSocket {
    private ParcelFileDescriptor KE;
    private final String Xr;
    private final LocalSocket Ye;

    RealTimeSocketImpl(LocalSocket localSocket, String string) {
        this.Ye = localSocket;
        this.Xr = string;
    }

    @Override
    public void close() throws IOException {
        this.Ye.close();
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return this.Ye.getInputStream();
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return this.Ye.getOutputStream();
    }

    @Override
    public ParcelFileDescriptor getParcelFileDescriptor() throws IOException {
        if (!(this.KE != null || this.isClosed())) {
            Parcel parcel = Parcel.obtain();
            parcel.writeFileDescriptor(this.Ye.getFileDescriptor());
            parcel.setDataPosition(0);
            this.KE = parcel.readFileDescriptor();
        }
        return this.KE;
    }

    @Override
    public boolean isClosed() {
        if (!(this.Ye.isConnected() || this.Ye.isBound())) {
            return true;
        }
        return false;
    }
}

