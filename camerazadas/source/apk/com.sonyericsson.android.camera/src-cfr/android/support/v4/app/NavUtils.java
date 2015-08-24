/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.NavUtilsJB;
import android.support.v4.content.IntentCompat;
import android.util.Log;

public class NavUtils {
    private static final NavUtilsImpl IMPL;
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final String TAG = "NavUtils";

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new NavUtilsImplJB();
            return;
        }
        IMPL = new NavUtilsImplBase();
    }

    private NavUtils() {
    }

    public static Intent getParentActivityIntent(Activity activity) {
        return IMPL.getParentActivityIntent(activity);
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string = NavUtils.getParentActivityName(context, componentName);
        if (string == null) {
            return null;
        }
        if (NavUtils.getParentActivityName(context, componentName = new ComponentName(componentName.getPackageName(), string)) == null) {
            return IntentCompat.makeMainActivity(componentName);
        }
        return new Intent().setComponent(componentName);
    }

    public static Intent getParentActivityIntent(Context context, Class<?> object) throws PackageManager.NameNotFoundException {
        if ((object = NavUtils.getParentActivityName(context, new ComponentName(context, object))) == null) {
            return null;
        }
        if (NavUtils.getParentActivityName(context, (ComponentName)(object = new ComponentName(context, (String)object))) == null) {
            return IntentCompat.makeMainActivity((ComponentName)object);
        }
        return new Intent().setComponent((ComponentName)object);
    }

    @Nullable
    public static String getParentActivityName(Activity object) {
        try {
            object = NavUtils.getParentActivityName((Context)object, object.getComponentName());
            return object;
        }
        catch (PackageManager.NameNotFoundException var0_1) {
            throw new IllegalArgumentException(var0_1);
        }
    }

    @Nullable
    public static String getParentActivityName(Context context, ComponentName parcelable) throws PackageManager.NameNotFoundException {
        parcelable = context.getPackageManager().getActivityInfo((ComponentName)parcelable, 128);
        return IMPL.getParentActivityName(context, (ActivityInfo)parcelable);
    }

    public static void navigateUpFromSameTask(Activity activity) {
        Intent intent = NavUtils.getParentActivityIntent(activity);
        if (intent == null) {
            throw new IllegalArgumentException("Activity " + activity.getClass().getSimpleName() + " does not have a parent activity name specified." + " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> " + " element in your manifest?)");
        }
        NavUtils.navigateUpTo(activity, intent);
    }

    public static void navigateUpTo(Activity activity, Intent intent) {
        IMPL.navigateUpTo(activity, intent);
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent) {
        return IMPL.shouldUpRecreateTask(activity, intent);
    }

    static interface NavUtilsImpl {
        public Intent getParentActivityIntent(Activity var1);

        public String getParentActivityName(Context var1, ActivityInfo var2);

        public void navigateUpTo(Activity var1, Intent var2);

        public boolean shouldUpRecreateTask(Activity var1, Intent var2);
    }

    static class NavUtilsImplBase
    implements NavUtilsImpl {
        NavUtilsImplBase() {
        }

        @Override
        public Intent getParentActivityIntent(Activity object) {
            String string = NavUtils.getParentActivityName((Activity)object);
            if (string == null) {
                return null;
            }
            ComponentName componentName = new ComponentName((Context)object, string);
            try {
                object = NavUtils.getParentActivityName((Context)object, componentName) == null ? IntentCompat.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            }
            catch (PackageManager.NameNotFoundException var1_2) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + string + "' in manifest");
                return null;
            }
            return object;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public String getParentActivityName(Context context, ActivityInfo object) {
            if (object.metaData == null) {
                return null;
            }
            String string = object.metaData.getString("android.support.PARENT_ACTIVITY");
            if (string == null) {
                return null;
            }
            object = string;
            if (string.charAt(0) != '.') return object;
            return context.getPackageName() + string;
        }

        @Override
        public void navigateUpTo(Activity activity, Intent intent) {
            intent.addFlags(67108864);
            activity.startActivity(intent);
            activity.finish();
        }

        @Override
        public boolean shouldUpRecreateTask(Activity object, Intent intent) {
            if (!((object = object.getIntent().getAction()) == null || object.equals("android.intent.action.MAIN"))) {
                return true;
            }
            return false;
        }
    }

    static class NavUtilsImplJB
    extends NavUtilsImplBase {
        NavUtilsImplJB() {
        }

        @Override
        public Intent getParentActivityIntent(Activity activity) {
            Intent intent;
            Intent intent2 = intent = NavUtilsJB.getParentActivityIntent(activity);
            if (intent == null) {
                intent2 = this.superGetParentActivityIntent(activity);
            }
            return intent2;
        }

        @Override
        public String getParentActivityName(Context context, ActivityInfo activityInfo) {
            String string;
            String string2 = string = NavUtilsJB.getParentActivityName(activityInfo);
            if (string == null) {
                string2 = super.getParentActivityName(context, activityInfo);
            }
            return string2;
        }

        @Override
        public void navigateUpTo(Activity activity, Intent intent) {
            NavUtilsJB.navigateUpTo(activity, intent);
        }

        @Override
        public boolean shouldUpRecreateTask(Activity activity, Intent intent) {
            return NavUtilsJB.shouldUpRecreateTask(activity, intent);
        }

        Intent superGetParentActivityIntent(Activity activity) {
            return super.getParentActivityIntent(activity);
        }
    }

}

