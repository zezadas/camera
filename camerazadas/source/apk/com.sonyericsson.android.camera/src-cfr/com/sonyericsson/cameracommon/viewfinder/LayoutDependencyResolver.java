/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonymobile.ui.support.SystemUiVisibilityWrapper;

public class LayoutDependencyResolver {
    private static final String SYSTEM_UI_VISIBILITY_EXTENSIONS = "com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS";
    private static final String TAG = LayoutDependencyResolver.class.getSimpleName();
    private static float VIEWFINDER_ASPECT_RATIO = 1.7777778f;

    private static Rect cropWithAspectRatio(Point point, float f) {
        float f2;
        float f3 = Math.max(point.x, point.y);
        if (f3 / (f2 = (float)Math.min(point.x, point.y)) < f) {
            return new Rect(0, 0, (int)Math.ceil(f3), (int)Math.ceil(f3 / f));
        }
        return new Rect(0, 0, (int)Math.ceil(f2 * f), (int)Math.ceil(f2));
    }

    public static SystemBarStatus getCurrentSystemBarStatus(Context context) {
        if (LayoutDependencyResolver.isTablet(context)) {
            return SystemBarStatus.ALWAYS_CANCELED;
        }
        if (LayoutDependencyResolver.isAvailableSystemUiVisibility(context)) {
            return SystemBarStatus.REGION_OVERLAID;
        }
        return SystemBarStatus.REGION_ASSIGNED;
    }

    public static int getLeftItemCount(Context context) {
        return context.getResources().getInteger(R.integer.shortcut_icon_count);
    }

    public static Rect getSurfaceRect(Context object, float f) {
        if (f > (float)(object = LayoutDependencyResolver.getViewFinderSize((Context)object)).width() / (float)object.height()) {
            return new Rect(0, 0, object.width(), (int)((float)object.width() / f));
        }
        return new Rect(0, 0, (int)((float)object.height() * f), object.height());
    }

    public static int getSystemBarMargin(Context context) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus[LayoutDependencyResolver.getCurrentSystemBarStatus(context).ordinal()]) {
            default: {
                throw new IllegalStateException("setupDummySystemBar():[Unexpected system bar status.]");
            }
            case 1: {
                return 0;
            }
            case 2: 
            case 3: 
        }
        return context.getResources().getDimensionPixelSize(R.dimen.navigationbar_width);
    }

    public static Rect getViewFinderSize(Context context) {
        Point point = new Point(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels);
        Point point2 = new Point();
        ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRealSize(point2);
        switch (.$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus[LayoutDependencyResolver.getCurrentSystemBarStatus(context).ordinal()]) {
            default: {
                throw new IllegalStateException("setupDummySystemBar():[Unexpected system bar status.]");
            }
            case 1: {
                if (LayoutDependencyResolver.isTablet(context)) {
                    return LayoutDependencyResolver.cropWithAspectRatio(point2, VIEWFINDER_ASPECT_RATIO);
                }
                return LayoutDependencyResolver.cropWithAspectRatio(point, VIEWFINDER_ASPECT_RATIO);
            }
            case 2: 
            case 3: 
        }
        return LayoutDependencyResolver.cropWithAspectRatio(point2, VIEWFINDER_ASPECT_RATIO);
    }

    private static boolean isAvailableSystemUiVisibility(Context context) {
        if (context.checkCallingOrSelfPermission("com.sonymobile.permission.SYSTEM_UI_VISIBILITY_EXTENSIONS") == 0) {
            return true;
        }
        return false;
    }

    public static boolean isTablet(Context context) {
        return context.getResources().getBoolean(R.bool.is_tablet);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void requestToDimSystemUi(View view) {
        if (view == null) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus[LayoutDependencyResolver.getCurrentSystemBarStatus(view.getContext()).ordinal()]) {
            case 2: {
                view.setSystemUiVisibility(1);
            }
            default: {
                break;
            }
            case 3: {
                SystemUiVisibilityWrapper systemUiVisibilityWrapper = SystemUiVisibilityWrapper.newInstance(view);
                systemUiVisibilityWrapper.setTranslucentBackgroundOpacity(-2);
                systemUiVisibilityWrapper.setSystemUiVisibility(513);
                if (Build.VERSION.SDK_INT <= 18) {
                    systemUiVisibilityWrapper.setTranslucentBackground(true);
                    systemUiVisibilityWrapper.setSuppressNavigationBar(false);
                } else {
                    Activity activity = (Activity)view.getContext();
                    WindowManager.LayoutParams layoutParams = activity.getWindow().getAttributes();
                    layoutParams.flags|=67108864;
                    layoutParams.flags|=134217728;
                    activity.getWindow().setAttributes(layoutParams);
                }
                systemUiVisibilityWrapper.apply();
            }
        }
        view.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void requestToRecoverSystemUi(View view) {
        if (view == null) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus[LayoutDependencyResolver.getCurrentSystemBarStatus(view.getContext()).ordinal()]) {
            default: {
                break;
            }
            case 3: {
                SystemUiVisibilityWrapper systemUiVisibilityWrapper = SystemUiVisibilityWrapper.newInstance(view);
                systemUiVisibilityWrapper.setSystemUiVisibility(512);
                if (Build.VERSION.SDK_INT <= 18) {
                    systemUiVisibilityWrapper.setTranslucentBackgroundOpacity(-1);
                    systemUiVisibilityWrapper.setTranslucentBackground(false);
                    systemUiVisibilityWrapper.setSuppressNavigationBar(false);
                } else {
                    Activity activity = (Activity)view.getContext();
                    WindowManager.LayoutParams layoutParams = activity.getWindow().getAttributes();
                    layoutParams.flags&=-67108865;
                    layoutParams.flags&=-134217729;
                    activity.getWindow().setAttributes(layoutParams);
                }
                systemUiVisibilityWrapper.apply();
            }
        }
        view.requestLayout();
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void requestToRemoveSystemUi(View view) {
        if (view == null) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$viewfinder$LayoutDependencyResolver$SystemBarStatus[LayoutDependencyResolver.getCurrentSystemBarStatus(view.getContext()).ordinal()]) {
            default: {
                break;
            }
            case 2: {
                LayoutDependencyResolver.requestToDimSystemUi(view);
                return;
            }
            case 3: {
                SystemUiVisibilityWrapper systemUiVisibilityWrapper = SystemUiVisibilityWrapper.newInstance(view);
                if (Build.VERSION.SDK_INT <= 18) {
                    systemUiVisibilityWrapper.setSuppressNavigationBar(true);
                } else {
                    LayoutDependencyResolver.setSuppressNavigationBar(systemUiVisibilityWrapper, true);
                }
                systemUiVisibilityWrapper.apply();
            }
        }
        view.requestLayout();
    }

    public static void resolveLayoutDependencyOnDevice(Activity activity, View object) {
        Rect rect = LayoutDependencyResolver.getViewFinderSize(activity);
        object = (FrameLayout.LayoutParams)object.getLayoutParams();
        object.width = rect.width();
        object.height = rect.height();
        object.gravity = 80;
        LayoutDependencyResolver.setupRightContainer(activity);
        LayoutDependencyResolver.setupCaptureMethodIndicatorContainer(activity);
        LayoutDependencyResolver.setupSettingIndicatorContainer(activity);
        LayoutDependencyResolver.setupSystemBarMargin(activity);
        LayoutDependencyResolver.setupRotatableToast(activity);
    }

    private static void setSuppressNavigationBar(SystemUiVisibilityWrapper systemUiVisibilityWrapper, boolean bl) {
        systemUiVisibilityWrapper.setVisibilityFlag(2, true);
        systemUiVisibilityWrapper.setVisibilityFlag(2048, bl);
        systemUiVisibilityWrapper.setVisibilityFlag(4096, bl);
    }

    private static void setupCaptureMethodIndicatorContainer(Activity activity) {
        activity.findViewById((int)R.id.capture_method_indicator_container).getLayoutParams().height = LayoutDependencyResolver.getViewFinderSize(activity).height() / LayoutDependencyResolver.getLeftItemCount(activity);
    }

    private static void setupModeIndicatorContainer(Activity activity) {
        int n = activity.getResources().getDimensionPixelSize(R.dimen.capturing_mode_selector_button_item_width);
        int n2 = activity.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int n3 = activity.getResources().getDimensionPixelSize(R.dimen.right_container_width);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams)activity.findViewById(R.id.mode_indicator_container).getLayoutParams();
        layoutParams.height = n;
        layoutParams.rightMargin = n3 - (n3 - n) / 2 + LayoutDependencyResolver.getSystemBarMargin(activity);
        layoutParams.bottomMargin = (LayoutDependencyResolver.getViewFinderSize(activity).height() / LayoutDependencyResolver.getLeftItemCount(activity) - n2) / 2;
    }

    private static void setupRightContainer(Activity activity) {
        Rect rect = LayoutDependencyResolver.getViewFinderSize(activity);
        int n = activity.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int n2 = activity.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_padding);
        n = (rect.height() / LayoutDependencyResolver.getLeftItemCount(activity) - n + n2) / 2;
        activity.findViewById(R.id.right_container).setPadding(0, n, 0, n);
        LayoutDependencyResolver.setupModeIndicatorContainer(activity);
    }

    public static void setupRotatableToast(Activity object) {
        Object object2 = object.getResources().getDisplayMetrics();
        int n = Math.max(object2.widthPixels, object2.heightPixels);
        int n2 = Math.min(object2.widthPixels, object2.heightPixels);
        int n3 = object.getResources().getDimensionPixelSize(R.dimen.left_container_width);
        int n4 = object.getResources().getDimensionPixelSize(R.dimen.right_container_width) + LayoutDependencyResolver.getSystemBarMargin((Context)object);
        object2 = LayoutDependencyResolver.getViewFinderSize((Context)object);
        object2.offset(0, n2 - object2.height());
        int n5 = object2.height() / LayoutDependencyResolver.getLeftItemCount((Context)object);
        object = new Rect(object2.left + n3, object2.top, object2.right - n4, object2.top + n5);
        Rect rect = new Rect(object2.left + n3, object2.bottom - n5, object2.right - n4, object2.bottom);
        Rect rect2 = new Rect(object2.left + n3, object2.top, object2.left + n3 + n5, object2.bottom);
        object2 = new Rect(object2.right - n4 - n5, object2.top, object2.right - n4, object2.bottom);
        RotatableToast.setToastLayoutParams(new RotatableToast.ToastLayoutParams(n, n2, (Rect)object, rect), new RotatableToast.ToastLayoutParams(n, n2, rect2, (Rect)object2));
    }

    private static void setupSettingIndicatorContainer(Activity activity) {
        activity.findViewById((int)R.id.setting_indicator_container).getLayoutParams().height = LayoutDependencyResolver.getViewFinderSize(activity).height() / LayoutDependencyResolver.getLeftItemCount(activity);
    }

    private static void setupSystemBarMargin(Activity activity) {
        View view = activity.findViewById(R.id.icons);
        View view2 = activity.findViewById(R.id.lazy_inflated_ui_component_container);
        int n = LayoutDependencyResolver.getSystemBarMargin(activity);
        ((ViewGroup.MarginLayoutParams)view.getLayoutParams()).setMargins(0, 0, n, 0);
        view.requestLayout();
        ((ViewGroup.MarginLayoutParams)view2.getLayoutParams()).setMargins(0, 0, n, 0);
        view2.requestLayout();
    }

    public static enum SystemBarStatus {
        ALWAYS_CANCELED,
        REGION_ASSIGNED,
        REGION_OVERLAID;
        

        private SystemBarStatus() {
        }
    }

}

