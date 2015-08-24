/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.c;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.ad;
import com.google.android.gms.drive.internal.v;
import java.util.ArrayList;
import java.util.List;

public class y
extends ad.a {
    private final int Oa;
    private final c Pe;
    private final a Pf;
    private final List<Integer> Pg = new ArrayList<Integer>();

    public y(Looper looper, Context context, int n, c c) {
        this.Oa = n;
        this.Pe = c;
        this.Pf = new a(looper, context);
    }

    public void bq(int n) {
        this.Pg.add(n);
    }

    public boolean br(int n) {
        return this.Pg.contains(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void c(OnEventResponse onEventResponse) throws RemoteException {
        DriveEvent driveEvent = onEventResponse.ih();
        boolean bl = this.Oa == driveEvent.getType();
        o.I(bl);
        o.I(this.Pg.contains(driveEvent.getType()));
        this.Pf.a(this.Pe, driveEvent);
    }

    private static class a
    extends Handler {
        private final Context mContext;

        private a(Looper looper, Context context) {
            super(looper);
            this.mContext = context;
        }

        public void a(c c, DriveEvent driveEvent) {
            this.sendMessage(this.obtainMessage(1, new Pair<c, DriveEvent>(c, driveEvent)));
        }

        @Override
        public void handleMessage(Message object) {
            switch (object.what) {
                default: {
                    v.e(this.mContext, "EventCallback", "Don't know how to handle this event");
                    return;
                }
                case 1: 
            }
            Object object2 = (Pair)object.obj;
            object = (c)object2.first;
            object2 = (DriveEvent)object2.second;
            switch (object2.getType()) {
                default: {
                    v.p("EventCallback", "Unexpected event: " + object2);
                    return;
                }
                case 1: {
                    if (object instanceof DriveEvent.Listener) {
                        ((DriveEvent.Listener)object).onEvent((ChangeEvent)object2);
                        return;
                    }
                    ((ChangeListener)object).onChange((ChangeEvent)object2);
                    return;
                }
                case 2: 
            }
            ((CompletionListener)object).onCompletion((CompletionEvent)object2);
        }
    }

}

