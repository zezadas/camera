/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.c;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.ad;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class y
extends ad.a {
    private final int Oa;
    private final c Pe;
    private final a Pf;
    private final List<Integer> Pg;

    public y(Looper var1, Context var2, int var3, c var4);

    public void bq(int var1);

    public boolean br(int var1);

    @Override
    public void c(OnEventResponse var1) throws RemoteException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends Handler {
        private final Context mContext;

        private a(Looper var1, Context var2);

        /* synthetic */ a(Looper var1, Context var2,  var3);

        public void a(c var1, DriveEvent var2);

        @Override
        public void handleMessage(Message var1);
    }

}

