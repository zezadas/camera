/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.ad;
import com.google.android.gms.drive.internal.v;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class DriveEventService
extends Service
implements ChangeListener,
CompletionListener {
    public static final String ACTION_HANDLE_EVENT = "com.google.android.gms.drive.events.HANDLE_EVENT";
    private CountDownLatch NV;
    a NW;
    int NX = -1;
    private final String mName;

    protected DriveEventService() {
        this("DriveEventService");
    }

    protected DriveEventService(String string) {
        this.mName = string;
    }

    /*
     * Exception decompiling
     */
    private void a(OnEventResponse var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean bc(int n) {
        boolean bl = false;
        String[] arrstring = this.getPackageManager().getPackagesForUid(n);
        boolean bl2 = bl;
        if (arrstring == null) return bl2;
        int n2 = arrstring.length;
        n = 0;
        do {
            bl2 = bl;
            if (n >= n2) return bl2;
            if ("com.google.android.gms".equals(arrstring[n])) {
                return true;
            }
            ++n;
        } while (true);
    }

    private void hV() throws SecurityException {
        int n = this.getCallingUid();
        if (n == this.NX) {
            return;
        }
        if (GooglePlayServicesUtil.b(this.getPackageManager(), "com.google.android.gms") && this.bc(n)) {
            this.NX = n;
            return;
        }
        throw new SecurityException("Caller is not GooglePlayServices");
    }

    protected int getCallingUid() {
        return Binder.getCallingUid();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final IBinder onBind(Intent object) {
        synchronized (this) {
            if (!"com.google.android.gms.drive.events.HANDLE_EVENT".equals(object.getAction())) return null;
            if (this.NW != null) return new b().asBinder();
            object = new CountDownLatch(1);
            this.NV = new CountDownLatch(1);
            new Thread((CountDownLatch)object){
                final /* synthetic */ CountDownLatch NY;

                @Override
                public void run() {
                    try {
                        Looper.prepare();
                        DriveEventService.this.NW = new a();
                        this.NY.countDown();
                        v.n("DriveEventService", "Bound and starting loop");
                        Looper.loop();
                        v.n("DriveEventService", "Finished loop");
                        return;
                    }
                    finally {
                        DriveEventService.this.NV.countDown();
                    }
                }
            }.start();
            try {
                object.await(5000, TimeUnit.MILLISECONDS);
            }
            catch (InterruptedException var1_2) {
                throw new RuntimeException("Unable to start event handler", var1_2);
            }
            return new b().asBinder();
        }
    }

    @Override
    public void onChange(ChangeEvent changeEvent) {
        v.p(this.mName, "Unhandled change event: " + changeEvent);
    }

    @Override
    public void onCompletion(CompletionEvent completionEvent) {
        v.p(this.mName, "Unhandled completion event: " + completionEvent);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onDestroy() {
        synchronized (this) {
            v.n("DriveEventService", "onDestroy");
            if (this.NW != null) {
                Message message = this.NW.hW();
                this.NW.sendMessage(message);
                this.NW = null;
                try {
                    this.NV.await(5000, TimeUnit.MILLISECONDS);
                }
                catch (InterruptedException var1_2) {}
                this.NV = null;
            }
            super.onDestroy();
            return;
        }
    }

    @Override
    public boolean onUnbind(Intent intent) {
        return true;
    }

    final class a
    extends Handler {
        a() {
        }

        private Message b(OnEventResponse onEventResponse) {
            return this.obtainMessage(1, onEventResponse);
        }

        private Message hW() {
            return this.obtainMessage(2);
        }

        @Override
        public void handleMessage(Message message) {
            v.n("DriveEventService", "handleMessage message type:" + message.what);
            switch (message.what) {
                default: {
                    v.p("DriveEventService", "Unexpected message type:" + message.what);
                    return;
                }
                case 1: {
                    DriveEventService.this.a((OnEventResponse)message.obj);
                    return;
                }
                case 2: 
            }
            this.getLooper().quit();
        }
    }

    final class b
    extends ad.a {
        b() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void c(OnEventResponse parcelable) throws RemoteException {
            DriveEventService driveEventService = DriveEventService.this;
            synchronized (driveEventService) {
                v.n("DriveEventService", "onEvent: " + parcelable);
                o.i(DriveEventService.this.NW);
                DriveEventService.this.hV();
                parcelable = DriveEventService.this.NW.b(parcelable);
                DriveEventService.this.NW.sendMessage((Message)parcelable);
                return;
            }
        }
    }

}

