/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.ez;

@ez
public class am
implements Application.ActivityLifecycleCallbacks {
    private Context mContext;
    private final Object mw = new Object();
    private Activity nr;

    public am(Application application, Activity activity) {
        application.registerActivityLifecycleCallbacks(this);
        this.setActivity(activity);
        this.mContext = application.getApplicationContext();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void setActivity(Activity activity) {
        Object object = this.mw;
        synchronized (object) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.nr = activity;
            }
            return;
        }
    }

    public Activity getActivity() {
        return this.nr;
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onActivityDestroyed(Activity activity) {
        Object object = this.mw;
        synchronized (object) {
            if (this.nr == null) {
                return;
            }
            if (this.nr.equals(activity)) {
                this.nr = null;
            }
            return;
        }
    }

    @Override
    public void onActivityPaused(Activity activity) {
        this.setActivity(activity);
    }

    @Override
    public void onActivityResumed(Activity activity) {
        this.setActivity(activity);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        this.setActivity(activity);
    }

    @Override
    public void onActivityStopped(Activity activity) {
    }
}

