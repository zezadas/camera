/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.content.Context;
import com.sonyericsson.cameracommon.activity.BaseActivity;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AudioResourceChecker {
    private static final String MICROPHONE_ACTIVE_KEY = "is_microphone_active";
    private static final String MICROPHONE_ACTIVE_VALUE = "is_microphone_active=1";
    private static final String TAG;

    static;

    public AudioResourceChecker();

    public static void checkAudioResourceAndShowErrorDialogIfNecessary(BaseActivity var0);

    public static boolean isAudioResourceAvailable(BaseActivity var0);

    public static boolean isAudioResourceAvailableCheckImmediately(Context var0);

    private static boolean isAudioResourceAvailableCheckWithAudioRecord();

}

