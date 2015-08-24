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

/*
 * Exception performing whole class analysis.
 */
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

    public n(Status var1);

    public n(TagManager var1, Looper var2, Container var3, a var4);

    private void nV();

    public void a(Container var1);

    public void cp(String var1);

    void cr(String var1);

    @Override
    public Container getContainer();

    String getContainerId();

    @Override
    public Status getStatus();

    String nU();

    @Override
    public void refresh();

    @Override
    public void release();

    @Override
    public void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener var1);

    public static interface a {
        public void cr(String var1);

        public String nU();

        public void nW();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class b
    extends Handler {
        private final ContainerHolder.ContainerAvailableListener aop;
        final /* synthetic */ n aoq;

        public b(n var1, ContainerHolder.ContainerAvailableListener var2, Looper var3);

        public void cs(String var1);

        protected void ct(String var1);

        @Override
        public void handleMessage(Message var1);
    }

}

