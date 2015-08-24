/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.games.multiplayer.realtime.RealTimeSocket;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class LibjingleNativeSocket
implements RealTimeSocket {
    private static final String TAG;
    private final ParcelFileDescriptor KE;
    private final InputStream XX;
    private final OutputStream XY;

    static;

    LibjingleNativeSocket(ParcelFileDescriptor var1);

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

