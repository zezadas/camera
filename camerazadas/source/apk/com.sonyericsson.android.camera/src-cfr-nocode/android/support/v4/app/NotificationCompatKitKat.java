/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.NotificationBuilderWithActions;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import java.util.List;

class NotificationCompatKitKat {
    NotificationCompatKitKat();

    public static NotificationCompatBase.Action getAction(Notification var0, int var1, NotificationCompatBase.Action.Factory var2, RemoteInputCompatBase.RemoteInput.Factory var3);

    public static int getActionCount(Notification var0);

    public static Bundle getExtras(Notification var0);

    public static String getGroup(Notification var0);

    public static boolean getLocalOnly(Notification var0);

    public static String getSortKey(Notification var0);

    public static boolean isGroupSummary(Notification var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder
    implements NotificationBuilderWithBuilderAccessor,
    NotificationBuilderWithActions {
        private Notification.Builder b;
        private List<Bundle> mActionExtrasList;
        private Bundle mExtras;

        public Builder(Context var1, Notification var2, CharSequence var3, CharSequence var4, CharSequence var5, RemoteViews var6, int var7, PendingIntent var8, PendingIntent var9, Bitmap var10, int var11, int var12, boolean var13, boolean var14, int var15, CharSequence var16, boolean var17, Bundle var18, String var19, boolean var20, String var21);

        @Override
        public void addAction(NotificationCompatBase.Action var1);

        public Notification build();

        @Override
        public Notification.Builder getBuilder();
    }

}

