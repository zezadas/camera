/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.ControllerMessageHandler;
import com.sonyericsson.android.camera.controller.State;
import com.sonyericsson.android.camera.controller.StateList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Executor {
    private static final String TAG;
    private static ControllerMessageHandler sHandler;
    private static StateList sStateList;

    static;

    public Executor();

    public static boolean canHandleCaptureRequest();

    public static void cancelEvent(ControllerEvent var0);

    public static void clear();

    public static void clearAutoDispatchEvent();

    public static void create(Context var0);

    private static ControllerMessageHandler get();

    static boolean isBackKeyValid();

    public static boolean isMenuAvailable();

    public static boolean isRecording();

    public static void postEmptyEvent(ControllerEvent var0);

    public static void postEvent(ControllerEvent var0, int var1, Object var2);

    public static void postEvent(ControllerEvent var0, ControllerEventSource var1);

    public static void postEvent(ControllerEvent var0, ControllerEventSource var1, int var2, Object var3, Class<? extends State> var4);

    static void registerState(State var0);

    public static void sendEmergencyEvent(ControllerEvent var0);

    public static void sendEmptyEvent(ControllerEvent var0);

    public static void sendEvent(ControllerEvent var0, int var1, Object var2);

    public static void sendEvent(ControllerEvent var0, ControllerEventSource var1);

    public static void sendEvent(ControllerEvent var0, ControllerEventSource var1, int var2, Object var3);

    public static void sendEvent(ControllerMessage var0);

    static void setState(Class<? extends State> var0);
}

