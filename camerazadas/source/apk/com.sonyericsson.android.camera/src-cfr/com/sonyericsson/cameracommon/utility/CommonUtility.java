/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class CommonUtility {
    private static final String TAG = CommonUtility.class.getSimpleName();

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    public static void dumpFile(byte[] var0, String var1_2) {
        block6 : {
            var2_4 = null;
            var1_2 = new FileOutputStream("/sdcard/" + (String)var1_2);
            var1_2.write((byte[])var0);
            var0 = var1_2;
            break block6;
            catch (IOException var1_3) {
                var0 = var2_4;
                ** GOTO lbl14
                catch (IOException var2_5) {
                    var0 = var1_2;
                    var1_2 = var2_5;
                }
lbl14: // 2 sources:
                CameraLogger.e(CommonUtility.TAG, "dumpFile Open / Write Error", (Throwable)var1_2);
            }
        }
        if (var0 == null) return;
        try {
            var0.close();
            return;
        }
        catch (IOException var0_1) {
            CameraLogger.e(CommonUtility.TAG, "dumpFile Close Error", var0_1);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static ApplicationType getApplicationType(Context object) {
        try {
            PackageManager packageManager = object.getPackageManager();
            if (packageManager != null) {
                if ((object = packageManager.getPackageInfo(object.getPackageName(), 0)) != null && object.applicationInfo != null) {
                    int n = object.applicationInfo.flags;
                    if ((n & 128) != 0) {
                        return ApplicationType.UPDATED_SYSTEM_APP;
                    }
                    if ((n & 1) == 0) return ApplicationType.OTHER;
                    return ApplicationType.SYSTEM;
                }
                CameraLogger.w(TAG, "Can't get packeage info. assume user app.");
                return ApplicationType.OTHER;
            }
            CameraLogger.w(TAG, "Can't get packeage manager. assume user app.");
            return ApplicationType.OTHER;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            CameraLogger.w(TAG, "Can't get packeage info. assume user app.");
            return ApplicationType.OTHER;
        }
    }

    public static boolean isActivityAvailable(Context context, Intent intent) {
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            return true;
        }
        CameraLogger.w(TAG, "isActivityAvailable: " + false + " : " + intent);
        return false;
    }

    public static boolean isCoreCameraApp(Context context) {
        if ("com.sonyericsson.android.camera".equals(context.getPackageName())) {
            return true;
        }
        return false;
    }

    public static boolean isEventContainedInView(View view, MotionEvent motionEvent) {
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        return new Rect(arrn[0], arrn[1], arrn[0] + view.getWidth(), arrn[1] + view.getHeight()).contains((int)motionEvent.getRawX(), (int)motionEvent.getRawY());
    }

    public static boolean isMirroringRequired(Context context) {
        if (context == null) {
            return false;
        }
        return new Bidi(context.getResources().getString(R.string.capturing_mode_selector_bidicheck_string), -2).isRightToLeft();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isPackageExist(String string, Context object) {
        if (object == null) {
            return false;
        }
        object = object.getPackageManager();
        try {
            object.getApplicationInfo(string, 0);
            return true;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            return false;
        }
    }

    public static boolean isPermissionGranted(Context context, String string) {
        if (context.getPackageManager().checkPermission(string, context.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    public static boolean isPreinstalledApp(Context context) {
        if (CommonUtility.getApplicationType(context).equals((Object)ApplicationType.SYSTEM)) {
            return true;
        }
        return false;
    }

    public static boolean isSystemApp(Context context) {
        if (CommonUtility.getApplicationType(context).equals((Object)ApplicationType.OTHER)) {
            return false;
        }
        return true;
    }

    public static List<ResolveInfo> removeExcludeItemsFromList(List<ResolveInfo> object, List<String> list) {
        ArrayList<ResolveInfo> arrayList = new ArrayList<ResolveInfo>((Collection<ResolveInfo>)object);
        block0 : for (ResolveInfo resolveInfo : object) {
            Iterator<String> iterator = list.iterator();
            while (iterator.hasNext()) {
                if (!iterator.next().equals(resolveInfo.activityInfo.packageName)) continue;
                arrayList.remove(resolveInfo);
                continue block0;
            }
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String removeFileExtension(String string) {
        int n = string.lastIndexOf(46);
        if (n == -1 || n == 0) {
            return string;
        }
        return string.substring(0, n);
    }

    public static boolean sameStrings(String string, String string2) {
        if (string == null) {
            if (string2 == null) {
                return true;
            }
            return false;
        }
        return string.equals(string2);
    }

    public static boolean shouldStorageForceInternal(Context context) {
        if (!(CommonUtility.isSystemApp(context) && (CommonUtility.isPermissionGranted(context, "android.permission.WRITE_MEDIA_STORAGE") || Build.VERSION.SDK_INT < 19))) {
            return true;
        }
        return false;
    }

    public static enum ApplicationType {
        SYSTEM,
        UPDATED_SYSTEM_APP,
        OTHER;
        

        private ApplicationType() {
        }
    }

}

