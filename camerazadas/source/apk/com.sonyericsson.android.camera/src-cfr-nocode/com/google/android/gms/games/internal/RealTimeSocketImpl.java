/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.net.LocalSocket;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 */
final class RealTimeSocketImpl
implements RealTimeSocket {
    private ParcelFileDescriptor KE;
    private final String Xr;
    private final LocalSocket Ye;

    RealTimeSocketImpl(LocalSocket var1, String var2);

    @Override
    public void close() throws IOException;

    @Override
    public InputStream getInputStream() throws IOException;

    @Override
    public OutputStream getOutputStream() throws IOException;

    @Override
    public ParcelFileDescriptor getParcelFileDescriptor() throws IOException;

    @Override
    public boolean isClosed();
}

