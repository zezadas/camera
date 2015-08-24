/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import com.sonymobile.ui.support.SystemUiVisibilityWrapper;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LayoutDependencyResolver {
    private static final String SYSTEM_UI_VISIBILITY_EXTENSIONS = "com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS";
    private static final String TAG;
    private static float VIEWFINDER_ASPECT_RATIO;

    static;

    public LayoutDependencyResolver();

    private static Rect cropWithAspectRatio(Point var0, float var1);

    public static SystemBarStatus getCurrentSystemBarStatus(Context var0);

    public static int getLeftItemCount(Context var0);

    public static Rect getSurfaceRect(Context var0, float var1);

    public static int getSystemBarMargin(Context var0);

    public static Rect getViewFinderSize(Context var0);

    private static boolean isAvailableSystemUiVisibility(Context var0);

    public static boolean isTablet(Context var0);

    public static void requestToDimSystemUi(View var0);

    public static void requestToRecoverSystemUi(View var0);

    public static void requestToRemoveSystemUi(View var0);

    public static void resolveLayoutDependencyOnDevice(Activity var0, View var1);

    private static void setSuppressNavigationBar(SystemUiVisibilityWrapper var0, boolean var1);

    private static void setupCaptureMethodIndicatorContainer(Activity var0);

    private static void setupModeIndicatorContainer(Activity var0);

    private static void setupRightContainer(Activity var0);

    public static void setupRotatableToast(Activity var0);

    private static void setupSettingIndicatorContainer(Activity var0);

    private static void setupSystemBarMargin(Activity var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class SystemBarStatus
    extends Enum<SystemBarStatus> {
        private static final /* synthetic */ SystemBarStatus[] $VALUES;
        public static final /* enum */ SystemBarStatus ALWAYS_CANCELED;
        public static final /* enum */ SystemBarStatus REGION_ASSIGNED;
        public static final /* enum */ SystemBarStatus REGION_OVERLAID;

        static;

        private SystemBarStatus();

        public static SystemBarStatus valueOf(String var0);

        public static SystemBarStatus[] values();
    }

}

