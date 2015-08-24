/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import android.app.Activity;
import android.widget.TextView;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.view.CameraWindow;

/*
 * Exception performing whole class analysis.
 */
public final class SceneEvaluationDebugView
implements Runnable {
    private static SceneEvaluationDebugView instance;
    private Activity mContext;
    private TextView mDebugSceneInfomation;
    private boolean mDisplayed;
    private CameraWindow mWindow;

    private SceneEvaluationDebugView();

    public static void debug(Activity var0, CameraWindow var1, CameraDevice var2);

    private void dispDebugSceneEvaluation();

    private void set(Activity var1, CameraWindow var2, CameraDevice var3);

    public static void stop();

    private void unset();

    @Override
    public void run();
}

