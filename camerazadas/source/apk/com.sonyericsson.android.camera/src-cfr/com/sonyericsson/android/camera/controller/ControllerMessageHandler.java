/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.State;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class ControllerMessageHandler
implements Runnable {
    private static final String TAG = ControllerMessageHandler.class.getSimpleName();
    private State mCurrentState;
    private Handler mHandler;
    private Queue<ControllerMessage> mQueue;

    public ControllerMessageHandler(Context context, State state) {
        this.mHandler = new Handler(context.getMainLooper());
        this.mQueue = new ConcurrentLinkedQueue<ControllerMessage>();
        this.setState(state);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private void dispatch(ControllerMessage var1_1) {
        // MONITORENTER : this
        var2_2 = .$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEvent[var1_1.mEventId.ordinal()];
        switch (var2_2) {
            case 1: {
                this.mCurrentState.handleAbort(var1_1);
                ** break;
            }
            case 2: {
                this.mCurrentState.handleAfCancel(var1_1);
                ** break;
            }
            case 3: {
                this.mCurrentState.handleAfDone(var1_1);
                ** break;
            }
            case 4: {
                this.mCurrentState.handleAfStart(var1_1);
                ** break;
            }
            case 5: {
                this.mCurrentState.handleBurstStart(var1_1);
                ** break;
            }
            case 6: {
                this.mCurrentState.handleBurstStop(var1_1);
                ** break;
            }
            case 7: {
                this.mCurrentState.handleCameraSetupFinished(var1_1);
                ** break;
            }
            case 8: {
                this.mCurrentState.handleCapture(var1_1);
                ** break;
            }
            case 9: {
                this.mCurrentState.handleChangeCapturingMode(var1_1);
                ** break;
            }
            case 10: {
                this.mCurrentState.handleCompressedData(var1_1);
                ** break;
            }
            case 11: {
                this.mCurrentState.handleBurstCompressedData(var1_1);
                ** break;
            }
            case 12: {
                this.mCurrentState.handleControllerPause(var1_1);
                ** break;
            }
            case 13: {
                this.mCurrentState.handleControllerResume(var1_1);
                ** break;
            }
            case 14: {
                this.mCurrentState.handleDeviceError(var1_1);
                ** break;
            }
            case 15: {
                this.mCurrentState.handleAudioResourceError(var1_1);
                ** break;
            }
            case 16: {
                this.mCurrentState.handleStorageError(var1_1);
                ** break;
            }
            case 17: {
                this.mCurrentState.handleStorageMounted(var1_1);
                ** break;
            }
            case 18: {
                this.mCurrentState.handleStorageShouldChange(var1_1);
                ** break;
            }
            case 19: {
                this.mCurrentState.handleFaceDetect(var1_1);
                ** break;
            }
            case 20: {
                this.mCurrentState.handleFaceIdentify(var1_1);
                ** break;
            }
            case 21: {
                this.mCurrentState.handleFaceDetectChange(var1_1);
                ** break;
            }
            case 22: {
                this.mCurrentState.handleFocusPositionCancel(var1_1);
                ** break;
            }
            case 23: {
                this.mCurrentState.handleFocusPositionChange(var1_1);
                ** break;
            }
            case 24: {
                this.mCurrentState.handleFocusPositionContinue(var1_1);
                ** break;
            }
            case 25: {
                this.mCurrentState.handleFocusPositionFinish(var1_1);
                ** break;
            }
            case 26: {
                this.mCurrentState.handleFocusPositionStart(var1_1);
                ** break;
            }
            case 27: {
                this.mCurrentState.handleKeyBack(var1_1);
                ** break;
            }
            case 28: {
                this.mCurrentState.handleLaunch(var1_1);
                ** break;
            }
            case 29: {
                this.mCurrentState.handleObjectTracking(var1_1);
                ** break;
            }
            case 30: {
                this.mCurrentState.handleObjectTrackingInvisible(var1_1);
                ** break;
            }
            case 31: {
                this.mCurrentState.handleObjectTrackingLost(var1_1);
                ** break;
            }
            case 32: {
                this.mCurrentState.handleObjectTrackingStart(var1_1);
                ** break;
            }
            case 33: {
                this.mCurrentState.handleOpenSettingsDialog(var1_1);
                ** break;
            }
            case 34: {
                this.mCurrentState.handleCloseSettingsDialog(var1_1);
                ** break;
            }
            case 35: {
                this.mCurrentState.handleReachHighTemperature(var1_1);
                ** break;
            }
            case 36: {
                this.mCurrentState.handleSceneChanged(var1_1);
                ** break;
            }
            case 37: {
                this.mCurrentState.handleSelfTimerCancel(var1_1);
                ** break;
            }
            case 38: {
                this.mCurrentState.handleSelfTimerCapture(var1_1);
                ** break;
            }
            case 39: {
                this.mCurrentState.handleSelfTimerCountdown(var1_1);
                ** break;
            }
            case 40: {
                this.mCurrentState.handleSelfTimerFinish(var1_1);
                ** break;
            }
            case 41: {
                this.mCurrentState.handleSelfTimerStart(var1_1);
                ** break;
            }
            case 42: {
                this.mCurrentState.handleShutterDone(var1_1);
                ** break;
            }
            case 43: {
                this.mCurrentState.handleSmileCapture(var1_1);
                ** break;
            }
            case 44: {
                this.mCurrentState.handleStoreDone(var1_1);
                ** break;
            }
            case 45: {
                this.mCurrentState.handleSurfaceChanged(var1_1);
                ** break;
            }
            case 46: {
                this.mCurrentState.handleSurfaceCreated(var1_1);
                ** break;
            }
            case 47: {
                this.mCurrentState.handleSurfaceDestroyed(var1_1);
                ** break;
            }
            case 48: {
                this.mCurrentState.handleVideoInfo(var1_1);
                ** break;
            }
            case 49: {
                this.mCurrentState.handleVideoProgress(var1_1);
                ** break;
            }
            case 50: {
                this.mCurrentState.handleVideoStartWaitDone(var1_1);
                ** break;
            }
            case 51: {
                this.mCurrentState.handleVideoFinished(var1_1);
                ** break;
            }
            case 52: {
                this.mCurrentState.handleZoomFinish(var1_1);
                ** break;
            }
            case 53: {
                this.mCurrentState.handleZoomPrepare(var1_1);
                ** break;
            }
            case 54: {
                this.mCurrentState.handleZoomProgress(var1_1);
                ** break;
            }
            case 55: {
                this.mCurrentState.handleZoomStart(var1_1);
                ** break;
            }
            case 56: {
                this.mCurrentState.handleZoomStop(var1_1);
                ** break;
            }
            case 57: {
                this.mCurrentState.handleClickContentProgress(var1_1);
                ** break;
            }
            case 58: {
                this.mCurrentState.handleVideoPauseResume(var1_1);
            }
lbl177: // 59 sources:
            default: {
                // MONITOREXIT : this
                return;
            }
            case 59: 
        }
        this.mCurrentState.handleVideoPaused(var1_1);
    }

    private boolean isVideoRecordingEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource) {
        if (controllerEvent == ControllerEvent.EV_CAPTURE && controllerEventSource == ControllerEventSource.VIDEO_BUTTON) {
            return true;
        }
        return false;
    }

    private boolean queueHasThisEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource) {
        for (ControllerMessage controllerMessage : this.mQueue) {
            if (controllerEvent != controllerMessage.mEventId || controllerEventSource != controllerMessage.mSource) continue;
            return true;
        }
        return false;
    }

    public void cancel(ControllerEvent controllerEvent) {
        synchronized (this) {
            block5 : {
                Iterator<ControllerMessage> iterator = this.mQueue.iterator();
                while (iterator.hasNext()) {
                    if (iterator.next().mEventId != controllerEvent) continue;
                    iterator.remove();
                }
                break block5;
            }
            return;
        }
    }

    public void clear() {
        synchronized (this) {
            this.mQueue.clear();
            return;
        }
    }

    public void clearAutoDispatchEvent() {
        synchronized (this) {
            block5 : {
                Iterator<ControllerMessage> iterator = this.mQueue.iterator();
                while (iterator.hasNext()) {
                    if (iterator.next().mExpectedState == null) continue;
                    iterator.remove();
                }
                break block5;
            }
            return;
        }
    }

    public void dispatchEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource, int n, Object object) {
        synchronized (this) {
            this.dispatch(new ControllerMessage(controllerEvent, controllerEventSource, n, object, null));
            return;
        }
    }

    public State getState() {
        synchronized (this) {
            State state = this.mCurrentState;
            return state;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void run() {
        synchronized (this) {
            int n = 0;
            int n2 = 0;
            Iterator<ControllerMessage> iterator = this.mQueue.iterator();
            while (iterator.hasNext()) {
                ControllerMessage controllerMessage = iterator.next();
                if (!this.mQueue.contains(controllerMessage)) continue;
                if (controllerMessage.isRunnable(this.mCurrentState.getClass())) {
                    ++n2;
                    MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.HANDLE_EVENT, true, controllerMessage.toString());
                    this.dispatch(controllerMessage);
                    MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.HANDLE_EVENT, false);
                    iterator.remove();
                    continue;
                }
                ++n;
            }
            if (n > 0 && n2 > 0) {
                this.mHandler.post(this);
            }
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void sendEvent(ControllerEvent object, ControllerEventSource controllerEventSource, int n, Object object2, Class<? extends State> class_) {
        synchronized (this) {
            block6 : {
                boolean bl;
                if (!this.isVideoRecordingEvent((ControllerEvent)object, controllerEventSource) || !(bl = this.queueHasThisEvent((ControllerEvent)object, controllerEventSource))) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            object = new ControllerMessage((ControllerEvent)object, controllerEventSource, n, object2, class_);
            this.mQueue.offer((ControllerMessage)object);
            this.mHandler.post(this);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setState(State state) {
        synchronized (this) {
            if (state == null) {
                do {
                    return;
                    break;
                } while (true);
            }
            if (this.mCurrentState != null) {
                this.mCurrentState.exit();
            }
            this.mCurrentState = state;
            this.mCurrentState.entry();
            return;
        }
    }

}

