/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

class RemoteInputCompatApi20 {
    RemoteInputCompatApi20() {
    }

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] arrremoteInput, Intent intent, Bundle bundle) {
        RemoteInput.addResultsToIntent(RemoteInputCompatApi20.fromCompat(arrremoteInput), intent, bundle);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static RemoteInput[] fromCompat(RemoteInputCompatBase.RemoteInput[] arrremoteInput) {
        if (arrremoteInput == null) {
            return null;
        }
        RemoteInput[] arrremoteInput2 = new RemoteInput[arrremoteInput.length];
        int n = 0;
        do {
            Object object = arrremoteInput2;
            if (n >= arrremoteInput.length) return object;
            object = arrremoteInput[n];
            arrremoteInput2[n] = new RemoteInput.Builder(object.getResultKey()).setLabel(object.getLabel()).setChoices(object.getChoices()).setAllowFreeFormInput(object.getAllowFreeFormInput()).addExtras(object.getExtras()).build();
            ++n;
        } while (true);
    }

    static Bundle getResultsFromIntent(Intent intent) {
        return RemoteInput.getResultsFromIntent(intent);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static RemoteInputCompatBase.RemoteInput[] toCompat(RemoteInput[] arrremoteInput, RemoteInputCompatBase.RemoteInput.Factory factory) {
        if (arrremoteInput == null) {
            return null;
        }
        RemoteInputCompatBase.RemoteInput[] arrremoteInput2 = factory.newArray(arrremoteInput.length);
        int n = 0;
        do {
            Object object = arrremoteInput2;
            if (n >= arrremoteInput.length) return object;
            object = arrremoteInput[n];
            arrremoteInput2[n] = factory.build(object.getResultKey(), object.getLabel(), object.getChoices(), object.getAllowFreeFormInput(), object.getExtras());
            ++n;
        } while (true);
    }
}

