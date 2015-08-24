/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.BundleUtil;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.support.v4.app.RemoteInputCompatJellybean;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

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

    static {
        sExtrasLock = new Object();
        sActionsLock = new Object();
    }

    NotificationCompatJellybean() {
    }

    public static void addBigPictureStyle(NotificationBuilderWithBuilderAccessor object, CharSequence charSequence, boolean bl, CharSequence charSequence2, Bitmap bitmap, Bitmap bitmap2, boolean bl2) {
        object = new Notification.BigPictureStyle(object.getBuilder()).setBigContentTitle(charSequence).bigPicture(bitmap);
        if (bl2) {
            object.bigLargeIcon(bitmap2);
        }
        if (bl) {
            object.setSummaryText(charSequence2);
        }
    }

    public static void addBigTextStyle(NotificationBuilderWithBuilderAccessor object, CharSequence charSequence, boolean bl, CharSequence charSequence2, CharSequence charSequence3) {
        object = new Notification.BigTextStyle(object.getBuilder()).setBigContentTitle(charSequence).bigText(charSequence3);
        if (bl) {
            object.setSummaryText(charSequence2);
        }
    }

    public static void addInboxStyle(NotificationBuilderWithBuilderAccessor object, CharSequence object2, boolean bl, CharSequence charSequence, ArrayList<CharSequence> arrayList) {
        object = new Notification.InboxStyle(object.getBuilder()).setBigContentTitle((CharSequence)object2);
        if (bl) {
            object.setSummaryText(charSequence);
        }
        object2 = arrayList.iterator();
        while (object2.hasNext()) {
            object.addLine((CharSequence)object2.next());
        }
    }

    public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int n = list.size();
        for (int i = 0; i < n; ++i) {
            Bundle bundle = list.get(i);
            SparseArray<Bundle> sparseArray2 = sparseArray;
            if (bundle != null) {
                sparseArray2 = sparseArray;
                if (sparseArray == null) {
                    sparseArray2 = new SparseArray<Bundle>();
                }
                sparseArray2.put(i, bundle);
            }
            sparseArray = sparseArray2;
        }
        return sparseArray;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static boolean ensureActionReflectionReadyLocked() {
        boolean bl = true;
        if (sActionsAccessFailed) {
            return false;
        }
        try {
            if (sActionsField == null) {
                sActionClass = Class.forName("android.app.Notification$Action");
                sActionIconField = sActionClass.getDeclaredField("icon");
                sActionTitleField = sActionClass.getDeclaredField("title");
                sActionIntentField = sActionClass.getDeclaredField("actionIntent");
                sActionsField = Notification.class.getDeclaredField("actions");
                sActionsField.setAccessible(true);
            }
        }
        catch (ClassNotFoundException var1_1) {
            Log.e("NotificationCompat", "Unable to access notification actions", var1_1);
            sActionsAccessFailed = true;
        }
        catch (NoSuchFieldException var1_2) {
            Log.e("NotificationCompat", "Unable to access notification actions", var1_2);
            sActionsAccessFailed = true;
        }
        if (sActionsAccessFailed) return false;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static NotificationCompatBase.Action getAction(Notification object, int n, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        Object object2 = sActionsLock;
        synchronized (object2) {
            try {
                Object object3 = NotificationCompatJellybean.getActionObjectsLocked((Notification)object)[n];
                Object var4_7 = null;
                Cloneable cloneable = NotificationCompatJellybean.getExtras((Notification)object);
                object = var4_7;
                if (cloneable == null) return NotificationCompatJellybean.readAction(factory, factory2, sActionIconField.getInt(object3), (CharSequence)sActionTitleField.get(object3), (PendingIntent)sActionIntentField.get(object3), (Bundle)object);
                cloneable = cloneable.getSparseParcelableArray("android.support.actionExtras");
                object = var4_7;
                if (cloneable == null) return NotificationCompatJellybean.readAction(factory, factory2, sActionIconField.getInt(object3), (CharSequence)sActionTitleField.get(object3), (PendingIntent)sActionIntentField.get(object3), (Bundle)object);
                object = (Bundle)cloneable.get(n);
                return NotificationCompatJellybean.readAction(factory, factory2, sActionIconField.getInt(object3), (CharSequence)sActionTitleField.get(object3), (PendingIntent)sActionIntentField.get(object3), (Bundle)object);
            }
            catch (IllegalAccessException var0_1) {
                Log.e("NotificationCompat", "Unable to access notification actions", var0_1);
                sActionsAccessFailed = true;
                return null;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static int getActionCount(Notification arrobject) {
        Object object = sActionsLock;
        synchronized (object) {
            arrobject = NotificationCompatJellybean.getActionObjectsLocked((Notification)arrobject);
            if (arrobject == null) return 0;
            return arrobject.length;
        }
    }

    private static NotificationCompatBase.Action getActionFromBundle(Bundle bundle, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        return factory.build(bundle.getInt("icon"), bundle.getCharSequence("title"), (PendingIntent)bundle.getParcelable("actionIntent"), bundle.getBundle("extras"), RemoteInputCompatJellybean.fromBundleArray(BundleUtil.getBundleArrayFromBundle(bundle, "remoteInputs"), factory2));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static Object[] getActionObjectsLocked(Notification arrobject) {
        Object object = sActionsLock;
        synchronized (object) {
            if (!NotificationCompatJellybean.ensureActionReflectionReadyLocked()) {
                return null;
            }
            try {
                return (Object[])sActionsField.get(arrobject);
            }
            catch (IllegalAccessException var0_1) {
                Log.e("NotificationCompat", "Unable to access notification actions", var0_1);
                sActionsAccessFailed = true;
                return null;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> arrayList, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        if (arrayList == null) {
            return null;
        }
        NotificationCompatBase.Action[] arraction = factory.newArray(arrayList.size());
        int n = 0;
        do {
            NotificationCompatBase.Action[] arraction2 = arraction;
            if (n >= arraction.length) return arraction2;
            arraction[n] = NotificationCompatJellybean.getActionFromBundle((Bundle)arrayList.get(n), factory, factory2);
            ++n;
        } while (true);
    }

    private static Bundle getBundleForAction(NotificationCompatBase.Action action) {
        Bundle bundle = new Bundle();
        bundle.putInt("icon", action.getIcon());
        bundle.putCharSequence("title", action.getTitle());
        bundle.putParcelable("actionIntent", action.getActionIntent());
        bundle.putBundle("extras", action.getExtras());
        bundle.putParcelableArray("remoteInputs", RemoteInputCompatJellybean.toBundleArray(action.getRemoteInputs()));
        return bundle;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public static Bundle getExtras(Notification var0) {
        var3_3 = NotificationCompatJellybean.sExtrasLock;
        // MONITORENTER : var3_3
        if (NotificationCompatJellybean.sExtrasFieldAccessFailed) {
            // MONITOREXIT : var3_3
            return null;
        }
        try {
            if (NotificationCompatJellybean.sExtrasField == null) {
                var1_4 = Notification.class.getDeclaredField("extras");
                if (!Bundle.class.isAssignableFrom(var1_4.getType())) {
                    Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
                    NotificationCompatJellybean.sExtrasFieldAccessFailed = true;
                    // MONITOREXIT : var3_3
                    return null;
                }
                var1_4.setAccessible(true);
                NotificationCompatJellybean.sExtrasField = var1_4;
            }
            var1_4 = var2_5 = (Bundle)NotificationCompatJellybean.sExtrasField.get(var0);
            if (var2_5 == null) {
                var1_4 = new Bundle();
                NotificationCompatJellybean.sExtrasField.set(var0, var1_4);
            }
            // MONITOREXIT : var3_3
            return var1_4;
        }
        catch (IllegalAccessException var0_1) {
            Log.e("NotificationCompat", "Unable to access notification extras", var0_1);
            ** GOTO lbl27
            catch (NoSuchFieldException var0_2) {
                Log.e("NotificationCompat", "Unable to access notification extras", var0_2);
            }
lbl27: // 2 sources:
            NotificationCompatJellybean.sExtrasFieldAccessFailed = true;
            // MONITOREXIT : var3_3
            return null;
        }
    }

    public static String getGroup(Notification notification) {
        return NotificationCompatJellybean.getExtras(notification).getString("android.support.groupKey");
    }

    public static boolean getLocalOnly(Notification notification) {
        return NotificationCompatJellybean.getExtras(notification).getBoolean("android.support.localOnly");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] arraction) {
        if (arraction == null) {
            return null;
        }
        ArrayList<Bundle> arrayList = new ArrayList<Bundle>(arraction.length);
        int n = arraction.length;
        int n2 = 0;
        do {
            ArrayList<Bundle> arrayList2 = arrayList;
            if (n2 >= n) return arrayList2;
            arrayList.add(NotificationCompatJellybean.getBundleForAction(arraction[n2]));
            ++n2;
        } while (true);
    }

    public static String getSortKey(Notification notification) {
        return NotificationCompatJellybean.getExtras(notification).getString("android.support.sortKey");
    }

    public static boolean isGroupSummary(Notification notification) {
        return NotificationCompatJellybean.getExtras(notification).getBoolean("android.support.isGroupSummary");
    }

    public static NotificationCompatBase.Action readAction(NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2, int n, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        RemoteInputCompatBase.RemoteInput[] arrremoteInput = null;
        if (bundle != null) {
            arrremoteInput = RemoteInputCompatJellybean.fromBundleArray(BundleUtil.getBundleArrayFromBundle(bundle, "android.support.remoteInputs"), factory2);
        }
        return factory.build(n, charSequence, pendingIntent, bundle, arrremoteInput);
    }

    public static Bundle writeActionAndGetExtras(Notification.Builder object, NotificationCompatBase.Action action) {
        object.addAction(action.getIcon(), action.getTitle(), action.getActionIntent());
        object = new Bundle(action.getExtras());
        if (action.getRemoteInputs() != null) {
            object.putParcelableArray("android.support.remoteInputs", RemoteInputCompatJellybean.toBundleArray(action.getRemoteInputs()));
        }
        return object;
    }

    public static class Builder
    implements NotificationBuilderWithBuilderAccessor,
    NotificationBuilderWithActions {
        private Notification.Builder b;
        private List<Bundle> mActionExtrasList = new ArrayList<Bundle>();
        private final Bundle mExtras;

        /*
         * Enabled aggressive block sorting
         */
        public Builder(Context object, Notification notification, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, RemoteViews remoteViews, int n, PendingIntent pendingIntent, PendingIntent pendingIntent2, Bitmap bitmap, int n2, int n3, boolean bl, boolean bl2, int n4, CharSequence charSequence4, boolean bl3, Bundle bundle, String string, boolean bl4, String string2) {
            object = new Notification.Builder((Context)object).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
            boolean bl5 = (notification.flags & 2) != 0;
            object = object.setOngoing(bl5);
            bl5 = (notification.flags & 8) != 0;
            object = object.setOnlyAlertOnce(bl5);
            bl5 = (notification.flags & 16) != 0;
            object = object.setAutoCancel(bl5).setDefaults(notification.defaults).setContentTitle(charSequence).setContentText(charSequence2).setSubText(charSequence4).setContentInfo(charSequence3).setContentIntent(pendingIntent).setDeleteIntent(notification.deleteIntent);
            bl5 = (notification.flags & 128) != 0;
            this.b = object.setFullScreenIntent(pendingIntent2, bl5).setLargeIcon(bitmap).setNumber(n).setUsesChronometer(bl2).setPriority(n4).setProgress(n2, n3, bl);
            this.mExtras = new Bundle();
            if (bundle != null) {
                this.mExtras.putAll(bundle);
            }
            if (bl3) {
                this.mExtras.putBoolean("android.support.localOnly", true);
            }
            if (string != null) {
                this.mExtras.putString("android.support.groupKey", string);
                if (bl4) {
                    this.mExtras.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.mExtras.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (string2 != null) {
                this.mExtras.putString("android.support.sortKey", string2);
            }
        }

        @Override
        public void addAction(NotificationCompatBase.Action action) {
            this.mActionExtrasList.add(NotificationCompatJellybean.writeActionAndGetExtras(this.b, action));
        }

        public Notification build() {
            Notification notification = this.b.build();
            Cloneable cloneable = NotificationCompatJellybean.getExtras(notification);
            Bundle bundle = new Bundle(this.mExtras);
            for (String string : this.mExtras.keySet()) {
                if (!cloneable.containsKey(string)) continue;
                bundle.remove(string);
            }
            cloneable.putAll(bundle);
            cloneable = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
            if (cloneable != null) {
                NotificationCompatJellybean.getExtras(notification).putSparseParcelableArray("android.support.actionExtras", (SparseArray<? extends Parcelable>)cloneable);
            }
            return notification;
        }

        @Override
        public Notification.Builder getBuilder() {
            return this.b;
        }
    }

}

