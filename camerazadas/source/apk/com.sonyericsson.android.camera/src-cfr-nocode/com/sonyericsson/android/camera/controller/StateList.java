/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.State;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StateList {
    private static final String TAG;
    private Map<Class<? extends State>, State> mStateList;

    static;

    public StateList();

    public void clear();

    State getState(Class<? extends State> var1);

    public void registerState(State var1);

    public void unregisterState(Class<? extends State> var1);
}

