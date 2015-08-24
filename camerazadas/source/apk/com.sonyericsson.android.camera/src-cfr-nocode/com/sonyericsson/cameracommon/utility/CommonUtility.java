/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.view.MotionEvent;
import android.view.View;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CommonUtility {
    private static final String TAG;

    static;

    public CommonUtility();

    public static void dumpFile(byte[] var0, String var1);

    private static ApplicationType getApplicationType(Context var0);

    public static boolean isActivityAvailable(Context var0, Intent var1);

    public static boolean isCoreCameraApp(Context var0);

    public static boolean isEventContainedInView(View var0, MotionEvent var1);

    public static boolean isMirroringRequired(Context var0);

    public static boolean isPackageExist(String var0, Context var1);

    public static boolean isPermissionGranted(Context var0, String var1);

    public static boolean isPreinstalledApp(Context var0);

    public static boolean isSystemApp(Context var0);

    public static List<ResolveInfo> removeExcludeItemsFromList(List<ResolveInfo> var0, List<String> var1);

    public static String removeFileExtension(String var0);

    public static boolean sameStrings(String var0, String var1);

    public static boolean shouldStorageForceInternal(Context var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ApplicationType
    extends Enum<ApplicationType> {
        private static final /* synthetic */ ApplicationType[] $VALUES;
        public static final /* enum */ ApplicationType OTHER;
        public static final /* enum */ ApplicationType SYSTEM;
        public static final /* enum */ ApplicationType UPDATED_SYSTEM_APP;

        static;

        private ApplicationType();

        public static ApplicationType valueOf(String var0);

        public static ApplicationType[] values();
    }

}

