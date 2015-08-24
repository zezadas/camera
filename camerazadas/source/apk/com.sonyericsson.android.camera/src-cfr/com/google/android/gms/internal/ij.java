/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.ig;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.il;
import com.google.android.gms.internal.in;
import com.google.android.gms.internal.io;
import com.google.android.gms.internal.ip;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

public final class ij
extends e<in> {
    private static final Object GL;
    private static final Object GM;
    private static final ip Gr;
    private final Cast.Listener EO;
    private double FA;
    private boolean FB;
    private boolean GA;
    private int GB;
    private int GC;
    private final AtomicLong GD;
    private String GE;
    private String GF;
    private Bundle GG;
    private Map<Long, BaseImplementation.b<Status>> GH;
    private b GI;
    private BaseImplementation.b<Cast.ApplicationConnectionResult> GJ;
    private BaseImplementation.b<Status> GK;
    private ApplicationMetadata Gs;
    private final CastDevice Gt;
    private final Map<String, Cast.MessageReceivedCallback> Gu;
    private final long Gv;
    private c Gw;
    private String Gx;
    private boolean Gy;
    private boolean Gz;
    private final Handler mHandler;

    static {
        Gr = new ip("CastClientImpl");
        GL = new Object();
        GM = new Object();
    }

    public ij(Context context, Looper looper, CastDevice castDevice, long l, Cast.Listener listener, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, (String[])null);
        this.Gt = castDevice;
        this.EO = listener;
        this.Gv = l;
        this.mHandler = new Handler(looper);
        this.Gu = new HashMap<String, Cast.MessageReceivedCallback>();
        this.GD = new AtomicLong(0);
        this.GH = new HashMap<Long, BaseImplementation.b<Status>>();
        this.fB();
        this.GI = new b();
        this.registerConnectionFailedListener(this.GI);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(ig object) {
        boolean bl;
        if (!ik.a(object = object.fy(), this.Gx)) {
            this.Gx = object;
            bl = true;
        } else {
            bl = false;
        }
        Gr.b("hasChanged=%b, mFirstApplicationStatusUpdate=%b", bl, this.Gy);
        if (this.EO != null && (bl || this.Gy)) {
            this.EO.onApplicationStatusChanged();
        }
        this.Gy = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(il il) {
        boolean bl;
        int n;
        boolean bl2;
        this.Gs = il.getApplicationMetadata();
        double d = il.fE();
        if (d != NaN && d != this.FA) {
            this.FA = d;
            bl2 = true;
        } else {
            bl2 = false;
        }
        if ((bl = il.fM()) != this.FB) {
            this.FB = bl;
            bl2 = true;
        }
        Gr.b("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", bl2, this.Gz);
        if (this.EO != null && (bl2 || this.Gz)) {
            this.EO.onVolumeChanged();
        }
        if ((n = il.fN()) != this.GB) {
            this.GB = n;
            bl2 = true;
        } else {
            bl2 = false;
        }
        Gr.b("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", bl2, this.Gz);
        if (this.EO != null && (bl2 || this.Gz)) {
            this.EO.W(this.GB);
        }
        if ((n = il.fO()) != this.GC) {
            this.GC = n;
            bl2 = true;
        } else {
            bl2 = false;
        }
        Gr.b("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", bl2, this.Gz);
        if (this.EO != null && (bl2 || this.Gz)) {
            this.EO.X(this.GC);
        }
        this.Gz = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void c(BaseImplementation.b<Cast.ApplicationConnectionResult> b) {
        Object object = GL;
        synchronized (object) {
            if (this.GJ != null) {
                this.GJ.b(new a(new Status(2002)));
            }
            this.GJ = b;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void e(BaseImplementation.b<Status> b) {
        Object object = GM;
        synchronized (object) {
            if (this.GK != null) {
                b.b(new Status(2001));
                return;
            }
            this.GK = b;
            return;
        }
    }

    private void fB() {
        this.GA = false;
        this.GB = -1;
        this.GC = -1;
        this.Gs = null;
        this.Gx = null;
        this.FA = 0.0;
        this.FB = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void fF() {
        Gr.b("removing all MessageReceivedCallbacks", new Object[0]);
        Map<String, Cast.MessageReceivedCallback> map = this.Gu;
        synchronized (map) {
            this.Gu.clear();
            return;
        }
    }

    private void fG() throws IllegalStateException {
        if (!this.GA || this.Gw == null || this.Gw.fL()) {
            throw new IllegalStateException("Not connected to a device");
        }
    }

    public void G(boolean bl) throws IllegalStateException, RemoteException {
        ((in)this.gS()).a(bl, this.FA, this.FB);
    }

    protected in L(IBinder iBinder) {
        return in.a.M(iBinder);
    }

    public void a(double d) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Volume cannot be " + d);
        }
        ((in)this.gS()).a(d, this.FA, this.FB);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void a(int n, IBinder iBinder, Bundle bundle) {
        Gr.b("in onPostInitHandler; statusCode=%d", n);
        if (n == 0 || n == 1001) {
            this.GA = true;
            this.Gy = true;
            this.Gz = true;
        } else {
            this.GA = false;
        }
        int n2 = n;
        if (n == 1001) {
            this.GG = new Bundle();
            this.GG.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            n2 = 0;
        }
        super.a(n2, iBinder, bundle);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        Bundle bundle = new Bundle();
        Gr.b("getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s", this.GE, this.GF);
        this.Gt.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.Gv);
        if (this.GE != null) {
            bundle.putString("last_application_id", this.GE);
            if (this.GF != null) {
                bundle.putString("last_session_id", this.GF);
            }
        }
        this.Gw = new c();
        l.a((k)e, 6171000, this.getContext().getPackageName(), this.Gw.asBinder(), bundle);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(String string, Cast.MessageReceivedCallback messageReceivedCallback) throws IllegalArgumentException, IllegalStateException, RemoteException {
        ik.aF(string);
        this.aE(string);
        if (messageReceivedCallback != null) {
            Map<String, Cast.MessageReceivedCallback> map = this.Gu;
            synchronized (map) {
                this.Gu.put(string, messageReceivedCallback);
            }
            ((in)this.gS()).aI(string);
        }
    }

    public void a(String string, LaunchOptions launchOptions, BaseImplementation.b<Cast.ApplicationConnectionResult> b) throws IllegalStateException, RemoteException {
        this.c(b);
        ((in)this.gS()).a(string, launchOptions);
    }

    public void a(String string, BaseImplementation.b<Status> b) throws IllegalStateException, RemoteException {
        this.e(b);
        ((in)this.gS()).aH(string);
    }

    public void a(String string, String string2, BaseImplementation.b<Status> b) throws IllegalArgumentException, IllegalStateException, RemoteException {
        if (TextUtils.isEmpty((CharSequence)string2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (string2.length() > 65536) {
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
        ik.aF(string);
        this.fG();
        long l = this.GD.incrementAndGet();
        try {
            this.GH.put(l, b);
            ((in)this.gS()).a(string, string2, l);
            return;
        }
        catch (Throwable var1_2) {
            this.GH.remove(l);
            throw var1_2;
        }
    }

    public void a(String string, boolean bl, BaseImplementation.b<Cast.ApplicationConnectionResult> b) throws IllegalStateException, RemoteException {
        this.c(b);
        ((in)this.gS()).f(string, bl);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void aE(String string) throws IllegalArgumentException, RemoteException {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        Map<String, Cast.MessageReceivedCallback> map = this.Gu;
        // MONITORENTER : map
        Cast.MessageReceivedCallback messageReceivedCallback = this.Gu.remove(string);
        // MONITOREXIT : map
        if (messageReceivedCallback == null) return;
        try {
            ((in)this.gS()).aJ(string);
            return;
        }
        catch (IllegalStateException var2_3) {
            Gr.a(var2_3, "Error unregistering namespace (%s): %s", string, var2_3.getMessage());
            return;
        }
    }

    public void b(String string, String string2, BaseImplementation.b<Cast.ApplicationConnectionResult> b) throws IllegalStateException, RemoteException {
        this.c(b);
        ((in)this.gS()).l(string, string2);
    }

    public void d(BaseImplementation.b<Status> b) throws IllegalStateException, RemoteException {
        this.e(b);
        ((in)this.gS()).fP();
    }

    @Override
    public void disconnect() {
        Gr.b("disconnect(); ServiceListener=%s, isConnected=%b", this.Gw, this.isConnected());
        c c = this.Gw;
        this.Gw = null;
        if (!(c != null && c.fK())) {
            Gr.b("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        this.fF();
        try {
            if (this.isConnected() || this.isConnecting()) {
                ((in)this.gS()).disconnect();
            }
            return;
        }
        catch (RemoteException var1_2) {
            Gr.a(var1_2, "Error while disconnecting the controller interface: %s", var1_2.getMessage());
            return;
        }
        finally {
            super.disconnect();
        }
    }

    @Override
    public Bundle fC() {
        if (this.GG != null) {
            Bundle bundle = this.GG;
            this.GG = null;
            return bundle;
        }
        return super.fC();
    }

    public void fD() throws IllegalStateException, RemoteException {
        ((in)this.gS()).fD();
    }

    public double fE() throws IllegalStateException {
        this.fG();
        return this.FA;
    }

    public ApplicationMetadata getApplicationMetadata() throws IllegalStateException {
        this.fG();
        return this.Gs;
    }

    public String getApplicationStatus() throws IllegalStateException {
        this.fG();
        return this.Gx;
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    public boolean isMute() throws IllegalStateException {
        this.fG();
        return this.FB;
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.L(iBinder);
    }

    private static final class a
    implements Cast.ApplicationConnectionResult {
        private final Status CM;
        private final ApplicationMetadata GN;
        private final String GO;
        private final boolean GP;
        private final String vL;

        public a(Status status) {
            this(status, null, null, null, false);
        }

        public a(Status status, ApplicationMetadata applicationMetadata, String string, String string2, boolean bl) {
            this.CM = status;
            this.GN = applicationMetadata;
            this.GO = string;
            this.vL = string2;
            this.GP = bl;
        }

        @Override
        public ApplicationMetadata getApplicationMetadata() {
            return this.GN;
        }

        @Override
        public String getApplicationStatus() {
            return this.GO;
        }

        @Override
        public String getSessionId() {
            return this.vL;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        @Override
        public boolean getWasLaunched() {
            return this.GP;
        }
    }

    private class b
    implements GoogleApiClient.OnConnectionFailedListener {
        private b() {
        }

        @Override
        public void onConnectionFailed(ConnectionResult connectionResult) {
            ij.this.fF();
        }
    }

    private class c
    extends io.a {
        private AtomicBoolean GR;

        private c() {
            this.GR = new AtomicBoolean(false);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        private boolean ag(int n) {
            Object object = GM;
            synchronized (object) {
                if (ij.this.GK != null) {
                    ij.this.GK.b(new Status(n));
                    ij.this.GK = null;
                    return true;
                }
                return false;
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Converted monitor instructions to comments
         * Lifted jumps to return sites
         */
        private void c(long l, int n) {
            Map map = ij.this.GH;
            // MONITORENTER : map
            BaseImplementation.b b = (BaseImplementation.b)ij.this.GH.remove(l);
            // MONITOREXIT : map
            if (b == null) return;
            b.b(new Status(n));
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void a(ApplicationMetadata applicationMetadata, String string, String string2, boolean bl) {
            if (this.GR.get()) {
                return;
            }
            ij.this.Gs = applicationMetadata;
            ij.this.GE = applicationMetadata.getApplicationId();
            ij.this.GF = string2;
            Object object = GL;
            synchronized (object) {
                if (ij.this.GJ != null) {
                    ij.this.GJ.b(new a(new Status(0), applicationMetadata, string, string2, bl));
                    ij.this.GJ = null;
                }
                return;
            }
        }

        @Override
        public void a(String string, double d, boolean bl) {
            Gr.b("Deprecated callback: \"onStatusreceived\"", new Object[0]);
        }

        @Override
        public void a(String string, long l) {
            if (this.GR.get()) {
                return;
            }
            this.c(l, 0);
        }

        @Override
        public void a(String string, long l, int n) {
            if (this.GR.get()) {
                return;
            }
            this.c(l, n);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void ac(int n) {
            if (!this.fK()) {
                return;
            }
            Gr.b("ICastDeviceControllerListener.onDisconnected: %d", n);
            if (n == 0) return;
            ij.this.aA(2);
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void ad(int n) {
            if (this.GR.get()) {
                return;
            }
            Object object = GL;
            synchronized (object) {
                if (ij.this.GJ != null) {
                    ij.this.GJ.b(new a(new Status(n)));
                    ij.this.GJ = null;
                }
                return;
            }
        }

        @Override
        public void ae(int n) {
            if (this.GR.get()) {
                return;
            }
            this.ag(n);
        }

        @Override
        public void af(int n) {
            if (this.GR.get()) {
                return;
            }
            this.ag(n);
        }

        @Override
        public void b(final ig ig) {
            if (this.GR.get()) {
                return;
            }
            Gr.b("onApplicationStatusChanged", new Object[0]);
            ij.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    ij.this.a(ig);
                }
            });
        }

        @Override
        public void b(final il il) {
            if (this.GR.get()) {
                return;
            }
            Gr.b("onDeviceStatusChanged", new Object[0]);
            ij.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    ij.this.a(il);
                }
            });
        }

        @Override
        public void b(String string, byte[] arrby) {
            if (this.GR.get()) {
                return;
            }
            Gr.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", string, arrby.length);
        }

        public boolean fK() {
            if (this.GR.getAndSet(true)) {
                return false;
            }
            ij.this.fB();
            return true;
        }

        public boolean fL() {
            return this.GR.get();
        }

        @Override
        public void k(final String string, final String string2) {
            if (this.GR.get()) {
                return;
            }
            Gr.b("Receive (type=text, ns=%s) %s", string, string2);
            ij.this.mHandler.post(new Runnable(){

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 * Converted monitor instructions to comments
                 * Lifted jumps to return sites
                 */
                @Override
                public void run() {
                    Map map = ij.this.Gu;
                    // MONITORENTER : map
                    Cast.MessageReceivedCallback messageReceivedCallback = (Cast.MessageReceivedCallback)ij.this.Gu.get(string);
                    // MONITOREXIT : map
                    if (messageReceivedCallback != null) {
                        messageReceivedCallback.onMessageReceived(ij.this.Gt, string, string2);
                        return;
                    }
                    Gr.b("Discarded message for unknown namespace '%s'", string);
                }
            });
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void onApplicationDisconnected(final int n) {
            if (this.GR.get()) {
                return;
            }
            ij.this.GE = null;
            ij.this.GF = null;
            this.ag(n);
            if (ij.this.EO == null) return;
            ij.this.mHandler.post(new Runnable(){

                @Override
                public void run() {
                    if (ij.this.EO != null) {
                        ij.this.EO.onApplicationDisconnected(n);
                    }
                }
            });
        }

    }

}

