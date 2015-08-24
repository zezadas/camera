/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.device;

import android.hardware.Camera;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CommonPlatformDependencyResolver {
    private static final String TAG;

    static;

    public CommonPlatformDependencyResolver();

    static /* synthetic */ void access$000(Camera.Parameters var0, String var1, String var2);

    private static List<String> getDcModeSupportedValueList(Camera.Parameters var0);

    private static List<String> getSupportedValueList(Camera.Parameters var0);

    public static boolean isVideoNrSupported(Camera.Parameters var0);

    private static void setDcModeIfSupported(Camera.Parameters var0, String var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class DcCategory
    extends Enum<DcCategory> {
        private static final /* synthetic */ DcCategory[] $VALUES;
        public static final /* enum */ DcCategory COMPOSE_IMAGE_FROM_PREVIEW;
        public static final /* enum */ DcCategory MAKE_IMAGE_FROM_PREVIEW;
        public static final /* enum */ DcCategory NORMAL;
        public static final /* enum */ DcCategory THIRD_PARTY;
        final String mDcForPicture;
        final String mDcForPreview;
        final String mDcForVideo;

        static;

        private DcCategory(String var3, String var4, String var5);

        public static DcCategory valueOf(String var0);

        public static DcCategory[] values();

        public void writeTo(Camera.Parameters var1);
    }

}

