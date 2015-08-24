/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

class TaskStackBuilderHoneycomb {
    TaskStackBuilderHoneycomb() {
    }

    public static PendingIntent getActivitiesPendingIntent(Context context, int n, Intent[] arrintent, int n2) {
        return PendingIntent.getActivities(context, n, arrintent, n2);
    }
}

