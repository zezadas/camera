/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraButtonIntentReceiver
extends BroadcastReceiver {
    private static final int CAMERA_DEVICE_AUTO_RELEASE_TIMER_DURATION = 5000;
    private static final String NORMAL_LAUNCH_FAST_CAPTURE_START_SUBJECT = "start";
    private static final String TAG;
    private static boolean mIsStartUpNotificationRequired;
    private static MediaPlayer mStartUpNotifier;
    private static final Object mStartUpNotifierLock;
    private static ExecutorService mStartUpNotifyerService;
    private static ReceiverState sCurrentState;
    private static IntentKind sLatestIntent;
    private static CustomDimension.GALaunchedBy sLaunchedBy;
    private static Timer sReleaseTimer;
    private static final Object sReleaseTimerLock;

    static;

    public CameraButtonIntentReceiver();

    static /* synthetic */ Object access$000();

    static /* synthetic */ Timer access$100();

    static /* synthetic */ Timer access$102(Timer var0);

    static /* synthetic */ ReceiverState access$202(ReceiverState var0);

    static /* synthetic */ Object access$300();

    static /* synthetic */ MediaPlayer access$400();

    static /* synthetic */ MediaPlayer access$402(MediaPlayer var0);

    static /* synthetic */ ExecutorService access$700();

    private static void changeStateTo(ReceiverState var0);

    public static void clearLaunchedBy();

    public static void enableStartUpNotificationFlag();

    public static CustomDimension.GALaunchedBy getLaunchedBy();

    public static void killStartUpNotifierImmediately();

    private static void logPerformance(String var0);

    public static void notifyStartUpIfRequired(Context var0);

    private void onActivityPausedReceived(Context var1, boolean var2);

    private void onActivityResumedReceived(Context var1);

    private void onCancelReceived(Context var1);

    private void onDirectStartReceived(Context var1, String var2);

    private void onNullReceived(Context var1);

    private void onPrepareReceived(Context var1);

    private void onStartReceived(Context var1, String var2);

    private static void releaseCameraDeviceReleaseTimer();

    public static void releaseStartUpNotificationFlag();

    private static void setLatestIntent(IntentKind var0);

    private void setLaunchedBy(Context var1, IntentKind var2);

    private void showScreenPinnedToastMessage(Context var1);

    private static void startCameraDeviceReleaseTimer();

    @SuppressLint(value={"NewApi"})
    public boolean isInLockTaskMode(Context var1);

    @Override
    public final void onReceive(Context var1, Intent var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class CameraDeviceReleaseTimerTask
    extends TimerTask {
        CameraDeviceReleaseTimerTask();

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class IntentKind
    extends Enum<IntentKind> {
        private static final /* synthetic */ IntentKind[] $VALUES;
        public static final /* enum */ IntentKind ACTIVITY_PAUSED;
        public static final /* enum */ IntentKind ACTIVITY_RESUMED;
        public static final /* enum */ IntentKind CANCEL;
        public static final /* enum */ IntentKind NULL;
        public static final /* enum */ IntentKind PREPARE;
        public static final /* enum */ IntentKind START;
        public static final /* enum */ IntentKind START_SECURE;

        static;

        private IntentKind();

        public static IntentKind valueOf(String var0);

        public static IntentKind[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class OnStartUpNotificationCompletedTask
    implements MediaPlayer.OnCompletionListener {
        private OnStartUpNotificationCompletedTask();

        /* synthetic */ OnStartUpNotificationCompletedTask( var1);

        @Override
        public void onCompletion(MediaPlayer var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class ReceiverState
    extends Enum<ReceiverState> {
        private static final /* synthetic */ ReceiverState[] $VALUES;
        public static final /* enum */ ReceiverState ACTIVE;
        public static final /* enum */ ReceiverState IDLE;
        public static final /* enum */ ReceiverState PREPARE;

        static;

        private ReceiverState();

        public static ReceiverState valueOf(String var0);

        public static ReceiverState[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class ReleaseStartUpNotifierTask
    implements Runnable {
        private ReleaseStartUpNotifierTask();

        /* synthetic */ ReleaseStartUpNotifierTask( var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class StartUpNotifierTask
    implements Runnable {
        private final Context mContext;

        public StartUpNotifierTask(Context var1);

        @Override
        public void run();
    }

}

