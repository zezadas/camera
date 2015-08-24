/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.State;
import java.util.HashMap;
import java.util.Map;

public class StateList {
    private static final String TAG = StateList.class.getSimpleName();
    private Map<Class<? extends State>, State> mStateList = new HashMap<Class<? extends State>, State>();

    public void clear() {
        this.mStateList.clear();
    }

    State getState(Class<? extends State> class_) {
        if (!this.mStateList.containsKey(class_)) {
            return null;
        }
        return this.mStateList.get(class_);
    }

    public void registerState(State state) {
        this.mStateList.put(state.getClass(), state);
    }

    public void unregisterState(Class<? extends State> class_) {
        if (this.mStateList.containsKey(class_)) {
            this.mStateList.remove(class_);
        }
    }
}

