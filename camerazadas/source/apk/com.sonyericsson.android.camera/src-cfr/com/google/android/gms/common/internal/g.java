/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.e;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class g
implements Handler.Callback {
    private static final Object LS = new Object();
    private static g LT;
    private final HashMap<String, a> LU;
    private final Context mD;
    private final Handler mHandler;

    private g(Context context) {
        this.mHandler = new Handler(context.getMainLooper(), this);
        this.LU = new HashMap();
        this.mD = context.getApplicationContext();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static g J(Context context) {
        Object object = LS;
        synchronized (object) {
            if (LT == null) {
                LT = new g(context.getApplicationContext());
            }
            return LT;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean a(String object, e<?> object2) {
        HashMap<String, a> hashMap = this.LU;
        synchronized (hashMap) {
            a a = this.LU.get(object);
            if (a == null) {
                a = new a((String)object);
                a.a(object2);
                object2 = new Intent((String)object).setPackage("com.google.android.gms");
                a.J(this.mD.bindService((Intent)object2, a.gW(), 129));
                this.LU.put((String)object, a);
                object = a;
                return object.isBound();
            } else {
                this.mHandler.removeMessages(0, a);
                if (a.c(object2)) {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + (String)object);
                }
                a.a(object2);
                switch (a.getState()) {
                    case 1: {
                        object2.onServiceConnected(a.getComponentName(), a.getBinder());
                        object = a;
                        return object.isBound();
                    }
                    case 2: {
                        object = new Intent((String)object).setPackage("com.google.android.gms");
                        a.J(this.mD.bindService((Intent)object, a.gW(), 129));
                        object = a;
                        return object.isBound();
                    }
                    default: {
                        object = a;
                    }
                }
            }
            return object.isBound();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(String object, e<?> e) {
        HashMap<String, a> hashMap = this.LU;
        synchronized (hashMap) {
            a a = this.LU.get(object);
            if (a == null) {
                throw new IllegalStateException("Nonexistent connection status for service action: " + (String)object);
            }
            if (!a.c(e)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + (String)object);
            }
            a.b(e);
            if (a.gY()) {
                object = this.mHandler.obtainMessage(0, a);
                this.mHandler.sendMessageDelayed((Message)object, 5000);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public boolean handleMessage(Message object) {
        switch (object.what) {
            default: {
                return false;
            }
            case 0: 
        }
        a a = (a)object.obj;
        object = this.LU;
        synchronized (object) {
            if (a.gY()) {
                this.mD.unbindService(a.gW());
                this.LU.remove(a.gX());
            }
            return true;
        }
    }

    final class com.google.android.gms.common.internal.g$a {
        private final String LV;
        private final a LW;
        private final HashSet<e<?>> LX;
        private boolean LY;
        private IBinder LZ;
        private ComponentName Ma;
        private int mState;

        public com.google.android.gms.common.internal.g$a(String string) {
            this.LV = string;
            this.LW = new a();
            this.LX = new HashSet();
            this.mState = 0;
        }

        public void J(boolean bl) {
            this.LY = bl;
        }

        public void a(e<?> e) {
            this.LX.add(e);
        }

        public void b(e<?> e) {
            this.LX.remove(e);
        }

        public boolean c(e<?> e) {
            return this.LX.contains(e);
        }

        public a gW() {
            return this.LW;
        }

        public String gX() {
            return this.LV;
        }

        public boolean gY() {
            return this.LX.isEmpty();
        }

        public IBinder getBinder() {
            return this.LZ;
        }

        public ComponentName getComponentName() {
            return this.Ma;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.LY;
        }

        public class a
        implements ServiceConnection {
            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                HashMap hashMap = g.this.LU;
                synchronized (hashMap) {
                    a.this.LZ = iBinder;
                    a.this.Ma = componentName;
                    Iterator iterator = a.this.LX.iterator();
                    do {
                        if (!iterator.hasNext()) {
                            a.this.mState = 1;
                            return;
                        }
                        ((e.f)iterator.next()).onServiceConnected(componentName, iBinder);
                    } while (true);
                }
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void onServiceDisconnected(ComponentName componentName) {
                HashMap hashMap = g.this.LU;
                synchronized (hashMap) {
                    a.this.LZ = null;
                    a.this.Ma = componentName;
                    Iterator iterator = a.this.LX.iterator();
                    do {
                        if (!iterator.hasNext()) {
                            a.this.mState = 2;
                            return;
                        }
                        ((e.f)iterator.next()).onServiceDisconnected(componentName);
                    } while (true);
                }
            }
        }

    }

}

