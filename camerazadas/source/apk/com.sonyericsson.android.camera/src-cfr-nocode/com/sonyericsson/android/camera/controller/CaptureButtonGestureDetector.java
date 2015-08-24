/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CaptureButtonGestureDetector {
    private static final int LONGPRESS_TIMEOUT;
    private static final int LONG_PRESS = 2;
    private static final String TAG;
    private static final int TAP_TIMEOUT;
    private final Handler mHandler;
    private final OnCaptureButtonGestureListener mListener;

    static;

    public CaptureButtonGestureDetector(Context var1, OnCaptureButtonGestureListener var2);

    static /* synthetic */ void access$000(CaptureButtonGestureDetector var0);

    private void cancel();

    private void dispatchLongPress();

    public void onTouchEvent(MotionEvent var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class GestureHandler
    extends Handler {
        final /* synthetic */ CaptureButtonGestureDetector this$0;

        GestureHandler(CaptureButtonGestureDetector var1);

        @Override
        public void handleMessage(Message var1);
    }

    public static interface OnCaptureButtonGestureListener {
        public void onLongPress();
    }

}

