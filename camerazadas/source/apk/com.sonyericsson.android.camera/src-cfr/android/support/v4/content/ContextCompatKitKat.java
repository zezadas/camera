/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.Context;
import java.io.File;

class ContextCompatKitKat {
    ContextCompatKitKat() {
    }

    public static File[] getExternalCacheDirs(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] getExternalFilesDirs(Context context, String string) {
        return context.getExternalFilesDirs(string);
    }

    public static File[] getObbDirs(Context context) {
        return context.getObbDirs();
    }
}
