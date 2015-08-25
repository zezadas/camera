/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util.capability;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Build;
import com.sonyericsson.android.camera.configuration.ParameterCategory;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.android.camera.device.CameraDeviceUtil;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import android.content.SharedPreferences.Editor;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import android.hardware.Camera.Parameters;
import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


@DexEdit(defaultAction = DexAction.IGNORE)
public class HardwareCapability {
    private static final String FILE_NAME = "com.sonyericsson.android.camera.supported_values.";
    private static final String TAG = "HardwareCapability";
    private static CameraExtensionVersion sCameraExtensionVersion;
    private static final HardwareCapability sInstance;
    private static final int sNumberOfCameras;
    private CapabilityList[] mList = new CapabilityList[sNumberOfCameras];
    private boolean mNeedToClearSettingsInSharedPref = false;
    private final Map<String, String> mSaveSettingMap = new HashMap<String, String>();
    private SharedPreferencesUtil mSharedPrefsUtil;


    static {
        int n = Camera.getNumberOfCameras();
        if (n > 0) {
            sNumberOfCameras = n;
        } else {
            sNumberOfCameras = 0;
            CameraLogger.e("HardwareCapability", "Camera.getNumberOfCameras() return " + n);
        }
        sInstance = new HardwareCapability();
        sCameraExtensionVersion = null;
    }

    @DexIgnore
    private HardwareCapability() {
    }

    @DexIgnore
    public static CapabilityList getCapability(int n) {
        return sInstance.getList(n);
    }

    @DexIgnore
    public static HardwareCapability getInstance() {
        return sInstance;
    }

    @DexIgnore
    private CapabilityList getList(int n) {
        CapabilityList capabilityList;
        if (n < this.mList.length && (capabilityList = this.mList[n]) != null) {
            return capabilityList;
        }
        throw new IllegalArgumentException();
    }

    @DexIgnore
    public static int getNumberOfCameras() {
        return sNumberOfCameras;
    }

    @DexIgnore
    public static boolean isCameraSupported() {
        if (sNumberOfCameras > 0) {
            return true;
        }
        return false;
    }

    @DexIgnore
    public static boolean isFrontCameraSupported() {
        if (sNumberOfCameras > 1) {
            return true;
        }
        return false;
    }

    @DexEdit(target = "isStillHdrSupportedWith")
    public static boolean source_isStillHdrSupportedWith(Resolution resolution) {
        return true;
    }

    @DexAdd
    public static boolean isStillHdrSupportedWith(Resolution resolution) {
        return true;
    }

    @DexIgnore
    private void source_load(Context context, int n) throws CameraDeviceException {
        if (!this.setCapabilityFromSharedPrefs(context, n)) {
            this.setCapabilityFromParamsWithCameraOpen(context, n);
        }
    }

    @DexIgnore
    private void load(Context context, int n) throws CameraDeviceException {
        source_load(context,n);
    }

    @DexIgnore
    private void resetSharedPrefs(Context context) {
        new SharedPreferencesUtil(context).clearSharedPreferences();
    }

    @DexIgnore
    private void restoreManualModeSetting() {
        String string = SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, CapturingMode.NORMAL, "");
        String string2 = this.mSaveSettingMap.get(string + (Object)ParameterKey.FLASH);
        this.mSharedPrefsUtil.writeString(string + (Object)ParameterKey.FLASH, string2, true);
    }

    @DexIgnore
    private void restoreSettings(int n) {
        String string = SharedPreferencesUtil.getPrefix(ParameterKey.FLASH, 1, n);
        String string2 = this.mSaveSettingMap.get(string + (Object)ParameterKey.FLASH);
        this.mSharedPrefsUtil.writeString(string + (Object)ParameterKey.FLASH, string2, true);
    }

    @DexIgnore
    private void saveManualModeSetting() {
        String string = SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, CapturingMode.NORMAL, "");
        String string2 = this.mSharedPrefsUtil.readString(string + (Object)ParameterKey.FLASH, "default");
        this.mSaveSettingMap.put(string + (Object)ParameterKey.FLASH, string2);
    }

    @DexIgnore
    private void saveSettings(int n) {
        String string = SharedPreferencesUtil.getPrefix(ParameterKey.FLASH, 1, n);
        String string2 = this.mSharedPrefsUtil.readString(string + (Object)ParameterKey.FLASH, "default");
        this.mSaveSettingMap.put(string + (Object)ParameterKey.FLASH, string2);
    }

    @DexIgnore
    public CameraExtensionVersion getCameraExtensionVersion() {
        if (sCameraExtensionVersion == null) {
            sCameraExtensionVersion = new CameraExtensionVersion(this.getList((int)0).EXTENSION_VERSION.get());
        }
        return sCameraExtensionVersion;
    }

    @DexIgnore
    public String getFileName(int n) {
        return "com.sonyericsson.android.camera.supported_values." + String.valueOf(n);
    }

    @DexIgnore
    public int getMaxSoftSkinLevel(int n) {
        return this.getList((int)n).MAX_SOFT_SKIN_LEVEL.get();
    }

    @DexIgnore
    public boolean isCameraExtensionSupported(int n) {
        if (this.getList((int)n).EXTENSION_VERSION.get().length() > 0) {
            return true;
        }
        return false;
    }

    @DexIgnore
    public boolean isDetectedFaceIdSupported(int n) {
        return this.getCameraExtensionVersion().isLaterThanOrEqualTo(1, 6);
    }

    @DexIgnore
    public boolean isFullHdVideoFpsSupported(int n, int n2) {
        if (n2 * 1000 <= this.getList((int)n).MAX_VIDEO_FRAME.get()) {
            return true;
        }
        return false;
    }

    @DexIgnore
    public boolean isSceneRecognitionSupported(int n) {
        return this.getList((int)n).SCENE_RECOGNITION.get();
    }

    @DexIgnore
    public boolean isStillHdrVer3(int n) {
        List<String> list = (List) getList(n).SCENE.get();
        if (!list.isEmpty()) {
            for (String str : list) {
                if (str.equals("hdr")) {
                    return true;
                }
            }
        }
        return false;
    }

    @DexIgnore
    public boolean isVideoHdrSupported(int n, Rect rect) {
        Rect rect2 = this.getList((int)n).MAX_VIDEO_HDR_SIZE.get();
        if (rect2 != null && rect2.width() >= rect.width() && rect2.height() >= rect.height()) {
            return true;
        }
        return false;
    }

    @DexIgnore
    public boolean isVideoMetaDataSupported(int n) {
        return this.getList((int)n).VIDEO_MEATDAT_VALUES.get();
    }

    @DexIgnore
    public boolean isVideoNrSupported(int n) {
        return this.getList((int)n).VIDEO_NR_VALUES.get().contains("on");
    }

    @DexIgnore
    public void load(Context context) throws CameraDeviceException {
        int n;
        for (n = 0; n < sNumberOfCameras; ++n) {
            this.load(context, n);
        }
        if (this.mNeedToClearSettingsInSharedPref) {
            this.mSharedPrefsUtil = new SharedPreferencesUtil(context);
            this.mSaveSettingMap.clear();
            for (n = 0; n < sNumberOfCameras; ++n) {
                this.saveSettings(n);
            }
            this.saveManualModeSetting();
            this.resetSharedPrefs(context);
            for (n = 0; n < sNumberOfCameras; ++n) {
                this.restoreSettings(n);
            }
            this.restoreManualModeSetting();
            this.mNeedToClearSettingsInSharedPref = false;
        }
    }

    @DexIgnore
    public void setCameraParameters(Context context, int n, Camera.Parameters parameters) {
        this.setCapabilityFromParams(context, n, parameters);
    }

    @DexIgnore
    void setCapabilityFromParams(Context context, int i, Parameters parameters) {
        Object obj=null;
        this.mList[i] = new CapabilityList(context, (SharedPreferences) parameters);
        CapabilityList capabilityList = this.mList[i];
        if (((List) capabilityList.FPS_RANGE.get()).isEmpty()) {
            obj = null;
        } else if (((List) capabilityList.PREVIEW_SIZE.get()).isEmpty()) {
            obj = null;
        } else if (((List) capabilityList.PICTURE_SIZE.get()).isEmpty()) {
            obj = null;
        } else {
            int i2 = 1;
        }
        if (obj != null) {
            store(context, i);
        }
    }

    @DexIgnore
    void setCapabilityFromParamsWithCameraOpen(Context context, int n) throws CameraDeviceException {
        this.setCapabilityFromParams(context, n, CameraDeviceUtil.getParams(context, n));
    }

    @DexIgnore
    boolean setCapabilityFromSharedPrefs(Context context, int n) {
        SharedPreferences sharedPreferences = SharedPreferencesUtil.getSharedPreferences(context, this.getFileName(n), 0);
        if (sharedPreferences == null || sharedPreferences.getAll().isEmpty()) {
            return false;
        }
        if (!sharedPreferences.contains("android.os.Build.FINGERPRINT")) {
            sharedPreferences.edit().clear().commit();
            return false;
        }
        if (!sharedPreferences.getString("android.os.Build.FINGERPRINT", "").equals(Build.FINGERPRINT)) {
            sharedPreferences.edit().clear().commit();
            this.mNeedToClearSettingsInSharedPref = true;
            return false;
        }
        this.mList[n] = new CapabilityList(context, sharedPreferences);
        return true;
    }

    @DexIgnore
    boolean store(Context context, int i) {
        SharedPreferences sharedPreferences = SharedPreferencesUtil.getSharedPreferences(context, getFileName(i), 0);
        if (sharedPreferences == null) {
            return false;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(CommonConstants.FINGERPRINT, Build.FINGERPRINT);
        for (CapabilityItem capabilityItem : this.mList[i].values()) {
            capabilityItem.write(edit);
        }
        edit.apply();
        return true;
    }

}

