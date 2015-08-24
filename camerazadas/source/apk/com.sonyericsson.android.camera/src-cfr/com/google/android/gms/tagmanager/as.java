/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.tagmanager.ar;
import com.google.android.gms.tagmanager.at;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.cy;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

class as
extends Thread
implements ar {
    private static as app;
    private final LinkedBlockingQueue<Runnable> apo = new LinkedBlockingQueue();
    private volatile at apq;
    private volatile boolean mClosed = false;
    private final Context mContext;
    private volatile boolean yU = false;

    /*
     * Enabled aggressive block sorting
     */
    private as(Context context) {
        super("GAThread");
        this.mContext = context != null ? context.getApplicationContext() : context;
        this.start();
    }

    static as Z(Context context) {
        if (app == null) {
            app = new as(context);
        }
        return app;
    }

    private String g(Throwable throwable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        throwable.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    @Override
    public void b(Runnable runnable) {
        this.apo.add(runnable);
    }

    void b(final String string, final long l) {
        this.b(new Runnable(){

            @Override
            public void run() {
                if (as.this.apq == null) {
                    cy cy = cy.pw();
                    cy.a(as.this.mContext, this);
                    as.this.apq = cy.px();
                }
                as.this.apq.f(l, string);
            }
        });
    }

    @Override
    public void cC(String string) {
        this.b(string, System.currentTimeMillis());
    }

    @Override
    public void run() {
        while (!this.mClosed) {
            try {
                Runnable runnable = this.apo.take();
                if (this.yU) continue;
                runnable.run();
            }
            catch (InterruptedException var1_2) {
                try {
                    bh.U(var1_2.toString());
                    continue;
                }
                catch (Throwable var1_3) {
                    bh.T("Error on Google TagManager Thread: " + this.g(var1_3));
                    bh.T("Google TagManager is shutting down.");
                    this.yU = true;
                }
            }
        }
    }

}

