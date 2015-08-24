/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatApi20;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import java.util.ArrayList;

class NotificationCompatApi20 {
    NotificationCompatApi20() {
    }

    public static NotificationCompatBase.Action getAction(Notification notification, int n, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory factory2) {
        return NotificationCompatApi20.getActionCompatFromAction(notification.actions[n], factory, factory2);
    }

    private static NotificationCompatBase.Action getActionCompatFromAction(Notification.Action action, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory arrremoteInput) {
        arrremoteInput = RemoteInputCompatApi20.toCompat(action.getRemoteInputs(), (RemoteInputCompatBase.RemoteInput.Factory)arrremoteInput);
        return factory.build(action.icon, action.title, action.actionIntent, action.getExtras(), arrremoteInput);
    }

    private static Notification.Action getActionFromActionCompat(NotificationCompatBase.Action arrremoteInput) {
        Notification.Action.Builder builder = new Notification.Action.Builder(arrremoteInput.getIcon(), arrremoteInput.getTitle(), arrremoteInput.getActionIntent()).addExtras(arrremoteInput.getExtras());
        if ((arrremoteInput = arrremoteInput.getRemoteInputs()) != null) {
            arrremoteInput = RemoteInputCompatApi20.fromCompat(arrremoteInput);
            int n = arrremoteInput.length;
            for (int i = 0; i < n; ++i) {
                builder.addRemoteInput((RemoteInput)arrremoteInput[i]);
            }
        }
        return builder.build();
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
            arraction[n] = NotificationCompatApi20.getActionCompatFromAction((Notification.Action)arrayList.get(n), factory, factory2);
            ++n;
        } while (true);
    }

    public static String getGroup(Notification notification) {
        return notification.getGroup();
    }

    public static boolean getLocalOnly(Notification notification) {
        if ((notification.flags & 256) != 0) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] arraction) {
        if (arraction == null) {
            return null;
        }
        ArrayList<Notification.Action> arrayList = new ArrayList<Notification.Action>(arraction.length);
        int n = arraction.length;
        int n2 = 0;
        do {
            ArrayList<Notification.Action> arrayList2 = arrayList;
            if (n2 >= n) return arrayList2;
            arrayList.add(NotificationCompatApi20.getActionFromActionCompat(arraction[n2]));
            ++n2;
        } while (true);
    }

    public static String getSortKey(Notification notification) {
        return notification.getSortKey();
    }

    public static boolean isGroupSummary(Notification notification) {
        if ((notification.flags & 512) != 0) {
            return true;
        }
        return false;
    }

    public static class Builder
    implements NotificationBuilderWithBuilderAccessor,
    NotificationBuilderWithActions {
        private Notification.Builder b;

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
            this.b = object.setFullScreenIntent(pendingIntent2, bl5).setLargeIcon(bitmap).setNumber(n).setUsesChronometer(bl2).setPriority(n4).setProgress(n2, n3, bl).setLocalOnly(bl3).setExtras(bundle).setGroup(string).setGroupSummary(bl4).setSortKey(string2);
        }

        @Override
        public void addAction(NotificationCompatBase.Action action) {
            Notification.Action.Builder builder = new Notification.Action.Builder(action.getIcon(), action.getTitle(), action.getActionIntent());
            if (action.getRemoteInputs() != null) {
                RemoteInput[] arrremoteInput = RemoteInputCompatApi20.fromCompat(action.getRemoteInputs());
                int n = arrremoteInput.length;
                for (int i = 0; i < n; ++i) {
                    builder.addRemoteInput(arrremoteInput[i]);
                }
            }
            if (action.getExtras() != null) {
                builder.addExtras(action.getExtras());
            }
            this.b.addAction(builder.build());
        }

        public Notification build() {
            return this.b.build();
        }

        @Override
        public Notification.Builder getBuilder() {
            return this.b;
        }
    }

}

