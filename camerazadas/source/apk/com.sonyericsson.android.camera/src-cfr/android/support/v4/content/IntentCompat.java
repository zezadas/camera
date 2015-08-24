/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.content.IntentCompatHoneycomb;
import android.support.v4.content.IntentCompatIcsMr1;

public class IntentCompat {
    public static final String ACTION_EXTERNAL_APPLICATIONS_AVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE";
    public static final String ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE";
    public static final String EXTRA_CHANGED_PACKAGE_LIST = "android.intent.extra.changed_package_list";
    public static final String EXTRA_CHANGED_UID_LIST = "android.intent.extra.changed_uid_list";
    public static final String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
    public static final int FLAG_ACTIVITY_CLEAR_TASK = 32768;
    public static final int FLAG_ACTIVITY_TASK_ON_HOME = 16384;
    private static final IntentCompatImpl IMPL;

    static {
        int n = Build.VERSION.SDK_INT;
        if (n >= 15) {
            IMPL = new IntentCompatImplIcsMr1();
            return;
        }
        if (n >= 11) {
            IMPL = new IntentCompatImplHC();
            return;
        }
        IMPL = new IntentCompatImplBase();
    }

    private IntentCompat() {
    }

    public static Intent makeMainActivity(ComponentName componentName) {
        return IMPL.makeMainActivity(componentName);
    }

    public static Intent makeMainSelectorActivity(String string, String string2) {
        return IMPL.makeMainSelectorActivity(string, string2);
    }

    public static Intent makeRestartActivityTask(ComponentName componentName) {
        return IMPL.makeRestartActivityTask(componentName);
    }

    static interface IntentCompatImpl {
        public Intent makeMainActivity(ComponentName var1);

        public Intent makeMainSelectorActivity(String var1, String var2);

        public Intent makeRestartActivityTask(ComponentName var1);
    }

    static class IntentCompatImplBase
    implements IntentCompatImpl {
        IntentCompatImplBase() {
        }

        @Override
        public Intent makeMainActivity(ComponentName componentName) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(componentName);
            intent.addCategory("android.intent.category.LAUNCHER");
            return intent;
        }

        @Override
        public Intent makeMainSelectorActivity(String object, String string) {
            object = new Intent((String)object);
            object.addCategory(string);
            return object;
        }

        @Override
        public Intent makeRestartActivityTask(ComponentName parcelable) {
            parcelable = this.makeMainActivity((ComponentName)parcelable);
            parcelable.addFlags(268468224);
            return parcelable;
        }
    }

    static class IntentCompatImplHC
    extends IntentCompatImplBase {
        IntentCompatImplHC() {
        }

        @Override
        public Intent makeMainActivity(ComponentName componentName) {
            return IntentCompatHoneycomb.makeMainActivity(componentName);
        }

        @Override
        public Intent makeRestartActivityTask(ComponentName componentName) {
            return IntentCompatHoneycomb.makeRestartActivityTask(componentName);
        }
    }

    static class IntentCompatImplIcsMr1
    extends IntentCompatImplHC {
        IntentCompatImplIcsMr1() {
        }

        @Override
        public Intent makeMainSelectorActivity(String string, String string2) {
            return IntentCompatIcsMr1.makeMainSelectorActivity(string, string2);
        }
    }

}

