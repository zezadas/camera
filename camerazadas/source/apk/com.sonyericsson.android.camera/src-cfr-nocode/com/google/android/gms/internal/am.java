/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.ez;

/*
 * Exception performing whole class analysis.
 */
@ez
public class am
implements Application.ActivityLifecycleCallbacks {
    private Context mContext;
    private final Object mw;
    private Activity nr;

    public am(Application var1, Activity var2);

    private void setActivity(Activity var1);

    public Activity getActivity();

    public Context getContext();

    @Override
    public void onActivityCreated(Activity var1, Bundle var2);

    @Override
    public void onActivityDestroyed(Activity var1);

    @Override
    public void onActivityPaused(Activity var1);

    @Override
    public void onActivityResumed(Activity var1);

    @Override
    public void onActivitySaveInstanceState(Activity var1, Bundle var2);

    @Override
    public void onActivityStarted(Activity var1);

    @Override
    public void onActivityStopped(Activity var1);
}

