/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.KeyEvent;

class KeyEventCompatHoneycomb {
    KeyEventCompatHoneycomb() {
    }

    public static boolean metaStateHasModifiers(int n, int n2) {
        return KeyEvent.metaStateHasModifiers(n, n2);
    }

    public static boolean metaStateHasNoModifiers(int n) {
        return KeyEvent.metaStateHasNoModifiers(n);
    }

    public static int normalizeMetaState(int n) {
        return KeyEvent.normalizeMetaState(n);
    }
}

