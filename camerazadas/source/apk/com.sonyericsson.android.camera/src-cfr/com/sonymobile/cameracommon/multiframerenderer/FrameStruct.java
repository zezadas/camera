/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.opengl.FrameData;

public class FrameStruct {
    private FrameBaseFactory mFrameBaseFactory;
    private FrameData mFrameData;
    private String mFrameId;
    private boolean mIsMirrored = false;
    private boolean mNeedToTextureUpdate;
    private FrameStructVisibility mVisibility;

    public FrameStruct(String string, FrameData frameData, FrameBaseFactory frameBaseFactory, boolean bl, FrameStructVisibility frameStructVisibility) {
        this.mFrameId = string;
        this.mFrameData = frameData;
        this.mFrameBaseFactory = frameBaseFactory;
        this.mNeedToTextureUpdate = bl;
        this.mVisibility = frameStructVisibility;
    }

    public FrameBaseFactory getFrameBaseFactory() {
        return this.mFrameBaseFactory;
    }

    public FrameData getFrameData() {
        return this.mFrameData;
    }

    public String getFrameId() {
        return this.mFrameId;
    }

    public FrameStructVisibility getVisibility() {
        return this.mVisibility;
    }

    public boolean isMirrored() {
        return this.mIsMirrored;
    }

    public boolean isTextureRequiredToUpdate() {
        return this.mNeedToTextureUpdate;
    }

    public void setMirrored(boolean bl) {
        this.mIsMirrored = bl;
    }

    public void setVisibility(FrameStructVisibility frameStructVisibility) {
        this.mVisibility = frameStructVisibility;
    }

    public void updateFrameData(FrameData frameData) {
        this.mFrameData = frameData;
    }

    public static enum FrameStructVisibility {
        COMMON,
        PREVIEW_ONLY,
        VIDEO_ONLY,
        COMMON_OVERLAY;
        

        private FrameStructVisibility() {
        }
    }

}

