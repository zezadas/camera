/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.camera.addon.internal.capturingmode.CapturingModeAttributes
 *  com.sonymobile.camera.addon.internal.capturingmode.CapturingModeAttributesBuilder
 *  com.sonymobile.camera.addon.internal.registration.AddOnRegistrationHelper
 */
package com.sonyericsson.android.camera.addon;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonymobile.camera.addon.internal.capturingmode.CapturingModeAttributes;
import com.sonymobile.camera.addon.internal.capturingmode.CapturingModeAttributesBuilder;
import com.sonymobile.camera.addon.internal.registration.AddOnRegistrationHelper;
import java.util.ArrayList;
import java.util.List;

public class CameraAddonReceiver
extends BroadcastReceiver {
    private static final String TAG = CameraAddonReceiver.class.getSimpleName();

    private static boolean isCameraSupported(int n) {
        if (HardwareCapability.getNumberOfCameras() > n) {
            return true;
        }
        return false;
    }

    private static boolean isSuperiorAutoSupported(Context context) {
        return context.getResources().getBoolean(2131558404);
    }

    @Override
    public void onReceive(Context context, Intent cloneable) {
        Log.d(TAG, "onReceive() intent:" + cloneable);
        cloneable = new ArrayList();
        if (CameraAddonReceiver.isSuperiorAutoSupported(context)) {
            cloneable.add(new CapturingModeAttributesBuilder().packageName(context.getPackageName()).activityName(CameraActivity.class.getName()).modeName(CapturingMode.SCENE_RECOGNITION.name()).selectorIconId(2130837522).selectorLabelId(2131296465).shortcutIconId(2130837514).descriptionLabelId(2131296535).shortcutLabelId(2131296465).isVisibleNormal(true).isVisibleOneshot(true).build());
        }
        if (CameraAddonReceiver.isCameraSupported(0)) {
            cloneable.add(new CapturingModeAttributesBuilder().packageName(context.getPackageName()).activityName(CameraActivity.class.getName()).modeName(CapturingMode.NORMAL.name()).selectorIconId(2130837521).selectorLabelId(2131296511).shortcutIconId(2130837513).descriptionLabelId(2131296536).shortcutLabelId(2131296511).isVisibleNormal(true).isVisibleOneshot(true).build());
        }
        AddOnRegistrationHelper.register((ContentResolver)context.getContentResolver(), (List)cloneable);
    }
}

