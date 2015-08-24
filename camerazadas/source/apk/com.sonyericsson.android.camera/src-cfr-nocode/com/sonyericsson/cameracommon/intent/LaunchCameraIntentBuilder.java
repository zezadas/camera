/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.intent;

import android.content.Intent;

/*
 * Exception performing whole class analysis.
 */
public class LaunchCameraIntentBuilder {
    private String mActivityName;
    private String mCallingActivityName;
    private String mCallingModeName;
    private String mCallingPackageName;
    private String mModeName;
    private String mPackageName;

    LaunchCameraIntentBuilder();

    public LaunchCameraIntentBuilder activity(String var1, String var2);

    public LaunchCameraIntentBuilder callingActivityName(String var1);

    public LaunchCameraIntentBuilder callingModeName(String var1);

    public LaunchCameraIntentBuilder callingPackageName(String var1);

    public Intent comit();

    public LaunchCameraIntentBuilder modeName(String var1);
}

