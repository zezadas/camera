/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.opengl.FrameData;

/*
 * Exception performing whole class analysis.
 */
public class FrameStruct {
    private FrameBaseFactory mFrameBaseFactory;
    private FrameData mFrameData;
    private String mFrameId;
    private boolean mIsMirrored;
    private boolean mNeedToTextureUpdate;
    private FrameStructVisibility mVisibility;

    public FrameStruct(String var1, FrameData var2, FrameBaseFactory var3, boolean var4, FrameStructVisibility var5);

    public FrameBaseFactory getFrameBaseFactory();

    public FrameData getFrameData();

    public String getFrameId();

    public FrameStructVisibility getVisibility();

    public boolean isMirrored();

    public boolean isTextureRequiredToUpdate();

    public void setMirrored(boolean var1);

    public void setVisibility(FrameStructVisibility var1);

    public void updateFrameData(FrameData var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class FrameStructVisibility
    extends Enum<FrameStructVisibility> {
        private static final /* synthetic */ FrameStructVisibility[] $VALUES;
        public static final /* enum */ FrameStructVisibility COMMON;
        public static final /* enum */ FrameStructVisibility COMMON_OVERLAY;
        public static final /* enum */ FrameStructVisibility PREVIEW_ONLY;
        public static final /* enum */ FrameStructVisibility VIDEO_ONLY;

        static;

        private FrameStructVisibility();

        public static FrameStructVisibility valueOf(String var0);

        public static FrameStructVisibility[] values();
    }

}

