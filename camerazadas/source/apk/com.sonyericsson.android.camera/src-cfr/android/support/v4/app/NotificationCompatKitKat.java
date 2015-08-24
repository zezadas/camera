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
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.NotificationCompatJellybean;
import android.support.v4.app.RemoteInputCompatBase;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

class NotificationCompatKitKat {
    NotificationCompatKitKat() {
    }

    public static NotificationCompatBase.Action getAction(Notification parcelable, int n, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        Notification.Action action = parcelable.actions[n];
        Object var4_5 = null;
        SparseArray sparseArray = parcelable.extras.getSparseParcelableArray("android.support.actionExtras");
        parcelable = var4_5;
        if (sparseArray != null) {
            parcelable = (Bundle)sparseArray.get(n);
        }
        return NotificationCompatJellybean.readAction(factory, factory2, action.icon, action.title, action.actionIntent, (Bundle)parcelable);
    }

    public static int getActionCount(Notification notification) {
        if (notification.actions != null) {
            return notification.actions.length;
        }
        return 0;
    }

    public static Bundle getExtras(Notification notification) {
        return notification.extras;
    }

    public static String getGroup(Notification notification) {
        return notification.extras.getString("android.support.groupKey");
    }

    public static boolean getLocalOnly(Notification notification) {
        return notification.extras.getBoolean("android.support.localOnly");
    }

    public static String getSortKey(Notification notification) {
        return notification.extras.getString("android.support.sortKey");
    }

    public static boolean isGroupSummary(Notification notification) {
        return notification.extras.getBoolean("android.support.isGroupSummary");
    }

    public static class Builder
    implements NotificationBuilderWithBuilderAccessor,
    NotificationBuilderWithActions {
        private Notification.Builder b;
        private List<Bundle> mActionExtrasList = new ArrayList<Bundle>();
        private Bundle mExtras;

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
            SparseArray<Bundle> sparseArray = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
            if (sparseArray != null) {
                this.mExtras.putSparseParcelableArray("android.support.actionExtras", sparseArray);
            }
            this.b.setExtras(this.mExtras);
            return this.b.build();
        }

        @Override
        public Notification.Builder getBuilder() {
            return this.b;
        }
    }

}

