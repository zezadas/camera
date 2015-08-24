/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.ControllerMessageHandler;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Inactive;
import com.sonyericsson.android.camera.controller.State;
import com.sonyericsson.android.camera.controller.StateList;

public class Executor {
    private static final String TAG = EventDispatcher.class.getSimpleName();
    private static ControllerMessageHandler sHandler;
    private static StateList sStateList;

    public static boolean canHandleCaptureRequest() {
        State state = Executor.get().getState();
        if (state != null) {
            return state.canHandleCaptureRequest();
        }
        return false;
    }

    public static void cancelEvent(ControllerEvent controllerEvent) {
        Executor.get().cancel(controllerEvent);
    }

    public static void clear() {
        Executor.get().clear();
    }

    public static void clearAutoDispatchEvent() {
        Executor.get().clearAutoDispatchEvent();
    }

    public static void create(Context context) {
        sHandler = new ControllerMessageHandler(context, new Inactive());
        sStateList = new StateList();
    }

    private static ControllerMessageHandler get() {
        if (sHandler == null) {
            throw new IllegalStateException("Executor has not been initialized.");
        }
        return sHandler;
    }

    static boolean isBackKeyValid() {
        State state = Executor.get().getState();
        if (state != null) {
            return state.isBackKeyValid();
        }
        return true;
    }

    public static boolean isMenuAvailable() {
        State state = Executor.get().getState();
        if (state != null) {
            return state.isMenuAvailable();
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean isRecording() {
        State state;
        if (sHandler == null || (state = Executor.get().getState()) == null) {
            return false;
        }
        return state.isRecording();
    }

    public static void postEmptyEvent(ControllerEvent controllerEvent) {
        Executor.postEvent(controllerEvent, ControllerEventSource.OTHER, 0, null, null);
    }

    public static void postEvent(ControllerEvent controllerEvent, int n, Object object) {
        Executor.postEvent(controllerEvent, ControllerEventSource.OTHER, n, object, null);
    }

    public static void postEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource) {
        Executor.postEvent(controllerEvent, controllerEventSource, 0, null, null);
    }

    public static void postEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource, int n, Object object, Class<? extends State> class_) {
        Executor.get().sendEvent(controllerEvent, controllerEventSource, n, object, class_);
    }

    static void registerState(State state) {
        sStateList.registerState(state);
    }

    public static void sendEmergencyEvent(ControllerEvent controllerEvent) {
        Executor.get().clear();
        Executor.sendEmptyEvent(controllerEvent);
    }

    public static void sendEmptyEvent(ControllerEvent controllerEvent) {
        Executor.sendEvent(controllerEvent, ControllerEventSource.OTHER, 0, null);
    }

    public static void sendEvent(ControllerEvent controllerEvent, int n, Object object) {
        Executor.sendEvent(controllerEvent, ControllerEventSource.OTHER, n, object);
    }

    public static void sendEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource) {
        Executor.sendEvent(controllerEvent, controllerEventSource, 0, null);
    }

    public static void sendEvent(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource, int n, Object object) {
        Executor.get().dispatchEvent(controllerEvent, controllerEventSource, n, object);
    }

    public static void sendEvent(ControllerMessage controllerMessage) {
        Executor.sendEvent(controllerMessage.mEventId, controllerMessage.mSource, controllerMessage.mArg1, controllerMessage.mArg2);
    }

    static void setState(Class<? extends State> class_) {
        Executor.get().setState(sStateList.getState(class_));
    }
}

