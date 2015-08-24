/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.State;

public class ControllerMessage {
    public final int mArg1;
    public final Object mArg2;
    public final ControllerEvent mEventId;
    public final Class<? extends State> mExpectedState;
    public final ControllerEventSource mSource;

    public ControllerMessage(ControllerEvent controllerEvent, ControllerEventSource controllerEventSource, int n, Object object, Class<? extends State> class_) {
        this.mEventId = controllerEvent;
        this.mSource = controllerEventSource;
        this.mArg1 = n;
        this.mArg2 = object;
        this.mExpectedState = class_;
    }

    public boolean isAbortEvent() {
        switch (.$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEvent[this.mEventId.ordinal()]) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
            case 3: 
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isRunnable(Class<? extends State> class_) {
        if (this.mExpectedState == null || this.mExpectedState == class_) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.getClass().getSimpleName() + "[");
        stringBuffer.append("Event=");
        stringBuffer.append((Object)this.mEventId);
        stringBuffer.append(", EventSource=");
        stringBuffer.append((Object)this.mSource);
        stringBuffer.append(", Arg1=");
        stringBuffer.append(Integer.toString(this.mArg1));
        if (this.mArg2 != null) {
            stringBuffer.append(", Arg2=");
            stringBuffer.append(this.mArg2.toString());
        }
        if (this.mExpectedState != null) {
            stringBuffer.append(", ExpectedState=");
            stringBuffer.append(this.mExpectedState.toString());
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

}

