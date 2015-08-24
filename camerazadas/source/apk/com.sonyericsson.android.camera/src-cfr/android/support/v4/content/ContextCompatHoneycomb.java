/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import java.io.File;

class ContextCompatHoneycomb {
    ContextCompatHoneycomb() {
    }

    public static File getObbDir(Context context) {
        return context.getObbDir();
    }

    static void startActivities(Context context, Intent[] arrintent) {
        context.startActivities(arrintent);
    }
}

