/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class NotificationCompatJellybean {
    static final String EXTRA_ACTION_EXTRAS = "android.support.actionExtras";
    static final String EXTRA_GROUP_KEY = "android.support.groupKey";
    static final String EXTRA_GROUP_SUMMARY = "android.support.isGroupSummary";
    static final String EXTRA_LOCAL_ONLY = "android.support.localOnly";
    static final String EXTRA_REMOTE_INPUTS = "android.support.remoteInputs";
    static final String EXTRA_SORT_KEY = "android.support.sortKey";
    static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    private static final String KEY_ACTION_INTENT = "actionIntent";
    private static final String KEY_EXTRAS = "extras";
    private static final String KEY_ICON = "icon";
    private static final String KEY_REMOTE_INPUTS = "remoteInputs";
    private static final String KEY_TITLE = "title";
    public static final String TAG = "NotificationCompat";
    private static Class<?> sActionClass;
    private static Field sActionIconField;
    private static Field sActionIntentField;
    private static Field sActionTitleField;
    private static boolean sActionsAccessFailed;
    private static Field sActionsField;
    private static final Object sActionsLock;
    private static Field sExtrasField;
    private static boolean sExtrasFieldAccessFailed;
    private static final Object sExtrasLock;

    static;

    NotificationCompatJellybean();

    public static void addBigPictureStyle(NotificationBuilderWithBuilderAccessor var0, CharSequence var1, boolean var2, CharSequence var3, Bitmap var4, Bitmap var5, boolean var6);

    public static void addBigTextStyle(NotificationBuilderWithBuilderAccessor var0, CharSequence var1, boolean var2, CharSequence var3, CharSequence var4);

    public static void addInboxStyle(NotificationBuilderWithBuilderAccessor var0, CharSequence var1, boolean var2, CharSequence var3, ArrayList<CharSequence> var4);

    public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> var0);

    private static boolean ensureActionReflectionReadyLocked();

    public static NotificationCompatBase.Action getAction(Notification var0, int var1, NotificationCompatBase.Action.Factory var2, RemoteInputCompatBase.RemoteInput.Factory var3);

    public static int getActionCount(Notification var0);

    private static NotificationCompatBase.Action getActionFromBundle(Bundle var0, NotificationCompatBase.Action.Factory var1, RemoteInputCompatBase.RemoteInput.Factory var2);

    private static Object[] getActionObjectsLocked(Notification var0);

    public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var0, NotificationCompatBase.Action.Factory var1, RemoteInputCompatBase.RemoteInput.Factory var2);

    private static Bundle getBundleForAction(NotificationCompatBase.Action var0);

    public static Bundle getExtras(Notification var0);

    public static String getGroup(Notification var0);

    public static boolean getLocalOnly(Notification var0);

    public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] var0);

    public static String getSortKey(Notification var0);

    public static boolean isGroupSummary(Notification var0);

    public static NotificationCompatBase.Action readAction(NotificationCompatBase.Action.Factory var0, RemoteInputCompatBase.RemoteInput.Factory var1, int var2, CharSequence var3, PendingIntent var4, Bundle var5);

    public static Bundle writeActionAndGetExtras(Notification.Builder var0, NotificationCompatBase.Action var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder
    implements NotificationBuilderWithBuilderAccessor,
    NotificationBuilderWithActions {
        private Notification.Builder b;
        private List<Bundle> mActionExtrasList;
        private final Bundle mExtras;

        public Builder(Context var1, Notification var2, CharSequence var3, CharSequence var4, CharSequence var5, RemoteViews var6, int var7, PendingIntent var8, PendingIntent var9, Bitmap var10, int var11, int var12, boolean var13, boolean var14, int var15, CharSequence var16, boolean var17, Bundle var18, String var19, boolean var20, String var21);

        @Override
        public void addAction(NotificationCompatBase.Action var1);

        public Notification build();

        @Override
        public Notification.Builder getBuilder();
    }

}

