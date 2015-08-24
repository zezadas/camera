/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.ad;
import java.util.concurrent.CountDownLatch;

/*
 * Exception performing whole class analysis.
 */
public abstract class DriveEventService
extends Service
implements ChangeListener,
CompletionListener {
    public static final String ACTION_HANDLE_EVENT = "com.google.android.gms.drive.events.HANDLE_EVENT";
    private CountDownLatch NV;
    a NW;
    int NX;
    private final String mName;

    protected DriveEventService();

    protected DriveEventService(String var1);

    static /* synthetic */ void a(DriveEventService var0) throws SecurityException;

    static /* synthetic */ void a(DriveEventService var0, OnEventResponse var1);

    private void a(OnEventResponse var1);

    static /* synthetic */ CountDownLatch b(DriveEventService var0);

    private boolean bc(int var1);

    private void hV() throws SecurityException;

    protected int getCallingUid();

    @Override
    public final IBinder onBind(Intent var1);

    @Override
    public void onChange(ChangeEvent var1);

    @Override
    public void onCompletion(CompletionEvent var1);

    @Override
    public void onDestroy();

    @Override
    public boolean onUnbind(Intent var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class a
    extends Handler {
        final /* synthetic */ DriveEventService NZ;

        a(DriveEventService var1);

        static /* synthetic */ Message a(a var0);

        static /* synthetic */ Message a(a var0, OnEventResponse var1);

        private Message b(OnEventResponse var1);

        private Message hW();

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class b
    extends ad.a {
        final /* synthetic */ DriveEventService NZ;

        b(DriveEventService var1);

        @Override
        public void c(OnEventResponse var1) throws RemoteException;
    }

}

