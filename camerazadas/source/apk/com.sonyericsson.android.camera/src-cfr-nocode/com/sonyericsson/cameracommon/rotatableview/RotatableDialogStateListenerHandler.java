/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.os.Handler;
import android.os.Message;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

/*
 * Exception performing whole class analysis.
 */
public class RotatableDialogStateListenerHandler
extends Handler {
    private static final int CANCEL = 18;
    private static final int DISMISS = 19;
    private static final int HIDE = 17;
    private static final int SHOW = 16;
    private WeakReference<RotatableDialog> mDialog;
    private WeakReference<RotatableDialog.StateListener> mListener;

    public RotatableDialogStateListenerHandler(RotatableDialog var1);

    public void dispatchCancel();

    public void dispatchDismiss();

    public void dispatchHide();

    public void dispatchShow();

    @Override
    public void handleMessage(Message var1);

    public void setStateListener(RotatableDialog.StateListener var1);
}

