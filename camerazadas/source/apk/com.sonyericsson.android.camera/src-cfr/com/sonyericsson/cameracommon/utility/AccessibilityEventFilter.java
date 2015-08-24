/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class AccessibilityEventFilter
extends View.AccessibilityDelegate {
    public static final String TAG = "AccessibilityEventFilter";
    private String mAllowedClassName = "";

    public AccessibilityEventFilter() {
    }

    public AccessibilityEventFilter(Class<?> class_) {
        this.mAllowedClassName = String.copyValueOf(class_.getName().toCharArray());
    }

    @Override
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        boolean bl = false;
        int n = accessibilityEvent.getEventType();
        if (n == 8 || n == 65536 || n == 32768) {
            bl = true;
        }
        n = 0;
        if (!(accessibilityEvent.getRecordCount() <= 0 && accessibilityEvent.getText().isEmpty() && accessibilityEvent.getContentDescription() == null)) {
            n = 1;
        }
        if ((bl || n != 0) && !this.mAllowedClassName.equals(accessibilityEvent.getClassName())) {
            return false;
        }
        return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
}

