/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.onscreenbutton;

import android.graphics.Canvas;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CaptureButtonEventHandler
implements OnScreenButtonListener {
    private static final String TAG;
    private final ControllerManager mController;
    private final int mType;
    private final SettingController mView;

    static;

    public CaptureButtonEventHandler(int var1, SettingController var2, ControllerManager var3);

    private void closeSettingDialog();

    void notifyListener(MotionEvent var1);

    @Override
    public void onCancel(OnScreenButton var1, MotionEvent var2);

    @Override
    public void onDispatchDraw(OnScreenButton var1, Canvas var2);

    @Override
    public void onDown(OnScreenButton var1, MotionEvent var2);

    @Override
    public void onMove(OnScreenButton var1, MotionEvent var2);

    @Override
    public void onUp(OnScreenButton var1, MotionEvent var2);
}

