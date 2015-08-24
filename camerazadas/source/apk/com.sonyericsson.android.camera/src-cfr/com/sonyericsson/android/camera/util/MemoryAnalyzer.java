/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import java.util.List;

public class MemoryAnalyzer {
    private static final String TAG = "MemoryAnalyzer";

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void logMemoryInfo(Context list, String string, String string2) {
        synchronized (MemoryAnalyzer.class) {
            block6 : {
                list = (ActivityManager)list.getSystemService("activity");
                list.getMemoryInfo(new ActivityManager.MemoryInfo());
                list = list.getRunningAppProcesses();
                if (list != null) {
                    int n = 0;
                    do {
                        if (n >= list.size() || list.get((int)n).processName.equalsIgnoreCase("com.sonyericsson.android.camera")) {
                            int n2 = list.size();
                            if (n != n2) break;
                            break block6;
                        }
                        ++n;
                    } while (true);
                    Debug.getMemoryInfo(new Debug.MemoryInfo());
                }
            }
            return;
        }
    }
}

