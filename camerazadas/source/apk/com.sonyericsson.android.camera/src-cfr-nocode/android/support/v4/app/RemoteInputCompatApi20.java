/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

class RemoteInputCompatApi20 {
    RemoteInputCompatApi20();

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] var0, Intent var1, Bundle var2);

    static RemoteInput[] fromCompat(RemoteInputCompatBase.RemoteInput[] var0);

    static Bundle getResultsFromIntent(Intent var0);

    static RemoteInputCompatBase.RemoteInput[] toCompat(RemoteInput[] var0, RemoteInputCompatBase.RemoteInput.Factory var1);
}

