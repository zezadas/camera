/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ActivityCompatHoneycomb {
    ActivityCompatHoneycomb() {
    }

    static void dump(Activity activity, String string, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        activity.dump(string, fileDescriptor, printWriter, arrstring);
    }

    static void invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
    }
}

