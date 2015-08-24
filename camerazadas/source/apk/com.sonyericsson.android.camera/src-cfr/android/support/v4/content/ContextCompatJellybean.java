/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class ContextCompatJellybean {
    ContextCompatJellybean() {
    }

    public static void startActivities(Context context, Intent[] arrintent, Bundle bundle) {
        context.startActivities(arrintent, bundle);
    }
}

