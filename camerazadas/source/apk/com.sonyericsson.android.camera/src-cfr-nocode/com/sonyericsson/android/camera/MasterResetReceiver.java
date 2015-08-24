/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/*
 * Exception performing whole class analysis ignored.
 */
public class MasterResetReceiver
extends BroadcastReceiver {
    private static final String TAG = "MasterResetReceiver";

    public MasterResetReceiver();

    private static void resetSharedPrefs(String var0, Context var1);

    @Override
    public void onReceive(Context var1, Intent var2);
}

