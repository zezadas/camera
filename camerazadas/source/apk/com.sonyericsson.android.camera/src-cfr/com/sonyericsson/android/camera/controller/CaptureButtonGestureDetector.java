/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

public class CaptureButtonGestureDetector {
    private static final int LONGPRESS_TIMEOUT;
    private static final int LONG_PRESS = 2;
    private static final String TAG;
    private static final int TAP_TIMEOUT;
    private final Handler mHandler;
    private final OnCaptureButtonGestureListener mListener;

    static {
        TAG = CaptureButtonGestureDetector.class.getSimpleName();
        LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
        TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
    }

    public CaptureButtonGestureDetector(Context context, OnCaptureButtonGestureListener onCaptureButtonGestureListener) {
        this.mListener = onCaptureButtonGestureListener;
        this.mHandler = new GestureHandler();
    }

    private void cancel() {
        this.mHandler.removeMessages(2);
    }

    private void dispatchLongPress() {
        this.mListener.onLongPress();
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            default: {
                return;
            }
            case 0: {
                this.mHandler.removeMessages(2);
                this.mHandler.sendEmptyMessageAtTime(2, motionEvent.getDownTime() + (long)TAP_TIMEOUT + (long)LONGPRESS_TIMEOUT);
                return;
            }
            case 1: 
            case 3: 
        }
        this.cancel();
    }

    private class GestureHandler
    extends Handler {
        GestureHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                default: {
                    return;
                }
                case 2: 
            }
            CaptureButtonGestureDetector.this.dispatchLongPress();
        }
    }

    public static interface OnCaptureButtonGestureListener {
        public void onLongPress();
    }

}

