/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import com.sonymobile.cameracommon.gltextureview.GLTextureView;

class NotifySurfaceStateTask
implements Runnable {
    private GLTextureView.SurfaceStateCallback mCallback;
    private final int mHeight;
    private final NotifyType mType;
    private final int mWidth;

    public NotifySurfaceStateTask(NotifyType notifyType, int n, int n2, GLTextureView.SurfaceStateCallback surfaceStateCallback) {
        this.mType = notifyType;
        this.mWidth = n;
        this.mHeight = n2;
        this.mCallback = surfaceStateCallback;
    }

    @Override
    public void run() {
        switch (.$SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType[this.mType.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mCallback.onSurfaceCreated();
                return;
            }
            case 2: {
                this.mCallback.onSurfaceChanged(this.mWidth, this.mHeight);
                return;
            }
            case 3: 
        }
        this.mCallback.onSurfaceDestroyed();
    }

    static enum NotifyType {
        CREATED,
        CHANGED,
        DESTROYED;
        

        private NotifyType() {
        }
    }

}

