/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.TagManager;
import com.google.android.gms.tagmanager.bh;

class n
implements ContainerHolder {
    private Status CM;
    private final Looper IH;
    private boolean NU;
    private Container aok;
    private Container aol;
    private b aom;
    private a aon;
    private TagManager aoo;

    public n(Status status) {
        this.CM = status;
        this.IH = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public n(TagManager tagManager, Looper looper, Container container, a a) {
        this.aoo = tagManager;
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        this.IH = looper;
        this.aok = container;
        this.aon = a;
        this.CM = Status.Jv;
        tagManager.a(this);
    }

    private void nV() {
        if (this.aom != null) {
            this.aom.cs(this.aol.nS());
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(Container container) {
        synchronized (this) {
            boolean bl = this.NU;
            if (!bl) {
                if (container == null) {
                    bh.T("Unexpected null container.");
                } else {
                    this.aol = container;
                    this.nV();
                }
            }
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void cp(String string) {
        synchronized (this) {
            block6 : {
                boolean bl = this.NU;
                if (!bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            this.aok.cp(string);
            return;
        }
    }

    void cr(String string) {
        if (this.NU) {
            bh.T("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
            return;
        }
        this.aon.cr(string);
    }

    @Override
    public Container getContainer() {
        Container container = null;
        synchronized (this) {
            if (this.NU) {
                bh.T("ContainerHolder is released.");
            }
            if (this.aol != null) {
                this.aok = this.aol;
                this.aol = null;
            }
            container = this.aok;
        }
    }

    String getContainerId() {
        if (this.NU) {
            bh.T("getContainerId called on a released ContainerHolder.");
            return "";
        }
        return this.aok.getContainerId();
    }

    @Override
    public Status getStatus() {
        return this.CM;
    }

    String nU() {
        if (this.NU) {
            bh.T("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
            return "";
        }
        return this.aon.nU();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void refresh() {
        synchronized (this) {
            if (this.NU) {
                bh.T("Refreshing a released ContainerHolder.");
            } else {
                this.aon.nW();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void release() {
        synchronized (this) {
            if (this.NU) {
                bh.T("Releasing a released ContainerHolder.");
            } else {
                this.NU = true;
                this.aoo.b(this);
                this.aok.release();
                this.aok = null;
                this.aol = null;
                this.aon = null;
                this.aom = null;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener containerAvailableListener) {
        synchronized (this) {
            if (this.NU) {
                bh.T("ContainerHolder is released.");
            } else if (containerAvailableListener == null) {
                this.aom = null;
            } else {
                this.aom = new b(containerAvailableListener, this.IH);
                if (this.aol != null) {
                    this.nV();
                }
            }
            return;
        }
    }

    public static interface a {
        public void cr(String var1);

        public String nU();

        public void nW();
    }

    private class b
    extends Handler {
        private final ContainerHolder.ContainerAvailableListener aop;

        public b(ContainerHolder.ContainerAvailableListener containerAvailableListener, Looper looper) {
            super(looper);
            this.aop = containerAvailableListener;
        }

        public void cs(String string) {
            this.sendMessage(this.obtainMessage(1, string));
        }

        protected void ct(String string) {
            this.aop.onContainerAvailable(n.this, string);
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                default: {
                    bh.T("Don't know how to handle this message.");
                    return;
                }
                case 1: 
            }
            this.ct((String)message.obj);
        }
    }

}

