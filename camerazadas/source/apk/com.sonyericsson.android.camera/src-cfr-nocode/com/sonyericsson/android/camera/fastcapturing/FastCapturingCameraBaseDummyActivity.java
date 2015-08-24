/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FastCapturingCameraBaseDummyActivity
extends Activity {
    private static final int FINISH_DELAY_TIME = 100;
    public static final String INTENT_ACTION_FAST_CAPTURING_CAMERA_FINISHED = "com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED";
    private static String TAG;
    private static List<Activity> mAvailableActivities;
    private static final IntentFilter mDestroyIntentFilter;
    private DestroyRequestReceiver mDestroyRequestReceiver;
    FinishAllTask mFinishAllTask;
    private Handler mHandler;

    static;

    public FastCapturingCameraBaseDummyActivity();

    static /* synthetic */ List access$000();

    static /* synthetic */ Handler access$100(FastCapturingCameraBaseDummyActivity var0);

    public void finishAll();

    @Override
    public void onCreate(Bundle var1);

    @Override
    public void onDestroy();

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public void onNewIntent(Intent var1);

    @Override
    public void onPause();

    @Override
    public void onRestart();

    @Override
    public void onResume();

    @Override
    public void onStart();

    @Override
    public void onStop();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class DestroyRequestReceiver
    extends BroadcastReceiver {
        final /* synthetic */ FastCapturingCameraBaseDummyActivity this$0;

        DestroyRequestReceiver(FastCapturingCameraBaseDummyActivity var1);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FinishAllTask
    implements Runnable {
        final /* synthetic */ FastCapturingCameraBaseDummyActivity this$0;

        private FinishAllTask(FastCapturingCameraBaseDummyActivity var1);

        /* synthetic */ FinishAllTask(FastCapturingCameraBaseDummyActivity var1,  var2);

        private void retry();

        @Override
        public void run();
    }

}

