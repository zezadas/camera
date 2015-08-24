/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class CameraButtonIntentReceiver
extends BroadcastReceiver {
    private static final int CAMERA_DEVICE_AUTO_RELEASE_TIMER_DURATION = 5000;
    private static final String NORMAL_LAUNCH_FAST_CAPTURE_START_SUBJECT = "start";
    private static final String TAG = CameraButtonIntentReceiver.class.getSimpleName();
    private static boolean mIsStartUpNotificationRequired;
    private static MediaPlayer mStartUpNotifier;
    private static final Object mStartUpNotifierLock;
    private static ExecutorService mStartUpNotifyerService;
    private static ReceiverState sCurrentState;
    private static IntentKind sLatestIntent;
    private static CustomDimension.GALaunchedBy sLaunchedBy;
    private static Timer sReleaseTimer;
    private static final Object sReleaseTimerLock;

    static {
        sReleaseTimer = null;
        sReleaseTimerLock = new Object();
        sCurrentState = ReceiverState.IDLE;
        sLatestIntent = IntentKind.NULL;
        sLaunchedBy = CustomDimension.GALaunchedBy.OTHER;
        mIsStartUpNotificationRequired = false;
        mStartUpNotifyerService = Executors.newSingleThreadExecutor();
        mStartUpNotifier = null;
        mStartUpNotifierLock = new Object();
    }

    private static void changeStateTo(ReceiverState receiverState) {
        sCurrentState = receiverState;
    }

    public static void clearLaunchedBy() {
        sLaunchedBy = CustomDimension.GALaunchedBy.OTHER;
    }

    public static void enableStartUpNotificationFlag() {
        mIsStartUpNotificationRequired = true;
    }

    public static CustomDimension.GALaunchedBy getLaunchedBy() {
        return sLaunchedBy;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void killStartUpNotifierImmediately() {
        Object object = mStartUpNotifierLock;
        synchronized (object) {
            if (mStartUpNotifier != null) {
                mStartUpNotifier.stop();
                mStartUpNotifier.release();
                mStartUpNotifier = null;
            }
            return;
        }
    }

    private static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static void notifyStartUpIfRequired(Context object) {
        if (!mIsStartUpNotificationRequired) return;
        mIsStartUpNotificationRequired = false;
        if (mStartUpNotifier != null) {
            return;
        }
        object = new StartUpNotifierTask((Context)object);
        mStartUpNotifyerService.execute((Runnable)object);
    }

    private void onActivityPausedReceived(Context context, boolean bl) {
        if (bl) {
            CameraButtonIntentReceiver.releaseStartUpNotificationFlag();
        }
    }

    private void onActivityResumedReceived(Context context) {
    }

    private void onCancelReceived(Context context) {
        FastCapturingActivity.staticCameraDevice().releaseCameraInstance();
        CameraButtonIntentReceiver.releaseCameraDeviceReleaseTimer();
    }

    private void onDirectStartReceived(Context context, String string) {
        if (this.isInLockTaskMode(context)) {
            CameraButtonIntentReceiver.changeStateTo(ReceiverState.IDLE);
            return;
        }
        FastCapturingActivity.staticCameraDevice().startCameraOpen(context, 0, null, false);
        FastCapturingActivity.requestReloadFastCaptureSetting();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClass(context, FastCapturingActivity.class);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", string);
        context.startActivity(intent);
        mIsStartUpNotificationRequired = true;
    }

    private void onNullReceived(Context context) {
        FastCapturingActivity.requestReloadFastCaptureSetting();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClass(context, FastCapturingActivity.class);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", "start");
        context.startActivity(intent);
        mIsStartUpNotificationRequired = true;
    }

    private void onPrepareReceived(Context context) {
        if (this.isInLockTaskMode(context)) {
            CameraButtonIntentReceiver.changeStateTo(ReceiverState.IDLE);
            return;
        }
        FastCapturingActivity.staticCameraDevice().startCameraOpen(context, 0, null, false);
        CameraButtonIntentReceiver.startCameraDeviceReleaseTimer();
    }

    private void onStartReceived(Context context, String string) {
        if (this.isInLockTaskMode(context)) {
            CameraButtonIntentReceiver.changeStateTo(ReceiverState.IDLE);
            return;
        }
        FastCapturingActivity.staticCameraDevice().startCameraOpen(context, 0, null, false);
        FastCapturingActivity.requestReloadFastCaptureSetting();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClass(context, FastCapturingActivity.class);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", string);
        context.startActivity(intent);
        mIsStartUpNotificationRequired = true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void releaseCameraDeviceReleaseTimer() {
        synchronized (CameraButtonIntentReceiver.class) {
            Object object = sReleaseTimerLock;
            synchronized (object) {
                if (sReleaseTimer != null) {
                    sReleaseTimer.cancel();
                    sReleaseTimer.purge();
                    sReleaseTimer = null;
                }
                return;
            }
        }
    }

    public static void releaseStartUpNotificationFlag() {
        mIsStartUpNotificationRequired = false;
    }

    private static void setLatestIntent(IntentKind intentKind) {
        sLatestIntent = intentKind;
    }

    private void setLaunchedBy(Context context, IntentKind intentKind) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind[intentKind.ordinal()]) {
            default: {
                sLaunchedBy = CustomDimension.GALaunchedBy.OTHER;
                return;
            }
            case 1: {
                sLaunchedBy = CustomDimension.GALaunchedBy.HW_CAMERA_KEY;
                return;
            }
            case 2: {
                sLaunchedBy = CustomDimension.GALaunchedBy.HW_CAMERA_KEY_LOCK;
                return;
            }
            case 3: 
            case 4: 
        }
        sLaunchedBy = CustomDimension.GALaunchedBy.LOCK_SCREEN;
    }

    private void showScreenPinnedToastMessage(Context context) {
        if (this.isInLockTaskMode(context)) {
            Toast.makeText(context, 2131296718, 0).show();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void startCameraDeviceReleaseTimer() {
        synchronized (CameraButtonIntentReceiver.class) {
            Object object = sReleaseTimerLock;
            synchronized (object) {
                if (sReleaseTimer == null) {
                    sReleaseTimer = new Timer(true);
                    sReleaseTimer.schedule((TimerTask)new CameraDeviceReleaseTimerTask(), 5000);
                }
                return;
            }
        }
    }

    @SuppressLint(value={"NewApi"})
    public boolean isInLockTaskMode(Context context) {
        if (21 <= Build.VERSION.SDK_INT) {
            return ((ActivityManager)context.getSystemService("activity")).isInLockTaskMode();
        }
        return false;
    }

    /*
     * Exception decompiling
     */
    @Override
    public final void onReceive(Context var1_1, Intent var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    static class CameraDeviceReleaseTimerTask
    extends TimerTask {
        CameraDeviceReleaseTimerTask() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            Object object = sReleaseTimerLock;
            synchronized (object) {
                if (sReleaseTimer != null) {
                    sReleaseTimer.cancel();
                    sReleaseTimer.purge();
                    sReleaseTimer = null;
                }
            }
            sCurrentState = ReceiverState.IDLE;
            FastCapturingActivity.staticCameraDevice().releaseCameraInstance();
        }
    }

    private static enum IntentKind {
        NULL,
        PREPARE,
        START,
        START_SECURE,
        CANCEL,
        ACTIVITY_RESUMED,
        ACTIVITY_PAUSED;
        

        private IntentKind() {
        }
    }

    private static final class OnStartUpNotificationCompletedTask
    implements MediaPlayer.OnCompletionListener {
        private OnStartUpNotificationCompletedTask() {
        }

        @Override
        public void onCompletion(MediaPlayer object) {
            object = new ReleaseStartUpNotifierTask();
            mStartUpNotifyerService.execute((Runnable)object);
        }
    }

    private static enum ReceiverState {
        IDLE,
        PREPARE,
        ACTIVE;
        

        private ReceiverState() {
        }
    }

    private static final class ReleaseStartUpNotifierTask
    implements Runnable {
        private ReleaseStartUpNotifierTask() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            Object object = mStartUpNotifierLock;
            synchronized (object) {
                if (mStartUpNotifier != null) {
                    mStartUpNotifier.release();
                    mStartUpNotifier = null;
                }
                return;
            }
        }
    }

    private static final class StartUpNotifierTask
    implements Runnable {
        private final Context mContext;

        public StartUpNotifierTask(Context context) {
            this.mContext = context;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            Object object = mStartUpNotifierLock;
            synchronized (object) {
                block7 : {
                    AudioAttributes audioAttributes;
                    block6 : {
                        audioAttributes = new AudioAttributes.Builder().setLegacyStreamType(5).build();
                        mStartUpNotifier = MediaPlayer.create(this.mContext, 2131165201, audioAttributes, 0);
                        MediaPlayer mediaPlayer = mStartUpNotifier;
                        if (mediaPlayer != null) break block6;
                        return;
                    }
                    try {
                        mStartUpNotifier.stop();
                        mStartUpNotifier.setAudioAttributes(audioAttributes);
                        mStartUpNotifier.prepare();
                        mStartUpNotifier.start();
                        mStartUpNotifier.setOnCompletionListener(new OnStartUpNotificationCompletedTask());
                    }
                    catch (Exception var2_3) {
                        if (mStartUpNotifier == null) break block7;
                        mStartUpNotifier.release();
                        mStartUpNotifier = null;
                    }
                }
                return;
            }
        }
    }

}

