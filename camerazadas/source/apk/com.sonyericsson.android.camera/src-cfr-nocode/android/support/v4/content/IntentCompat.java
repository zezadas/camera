/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class IntentCompat {
    public static final String ACTION_EXTERNAL_APPLICATIONS_AVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE";
    public static final String ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE";
    public static final String EXTRA_CHANGED_PACKAGE_LIST = "android.intent.extra.changed_package_list";
    public static final String EXTRA_CHANGED_UID_LIST = "android.intent.extra.changed_uid_list";
    public static final String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
    public static final int FLAG_ACTIVITY_CLEAR_TASK = 32768;
    public static final int FLAG_ACTIVITY_TASK_ON_HOME = 16384;
    private static final IntentCompatImpl IMPL;

    static;

    private IntentCompat();

    public static Intent makeMainActivity(ComponentName var0);

    public static Intent makeMainSelectorActivity(String var0, String var1);

    public static Intent makeRestartActivityTask(ComponentName var0);

    static interface IntentCompatImpl {
        public Intent makeMainActivity(ComponentName var1);

        public Intent makeMainSelectorActivity(String var1, String var2);

        public Intent makeRestartActivityTask(ComponentName var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class IntentCompatImplBase
    implements IntentCompatImpl {
        IntentCompatImplBase();

        @Override
        public Intent makeMainActivity(ComponentName var1);

        @Override
        public Intent makeMainSelectorActivity(String var1, String var2);

        @Override
        public Intent makeRestartActivityTask(ComponentName var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class IntentCompatImplHC
    extends IntentCompatImplBase {
        IntentCompatImplHC();

        @Override
        public Intent makeMainActivity(ComponentName var1);

        @Override
        public Intent makeRestartActivityTask(ComponentName var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class IntentCompatImplIcsMr1
    extends IntentCompatImplHC {
        IntentCompatImplIcsMr1();

        @Override
        public Intent makeMainSelectorActivity(String var1, String var2);
    }

}

