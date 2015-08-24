/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view.accessibility;

import android.view.View;
import android.view.accessibility.AccessibilityRecord;

class AccessibilityRecordCompatJellyBean {
    AccessibilityRecordCompatJellyBean() {
    }

    public static void setSource(Object object, View view, int n) {
        ((AccessibilityRecord)object).setSource(view, n);
    }
}

