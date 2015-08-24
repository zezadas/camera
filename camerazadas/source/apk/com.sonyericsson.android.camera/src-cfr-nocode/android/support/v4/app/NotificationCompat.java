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
import android.support.v4.app.RemoteInput;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NotificationCompat {
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final String EXTRA_INFO_TEXT = "android.infoText";
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
    public static final String EXTRA_PEOPLE = "android.people";
    public static final String EXTRA_PICTURE = "android.picture";
    public static final String EXTRA_PROGRESS = "android.progress";
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
    public static final String EXTRA_SMALL_ICON = "android.icon";
    public static final String EXTRA_SUB_TEXT = "android.subText";
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
    public static final String EXTRA_TEXT = "android.text";
    public static final String EXTRA_TEXT_LINES = "android.textLines";
    public static final String EXTRA_TITLE = "android.title";
    public static final String EXTRA_TITLE_BIG = "android.title.big";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    private static final NotificationCompatImpl IMPL;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;

    static;

    public NotificationCompat();

    static /* synthetic */ void access$000(NotificationBuilderWithActions var0, ArrayList var1);

    static /* synthetic */ void access$100(NotificationBuilderWithBuilderAccessor var0, Style var1);

    static /* synthetic */ NotificationCompatImpl access$200();

    static /* synthetic */ Notification[] access$500(Bundle var0, String var1);

    private static void addActionsToBuilder(NotificationBuilderWithActions var0, ArrayList<Action> var1);

    private static void addStyleToBuilderJellybean(NotificationBuilderWithBuilderAccessor var0, Style var1);

    public static Action getAction(Notification var0, int var1);

    public static int getActionCount(Notification var0);

    public static Bundle getExtras(Notification var0);

    public static String getGroup(Notification var0);

    public static boolean getLocalOnly(Notification var0);

    private static Notification[] getNotificationArrayFromBundle(Bundle var0, String var1);

    public static String getSortKey(Notification var0);

    public static boolean isGroupSummary(Notification var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Action
    extends NotificationCompatBase.Action {
        public static final NotificationCompatBase.Action.Factory FACTORY;
        public PendingIntent actionIntent;
        public int icon;
        private final Bundle mExtras;
        private final RemoteInput[] mRemoteInputs;
        public CharSequence title;

        static;

        public Action(int var1, CharSequence var2, PendingIntent var3);

        private Action(int var1, CharSequence var2, PendingIntent var3, Bundle var4, RemoteInput[] var5);

        /* synthetic */ Action(int var1, CharSequence var2, PendingIntent var3, Bundle var4, RemoteInput[] var5, android.support.v4.app.NotificationCompat$1 var6);

        static /* synthetic */ Bundle access$300(Action var0);

        @Override
        protected PendingIntent getActionIntent();

        @Override
        public Bundle getExtras();

        @Override
        protected int getIcon();

        public RemoteInput[] getRemoteInputs();

        @Override
        protected CharSequence getTitle();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class Builder {
            private final Bundle mExtras;
            private final int mIcon;
            private final PendingIntent mIntent;
            private ArrayList<RemoteInput> mRemoteInputs;
            private final CharSequence mTitle;

            public Builder(int var1, CharSequence var2, PendingIntent var3);

            private Builder(int var1, CharSequence var2, PendingIntent var3, Bundle var4);

            public Builder(Action var1);

            public Builder addExtras(Bundle var1);

            public Builder addRemoteInput(RemoteInput var1);

            public Action build();

            public Builder extend(Extender var1);

            public Bundle getExtras();
        }

        public static interface Extender {
            public Builder extend(Builder var1);
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static final class WearableExtender
        implements Extender {
            private static final int DEFAULT_FLAGS = 1;
            private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
            private static final int FLAG_AVAILABLE_OFFLINE = 1;
            private static final String KEY_FLAGS = "flags";
            private int mFlags;

            public WearableExtender();

            public WearableExtender(Action var1);

            private void setFlag(int var1, boolean var2);

            public WearableExtender clone();

            @Override
            public Builder extend(Builder var1);

            public boolean isAvailableOffline();

            public WearableExtender setAvailableOffline(boolean var1);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class BigPictureStyle
    extends Style {
        Bitmap mBigLargeIcon;
        boolean mBigLargeIconSet;
        Bitmap mPicture;

        public BigPictureStyle();

        public BigPictureStyle(Builder var1);

        public BigPictureStyle bigLargeIcon(Bitmap var1);

        public BigPictureStyle bigPicture(Bitmap var1);

        public BigPictureStyle setBigContentTitle(CharSequence var1);

        public BigPictureStyle setSummaryText(CharSequence var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class BigTextStyle
    extends Style {
        CharSequence mBigText;

        public BigTextStyle();

        public BigTextStyle(Builder var1);

        public BigTextStyle bigText(CharSequence var1);

        public BigTextStyle setBigContentTitle(CharSequence var1);

        public BigTextStyle setSummaryText(CharSequence var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        ArrayList<Action> mActions;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        Context mContext;
        Bundle mExtras;
        PendingIntent mFullScreenIntent;
        String mGroupKey;
        boolean mGroupSummary;
        Bitmap mLargeIcon;
        boolean mLocalOnly;
        Notification mNotification;
        int mNumber;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        String mSortKey;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        boolean mUseChronometer;

        public Builder(Context var1);

        private void setFlag(int var1, boolean var2);

        public Builder addAction(int var1, CharSequence var2, PendingIntent var3);

        public Builder addAction(Action var1);

        public Builder addExtras(Bundle var1);

        public Notification build();

        public Builder extend(Extender var1);

        public Bundle getExtras();

        @Deprecated
        public Notification getNotification();

        public Builder setAutoCancel(boolean var1);

        public Builder setContent(RemoteViews var1);

        public Builder setContentInfo(CharSequence var1);

        public Builder setContentIntent(PendingIntent var1);

        public Builder setContentText(CharSequence var1);

        public Builder setContentTitle(CharSequence var1);

        public Builder setDefaults(int var1);

        public Builder setDeleteIntent(PendingIntent var1);

        public Builder setExtras(Bundle var1);

        public Builder setFullScreenIntent(PendingIntent var1, boolean var2);

        public Builder setGroup(String var1);

        public Builder setGroupSummary(boolean var1);

        public Builder setLargeIcon(Bitmap var1);

        public Builder setLights(int var1, int var2, int var3);

        public Builder setLocalOnly(boolean var1);

        public Builder setNumber(int var1);

        public Builder setOngoing(boolean var1);

        public Builder setOnlyAlertOnce(boolean var1);

        public Builder setPriority(int var1);

        public Builder setProgress(int var1, int var2, boolean var3);

        public Builder setSmallIcon(int var1);

        public Builder setSmallIcon(int var1, int var2);

        public Builder setSortKey(String var1);

        public Builder setSound(Uri var1);

        public Builder setSound(Uri var1, int var2);

        public Builder setStyle(Style var1);

        public Builder setSubText(CharSequence var1);

        public Builder setTicker(CharSequence var1);

        public Builder setTicker(CharSequence var1, RemoteViews var2);

        public Builder setUsesChronometer(boolean var1);

        public Builder setVibrate(long[] var1);

        public Builder setWhen(long var1);
    }

    public static interface Extender {
        public Builder extend(Builder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class InboxStyle
    extends Style {
        ArrayList<CharSequence> mTexts;

        public InboxStyle();

        public InboxStyle(Builder var1);

        public InboxStyle addLine(CharSequence var1);

        public InboxStyle setBigContentTitle(CharSequence var1);

        public InboxStyle setSummaryText(CharSequence var1);
    }

    static interface NotificationCompatImpl {
        public Notification build(Builder var1);

        public Action getAction(Notification var1, int var2);

        public int getActionCount(Notification var1);

        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var1);

        public Bundle getExtras(Notification var1);

        public String getGroup(Notification var1);

        public boolean getLocalOnly(Notification var1);

        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] var1);

        public String getSortKey(Notification var1);

        public boolean isGroupSummary(Notification var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplApi20
    extends NotificationCompatImplKitKat {
        NotificationCompatImplApi20();

        @Override
        public Notification build(Builder var1);

        @Override
        public Action getAction(Notification var1, int var2);

        @Override
        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var1);

        @Override
        public String getGroup(Notification var1);

        @Override
        public boolean getLocalOnly(Notification var1);

        @Override
        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] var1);

        @Override
        public String getSortKey(Notification var1);

        @Override
        public boolean isGroupSummary(Notification var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplBase
    implements NotificationCompatImpl {
        NotificationCompatImplBase();

        @Override
        public Notification build(Builder var1);

        @Override
        public Action getAction(Notification var1, int var2);

        @Override
        public int getActionCount(Notification var1);

        @Override
        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var1);

        @Override
        public Bundle getExtras(Notification var1);

        @Override
        public String getGroup(Notification var1);

        @Override
        public boolean getLocalOnly(Notification var1);

        @Override
        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] var1);

        @Override
        public String getSortKey(Notification var1);

        @Override
        public boolean isGroupSummary(Notification var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplGingerbread
    extends NotificationCompatImplBase {
        NotificationCompatImplGingerbread();

        @Override
        public Notification build(Builder var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplHoneycomb
    extends NotificationCompatImplBase {
        NotificationCompatImplHoneycomb();

        @Override
        public Notification build(Builder var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplIceCreamSandwich
    extends NotificationCompatImplBase {
        NotificationCompatImplIceCreamSandwich();

        @Override
        public Notification build(Builder var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplJellybean
    extends NotificationCompatImplBase {
        NotificationCompatImplJellybean();

        @Override
        public Notification build(Builder var1);

        @Override
        public Action getAction(Notification var1, int var2);

        @Override
        public int getActionCount(Notification var1);

        @Override
        public Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> var1);

        @Override
        public Bundle getExtras(Notification var1);

        @Override
        public String getGroup(Notification var1);

        @Override
        public boolean getLocalOnly(Notification var1);

        @Override
        public ArrayList<Parcelable> getParcelableArrayListForActions(Action[] var1);

        @Override
        public String getSortKey(Notification var1);

        @Override
        public boolean isGroupSummary(Notification var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class NotificationCompatImplKitKat
    extends NotificationCompatImplJellybean {
        NotificationCompatImplKitKat();

        @Override
        public Notification build(Builder var1);

        @Override
        public Action getAction(Notification var1, int var2);

        @Override
        public int getActionCount(Notification var1);

        @Override
        public Bundle getExtras(Notification var1);

        @Override
        public String getGroup(Notification var1);

        @Override
        public boolean getLocalOnly(Notification var1);

        @Override
        public String getSortKey(Notification var1);

        @Override
        public boolean isGroupSummary(Notification var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class Style {
        CharSequence mBigContentTitle;
        Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet;

        public Style();

        public Notification build();

        public void setBuilder(Builder var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class WearableExtender
    implements Extender {
        private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
        private static final int DEFAULT_FLAGS = 1;
        private static final int DEFAULT_GRAVITY = 80;
        private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
        private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
        private static final int FLAG_HINT_HIDE_ICON = 2;
        private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
        private static final int FLAG_START_SCROLL_BOTTOM = 8;
        private static final String KEY_ACTIONS = "actions";
        private static final String KEY_BACKGROUND = "background";
        private static final String KEY_CONTENT_ACTION_INDEX = "contentActionIndex";
        private static final String KEY_CONTENT_ICON = "contentIcon";
        private static final String KEY_CONTENT_ICON_GRAVITY = "contentIconGravity";
        private static final String KEY_CUSTOM_CONTENT_HEIGHT = "customContentHeight";
        private static final String KEY_CUSTOM_SIZE_PRESET = "customSizePreset";
        private static final String KEY_DISPLAY_INTENT = "displayIntent";
        private static final String KEY_FLAGS = "flags";
        private static final String KEY_GRAVITY = "gravity";
        private static final String KEY_PAGES = "pages";
        public static final int SIZE_DEFAULT = 0;
        public static final int SIZE_FULL_SCREEN = 5;
        public static final int SIZE_LARGE = 4;
        public static final int SIZE_MEDIUM = 3;
        public static final int SIZE_SMALL = 2;
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> mActions;
        private Bitmap mBackground;
        private int mContentActionIndex;
        private int mContentIcon;
        private int mContentIconGravity;
        private int mCustomContentHeight;
        private int mCustomSizePreset;
        private PendingIntent mDisplayIntent;
        private int mFlags;
        private int mGravity;
        private ArrayList<Notification> mPages;

        public WearableExtender();

        public WearableExtender(Notification var1);

        private void setFlag(int var1, boolean var2);

        public WearableExtender addAction(Action var1);

        public WearableExtender addActions(List<Action> var1);

        public WearableExtender addPage(Notification var1);

        public WearableExtender addPages(List<Notification> var1);

        public WearableExtender clearActions();

        public WearableExtender clearPages();

        public WearableExtender clone();

        @Override
        public Builder extend(Builder var1);

        public List<Action> getActions();

        public Bitmap getBackground();

        public int getContentAction();

        public int getContentIcon();

        public int getContentIconGravity();

        public boolean getContentIntentAvailableOffline();

        public int getCustomContentHeight();

        public int getCustomSizePreset();

        public PendingIntent getDisplayIntent();

        public int getGravity();

        public boolean getHintHideIcon();

        public boolean getHintShowBackgroundOnly();

        public List<Notification> getPages();

        public boolean getStartScrollBottom();

        public WearableExtender setBackground(Bitmap var1);

        public WearableExtender setContentAction(int var1);

        public WearableExtender setContentIcon(int var1);

        public WearableExtender setContentIconGravity(int var1);

        public WearableExtender setContentIntentAvailableOffline(boolean var1);

        public WearableExtender setCustomContentHeight(int var1);

        public WearableExtender setCustomSizePreset(int var1);

        public WearableExtender setDisplayIntent(PendingIntent var1);

        public WearableExtender setGravity(int var1);

        public WearableExtender setHintHideIcon(boolean var1);

        public WearableExtender setHintShowBackgroundOnly(boolean var1);

        public WearableExtender setStartScrollBottom(boolean var1);
    }

}

