/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/*
 * Exception performing whole class analysis.
 */
public class AccessibilityEventFilter
extends View.AccessibilityDelegate {
    public static final String TAG = "AccessibilityEventFilter";
    private String mAllowedClassName;

    public AccessibilityEventFilter();

    public AccessibilityEventFilter(Class<?> var1);

    @Override
    public boolean onRequestSendAccessibilityEvent(ViewGroup var1, View var2, AccessibilityEvent var3);
}

