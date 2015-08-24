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
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import java.util.ArrayList;
import java.util.List;

public class FastCapturingCameraBaseDummyActivity
extends Activity {
    private static final int FINISH_DELAY_TIME = 100;
    public static final String INTENT_ACTION_FAST_CAPTURING_CAMERA_FINISHED = "com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED";
    private static String TAG = "FastCapturingCameraBaseDummyActivity";
    private static List<Activity> mAvailableActivities = new ArrayList<Activity>();
    private static final IntentFilter mDestroyIntentFilter = new IntentFilter();
    private DestroyRequestReceiver mDestroyRequestReceiver;
    FinishAllTask mFinishAllTask;
    private Handler mHandler = new Handler();

    static {
        mDestroyIntentFilter.addAction("com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED");
        mDestroyIntentFilter.addAction("android.intent.action.SCREEN_ON");
        mDestroyIntentFilter.addAction("android.intent.action.SCREEN_OFF");
        mDestroyIntentFilter.addAction("android.intent.action.USER_PRESENT");
    }

    public FastCapturingCameraBaseDummyActivity() {
        this.mFinishAllTask = new FinishAllTask();
    }

    public void finishAll() {
        this.mHandler.postDelayed(this.mFinishAllTask, 100);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(null);
        this.mDestroyRequestReceiver = new DestroyRequestReceiver();
        this.registerReceiver(this.mDestroyRequestReceiver, mDestroyIntentFilter);
        mAvailableActivities.add(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.mDestroyRequestReceiver != null) {
            this.unregisterReceiver(this.mDestroyRequestReceiver);
            this.mDestroyRequestReceiver = null;
        }
        mAvailableActivities.remove(this);
    }

    @Override
    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        this.finish();
        return false;
    }

    @Override
    public void onNewIntent(Intent intent) {
        if ("com.sonyericsson.android.camera.action.FAST_CAPTURING_CAMERA_FINISHED".equals(intent.getAction()) || "android.intent.action.SCREEN_ON".equals(intent.getAction()) || "android.intent.action.SCREEN_OFF".equals(intent.getAction()) || "android.intent.action.USER_PRESENT".equals(intent.getAction())) {
            this.finishAll();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onRestart() {
        super.onRestart();
    }

    @Override
    public void onResume() {
        super.onResume();
        switch (FastCapturingActivity.staticCameraDevice().getCameraDeviceStatus()) {
            default: {
                return;
            }
            case 0: 
        }
        this.finish();
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void onStop() {
        super.onStop();
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.finish();
        return false;
    }

    class DestroyRequestReceiver
    extends BroadcastReceiver {
        DestroyRequestReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            FastCapturingCameraBaseDummyActivity.this.finishAll();
        }
    }

    private class FinishAllTask
    implements Runnable {
        private FinishAllTask() {
        }

        private void retry() {
            FastCapturingCameraBaseDummyActivity.this.mHandler.postDelayed(FastCapturingCameraBaseDummyActivity.this.mFinishAllTask, 100);
        }

        @Override
        public void run() {
            switch (FastCapturingActivity.staticCameraDevice().getCameraDeviceStatus()) {
                default: {
                    for (Activity activity : mAvailableActivities) {
                        if (activity.isFinishing()) continue;
                        activity.finish();
                    }
                    break;
                }
                case 1: {
                    this.retry();
                }
            }
        }
    }

}

