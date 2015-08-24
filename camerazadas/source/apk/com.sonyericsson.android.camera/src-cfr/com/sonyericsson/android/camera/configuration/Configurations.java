/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.KeyCharacterMap;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ConversationReader;
import com.sonyericsson.android.camera.configuration.CustomizationReader;
import com.sonyericsson.android.camera.configuration.IntentReader;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.android.camera.configuration.SharedPreferencesReader;
import com.sonyericsson.android.camera.configuration.SharedPreferencesWriter;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationUtil;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class Configurations {
    private static final String TAG = "Configurations";
    static final boolean sHasShutterKey;
    private static boolean sIsFaceIdentificationEnabled;
    private static boolean sIsLogForOperatorsEnabled;
    private ConversationReader mConversationReader;
    private ExecutorService mExecutor;
    private IntentReader mIntentReader;
    private Future<ConversationReader> mReadConversationProviderFuture;
    private SharedPreferencesUtil mSharedPrefs;

    static {
        sIsLogForOperatorsEnabled = false;
        sHasShutterKey = KeyCharacterMap.deviceHasKey(27);
    }

    public static boolean hasShutterKey() {
        return sHasShutterKey;
    }

    public static boolean isFaceIdentificationEnabled() {
        return sIsFaceIdentificationEnabled;
    }

    public static boolean isLogForOperatorsEnabled() {
        return sIsLogForOperatorsEnabled;
    }

    private void joinInitTask() {
        try {
            if (this.mReadConversationProviderFuture != null) {
                this.mConversationReader = this.mReadConversationProviderFuture.get();
            }
            return;
        }
        catch (InterruptedException var1_1) {
            CameraLogger.e("Configurations", "joinInitTask", var1_1);
            return;
        }
        catch (ExecutionException var1_2) {
            CameraLogger.e("Configurations", "joinInitTask", var1_2);
            return;
        }
        finally {
            this.shutdownInitTask();
        }
    }

    public static void setLogForOperators(boolean bl) {
        sIsLogForOperatorsEnabled = bl;
    }

    public void countUpFrontCameraLocationHelpShownTimes() {
        Integer n;
        Integer n2 = n = Integer.valueOf(Integer.valueOf(this.getFrontCameraHelpShownTimes()) + 1);
        if (n > 1) {
            n2 = 1;
        }
        this.mSharedPrefs.writeString("FRONT_CAMERA_LOCATION_HELP_SHOWN_TIMES", n2.toString(), true);
    }

    public void countUpZoomHelpShownTimes() {
        Object object;
        Object object2 = object = Integer.valueOf(Integer.valueOf(this.getZoomHelpShownTimes()) + 1);
        if (object.intValue() > 3) {
            object2 = 3;
        }
        object = new SharedPreferencesWriter(this.mSharedPrefs.getSharedPreferences());
        object.writeString("ZOOM_HELP_SHOWN_TIMES", object2.toString());
        object.apply();
    }

    public Map<String, String> getCommonSettingsMap() {
        return Collections.emptyMap();
    }

    public String getCropValue() {
        return this.mIntentReader.mCropValue;
    }

    public int getFrontCameraHelpShownTimes() {
        String string = this.mSharedPrefs.readString("FRONT_CAMERA_LOCATION_HELP_SHOWN_TIMES", "0");
        try {
            int n = Integer.parseInt(string);
            return n;
        }
        catch (NumberFormatException var2_2) {
            return 0;
        }
    }

    public MmsOptions getMmsOptions() {
        return this.mConversationReader.getMmsOptions();
    }

    public Map<String, String> getParameterSetStringMap(boolean bl, int n, int n2) {
        return Collections.emptyMap();
    }

    public long getVideoMaxDurationInMillisecs() {
        return this.mIntentReader.mVideoMaxDurationInMillisecs;
    }

    public long getVideoMaxFileSizeInBytes() {
        return this.mIntentReader.mVideoMaxFileSizeInBytes;
    }

    public long getVideoQuality() {
        return this.mIntentReader.mVideoQuality;
    }

    public int getZoomHelpShownTimes() {
        String string = new SharedPreferencesReader(this.mSharedPrefs.getSharedPreferences()).readString("ZOOM_HELP_SHOWN_TIMES", "0");
        try {
            int n = Integer.parseInt(string);
            return n;
        }
        catch (NumberFormatException var2_2) {
            return 0;
        }
    }

    public boolean hasLimitForSizeOrDuration() {
        return this.mIntentReader.mhasLimit;
    }

    public void init(CameraActivity cameraActivity) {
        this.mIntentReader = new IntentReader();
        this.mIntentReader.readIntent(cameraActivity.getIntent());
        CustomizationReader.readCustomization(cameraActivity);
        this.joinInitTask();
        this.mSharedPrefs = new SharedPreferencesUtil(cameraActivity);
    }

    public boolean isFirstRun() {
        return this.mSharedPrefs.readBoolean("IS_FIRST_RUN", true);
    }

    public boolean isMmsSupported() {
        return CustomizationReader.isMmsSupported();
    }

    public boolean isNeedToShowFrontCameraLocationHelp() {
        if (this.getFrontCameraHelpShownTimes() < 1) {
            return true;
        }
        return false;
    }

    public boolean isNeedToShowZoomHelp() {
        if (this.getZoomHelpShownTimes() < 3) {
            return true;
        }
        return false;
    }

    public void onResume(CameraActivity cameraActivity) {
        if (HardwareCapability.getInstance().isDetectedFaceIdSupported(0)) {
            sIsFaceIdentificationEnabled = FaceIdentificationUtil.exist(cameraActivity);
            return;
        }
        sIsFaceIdentificationEnabled = false;
    }

    public void setCommonSettingsMap(Map<String, String> map) {
    }

    public void setFirstRun(boolean bl) {
        this.mSharedPrefs.writeBoolean("IS_FIRST_RUN", bl, true);
    }

    public void setParameterSetStringMap(boolean bl, int n, int n2, Map<String, String> map) {
    }

    public void shutdownInitTask() {
        if (this.mReadConversationProviderFuture != null) {
            this.mReadConversationProviderFuture.cancel(true);
            this.mReadConversationProviderFuture = null;
        }
        if (this.mExecutor != null) {
            this.mExecutor.shutdown();
            this.mExecutor = null;
        }
    }

    public void startInitTask(Context context) {
        this.mExecutor = Executors.newSingleThreadExecutor();
        this.mReadConversationProviderFuture = this.mExecutor.submit(new ReadConversationProviderTask(context));
    }

    private static class ReadConversationProviderTask
    implements Callable<ConversationReader> {
        private final Context mContext;

        public ReadConversationProviderTask(Context context) {
            this.mContext = context;
        }

        @Override
        public ConversationReader call() {
            ConversationReader conversationReader = new ConversationReader();
            conversationReader.readConversationProvider(this.mContext);
            return conversationReader;
        }
    }

}

