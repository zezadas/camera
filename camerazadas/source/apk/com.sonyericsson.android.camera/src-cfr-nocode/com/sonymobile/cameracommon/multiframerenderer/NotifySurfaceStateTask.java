/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import com.sonymobile.cameracommon.gltextureview.GLTextureView;

/*
 * Exception performing whole class analysis.
 */
class NotifySurfaceStateTask
implements Runnable {
    private GLTextureView.SurfaceStateCallback mCallback;
    private final int mHeight;
    private final NotifyType mType;
    private final int mWidth;

    public NotifySurfaceStateTask(NotifyType var1, int var2, int var3, GLTextureView.SurfaceStateCallback var4);

    @Override
    public void run();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class NotifyType
    extends Enum<NotifyType> {
        private static final /* synthetic */ NotifyType[] $VALUES;
        public static final /* enum */ NotifyType CHANGED;
        public static final /* enum */ NotifyType CREATED;
        public static final /* enum */ NotifyType DESTROYED;

        static;

        private NotifyType();

        public static NotifyType valueOf(String var0);

        public static NotifyType[] values();
    }

}

