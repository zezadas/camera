/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.intent;

import android.content.Intent;

public class LaunchCameraIntentBuilder {
    private String mActivityName = null;
    private String mCallingActivityName = null;
    private String mCallingModeName = null;
    private String mCallingPackageName = null;
    private String mModeName = null;
    private String mPackageName = null;

    LaunchCameraIntentBuilder() {
    }

    public LaunchCameraIntentBuilder activity(String string, String string2) {
        this.mPackageName = string;
        this.mActivityName = string2;
        return this;
    }

    public LaunchCameraIntentBuilder callingActivityName(String string) {
        this.mCallingActivityName = string;
        return this;
    }

    public LaunchCameraIntentBuilder callingModeName(String string) {
        this.mCallingModeName = string;
        return this;
    }

    public LaunchCameraIntentBuilder callingPackageName(String string) {
        this.mCallingPackageName = string;
        return this;
    }

    public Intent comit() {
        if (this.mPackageName == null || this.mActivityName == null) {
            throw new IllegalStateException("This builder objject is specified enough arguments.");
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(this.mPackageName, this.mActivityName);
        if (this.mModeName != null) {
            intent.putExtra("calling-mode", this.mModeName);
        }
        if (this.mCallingModeName != null && this.mCallingPackageName != null && this.mCallingActivityName != null) {
            intent.putExtra("calling-mode", this.mCallingModeName);
            intent.putExtra("calling-package", this.mCallingPackageName);
            intent.putExtra("calling-activity", this.mCallingActivityName);
        }
        return intent;
    }

    public LaunchCameraIntentBuilder modeName(String string) {
        this.mModeName = string;
        return this;
    }
}

