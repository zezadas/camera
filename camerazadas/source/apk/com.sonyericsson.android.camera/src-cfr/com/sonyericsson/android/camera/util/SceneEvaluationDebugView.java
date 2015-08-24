/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.app.Activity;
import android.content.Context;
import android.widget.TextView;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.view.CameraWindow;

public final class SceneEvaluationDebugView
implements Runnable {
    private static SceneEvaluationDebugView instance;
    private Activity mContext;
    private TextView mDebugSceneInfomation;
    private boolean mDisplayed;
    private CameraWindow mWindow;

    private SceneEvaluationDebugView() {
    }

    public static void debug(Activity activity, CameraWindow cameraWindow, CameraDevice cameraDevice) {
        if (instance == null) {
            instance = new SceneEvaluationDebugView();
        }
        instance.set(activity, cameraWindow, cameraDevice);
    }

    private void dispDebugSceneEvaluation() {
        if (this.mDebugSceneInfomation == null) {
            this.mDebugSceneInfomation = new TextView(this.mContext);
        }
        if (!this.mDisplayed) {
            this.mDisplayed = true;
        }
        this.mDebugSceneInfomation.setHeight(-1);
        this.mDebugSceneInfomation.setWidth(-1);
        this.mDebugSceneInfomation.setGravity(17);
        this.mDebugSceneInfomation.setTextColor(-65536);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("SCENE EVALUATION INFORMATION\n");
        stringBuffer.append("White Balance Info\n");
        stringBuffer.append("     WB R-Gain:");
        this.mDebugSceneInfomation.setText((CharSequence)stringBuffer.toString());
    }

    private void set(Activity activity, CameraWindow cameraWindow, CameraDevice cameraDevice) {
        this.mContext = activity;
        this.mWindow = cameraWindow;
        this.mContext.runOnUiThread(this);
    }

    public static void stop() {
        if (instance != null) {
            instance.unset();
        }
    }

    private void unset() {
        if (this.mWindow != null) {
            // empty if block
        }
        this.mDisplayed = false;
    }

    @Override
    public void run() {
        this.dispDebugSceneEvaluation();
    }
}

