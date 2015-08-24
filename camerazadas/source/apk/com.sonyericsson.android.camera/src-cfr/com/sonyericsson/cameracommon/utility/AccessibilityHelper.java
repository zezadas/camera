/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class AccessibilityHelper {
    public static final String TAG = "AccessibilityHelper";
    private static final Rect sRectForHit = new Rect();

    /*
     * Enabled aggressive block sorting
     */
    private static boolean checkToTouch(View view, int n, int n2) {
        if (!(view != null && view.getVisibility() == 0 && view.getGlobalVisibleRect(sRectForHit) && sRectForHit.contains(n, n2))) {
            return false;
        }
        return true;
    }

    public static View requestAccessibilityFocus(ViewGroup viewGroup, MotionEvent object) {
        if ((object = AccessibilityHelper.searchContentDescribedView(viewGroup, (MotionEvent)object)) != null) {
            object.performAccessibilityAction(64, null);
            return object;
        }
        viewGroup.performAccessibilityAction(64, null);
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static View searchContentDescribedView(ViewGroup viewGroup, MotionEvent motionEvent) {
        if (viewGroup == null || motionEvent == null) {
            CameraLogger.e("AccessibilityHelper", "searchContentDescribedView : Arg is null.[viewGroup = " + viewGroup + ", event = " + motionEvent + "]");
            return null;
        }
        int n = (int)motionEvent.getX();
        int n2 = (int)motionEvent.getY();
        int n3 = viewGroup.getChildCount() - 1;
        while (n3 >= 0) {
            View view = viewGroup.getChildAt(n3);
            if (AccessibilityHelper.checkToTouch(view, n, n2)) {
                if (view.getContentDescription() == null) {
                    view = view instanceof ViewGroup ? AccessibilityHelper.searchContentDescribedView((ViewGroup)view, motionEvent) : null;
                }
                if (view != null) {
                    return view;
                }
            }
            --n3;
        }
        return null;
    }

    public static class HoverEventInterceptView
    extends FrameLayout {
        public HoverEventInterceptView(Context context) {
            super(context);
        }

        @Override
        public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
            super.onInterceptHoverEvent(motionEvent);
            AccessibilityHelper.requestAccessibilityFocus(this, motionEvent);
            return true;
        }
    }

}

