/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.os.Handler;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.State;
import java.util.Queue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ControllerMessageHandler
implements Runnable {
    private static final String TAG;
    private State mCurrentState;
    private Handler mHandler;
    private Queue<ControllerMessage> mQueue;

    static;

    public ControllerMessageHandler(Context var1, State var2);

    private void dispatch(ControllerMessage var1);

    private boolean isVideoRecordingEvent(ControllerEvent var1, ControllerEventSource var2);

    private boolean queueHasThisEvent(ControllerEvent var1, ControllerEventSource var2);

    public void cancel(ControllerEvent var1);

    public void clear();

    public void clearAutoDispatchEvent();

    public void dispatchEvent(ControllerEvent var1, ControllerEventSource var2, int var3, Object var4);

    public State getState();

    @Override
    public void run();

    public void sendEvent(ControllerEvent var1, ControllerEventSource var2, int var3, Object var4, Class<? extends State> var5);

    public void setState(State var1);

}

