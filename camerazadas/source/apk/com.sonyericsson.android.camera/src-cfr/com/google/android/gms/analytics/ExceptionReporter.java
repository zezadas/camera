/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.ExceptionParser;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.StandardExceptionParser;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public class ExceptionReporter
implements Thread.UncaughtExceptionHandler {
    private final Context mContext;
    private final Thread.UncaughtExceptionHandler xX;
    private final Tracker xY;
    private ExceptionParser xZ;

    /*
     * Enabled aggressive block sorting
     */
    public ExceptionReporter(Tracker object, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context object2) {
        if (object == null) {
            throw new NullPointerException("tracker cannot be null");
        }
        if (object2 == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.xX = uncaughtExceptionHandler;
        this.xY = object;
        this.xZ = new StandardExceptionParser((Context)object2, new ArrayList<String>());
        this.mContext = object2.getApplicationContext();
        object2 = new StringBuilder().append("ExceptionReporter created, original handler is ");
        object = uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName();
        z.V(object2.append((String)object).toString());
    }

    Thread.UncaughtExceptionHandler dY() {
        return this.xX;
    }

    public ExceptionParser getExceptionParser() {
        return this.xZ;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.xZ = exceptionParser;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void uncaughtException(Thread thread, Throwable throwable) {
        String string = "UncaughtException";
        if (this.xZ != null) {
            string = thread != null ? thread.getName() : null;
            string = this.xZ.getDescription(string, throwable);
        }
        z.V("Tracking Exception: " + string);
        this.xY.send(new HitBuilders.ExceptionBuilder().setDescription(string).setFatal(true).build());
        GoogleAnalytics.getInstance(this.mContext).dispatchLocalHits();
        if (this.xX != null) {
            z.V("Passing exception to original handler.");
            this.xX.uncaughtException(thread, throwable);
        }
    }
}

