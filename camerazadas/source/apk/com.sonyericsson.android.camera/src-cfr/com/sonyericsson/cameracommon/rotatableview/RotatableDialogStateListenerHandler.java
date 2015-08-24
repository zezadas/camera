/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.rotatableview;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

public class RotatableDialogStateListenerHandler
extends Handler {
    private static final int CANCEL = 18;
    private static final int DISMISS = 19;
    private static final int HIDE = 17;
    private static final int SHOW = 16;
    private WeakReference<RotatableDialog> mDialog;
    private WeakReference<RotatableDialog.StateListener> mListener;

    public RotatableDialogStateListenerHandler(RotatableDialog rotatableDialog) {
        super(Looper.getMainLooper());
        this.mDialog = new WeakReference<RotatableDialog>(rotatableDialog);
    }

    public void dispatchCancel() {
        if (this.mListener != null) {
            this.obtainMessage(18).sendToTarget();
        }
    }

    public void dispatchDismiss() {
        if (this.mListener != null) {
            this.obtainMessage(19).sendToTarget();
        }
    }

    public void dispatchHide() {
        if (this.mListener != null) {
            this.obtainMessage(17).sendToTarget();
        }
    }

    public void dispatchShow() {
        if (this.mListener != null) {
            this.obtainMessage(16).sendToTarget();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void handleMessage(Message message) {
        if (this.mListener.get() == null || this.mDialog.get() == null) return;
        switch (message.what) {
            default: {
                return;
            }
            case 16: {
                this.mListener.get().onShow(this.mDialog.get());
                return;
            }
            case 17: {
                this.mListener.get().onHide(this.mDialog.get());
                return;
            }
            case 18: {
                this.mListener.get().onCancel(this.mDialog.get());
                return;
            }
            case 19: 
        }
        this.mListener.get().onDismiss(this.mDialog.get());
    }

    public void setStateListener(RotatableDialog.StateListener stateListener) {
        this.mListener = new WeakReference<RotatableDialog.StateListener>(stateListener);
    }
}

