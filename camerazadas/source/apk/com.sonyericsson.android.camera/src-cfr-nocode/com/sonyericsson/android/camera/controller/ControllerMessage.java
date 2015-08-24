/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.State;

/*
 * Exception performing whole class analysis.
 */
public class ControllerMessage {
    public final int mArg1;
    public final Object mArg2;
    public final ControllerEvent mEventId;
    public final Class<? extends State> mExpectedState;
    public final ControllerEventSource mSource;

    public ControllerMessage(ControllerEvent var1, ControllerEventSource var2, int var3, Object var4, Class<? extends State> var5);

    public boolean isAbortEvent();

    public boolean isRunnable(Class<? extends State> var1);

    public String toString();

}

