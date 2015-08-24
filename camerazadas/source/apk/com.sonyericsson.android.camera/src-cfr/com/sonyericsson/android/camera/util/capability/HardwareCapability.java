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

    /*
     * Enabled aggressive block sorting
     */
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

    private HardwareCapability() {
    }

    public static CapabilityList getCapability(int n) {
        return sInstance.getList(n);
    }

    public static HardwareCapability getInstance() {
        return sInstance;
    }

    private CapabilityList getList(int n) {
        CapabilityList capabilityList;
        if (n < this.mList.length && (capabilityList = this.mList[n]) != null) {
            return capabilityList;
        }
        throw new IllegalArgumentException();
    }

    public static int getNumberOfCameras() {
        return sNumberOfCameras;
    }

    public static boolean isCameraSupported() {
        if (sNumberOfCameras > 0) {
            return true;
        }
        return false;
    }

    public static boolean isFrontCameraSupported() {
        if (sNumberOfCameras > 1) {
            return true;
        }
        return false;
    }

    public static boolean isStillHdrSupportedWith(Resolution resolution) {
        if (resolution != Resolution.TWENTY_MP && resolution != Resolution.FIFTEEN_MP_WIDE) {
            return true;
        }
        return false;
    }

    private void load(Context context, int n) throws CameraDeviceException {
        if (!this.setCapabilityFromSharedPrefs(context, n)) {
            this.setCapabilityFromParamsWithCameraOpen(context, n);
        }
    }

    private void resetSharedPrefs(Context context) {
        new SharedPreferencesUtil(context).clearSharedPreferences();
    }

    private void restoreManualModeSetting() {
        String string = SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, CapturingMode.NORMAL, "");
        String string2 = this.mSaveSettingMap.get(string + (Object)ParameterKey.FLASH);
        this.mSharedPrefsUtil.writeString(string + (Object)ParameterKey.FLASH, string2, true);
    }

    private void restoreSettings(int n) {
        String string = SharedPreferencesUtil.getPrefix(ParameterKey.FLASH, 1, n);
        String string2 = this.mSaveSettingMap.get(string + (Object)ParameterKey.FLASH);
        this.mSharedPrefsUtil.writeString(string + (Object)ParameterKey.FLASH, string2, true);
    }

    private void saveManualModeSetting() {
        String string = SharedPreferencesUtil.createPrefix(ParameterCategory.CAPTURING_MODE, CapturingMode.NORMAL, "");
        String string2 = this.mSharedPrefsUtil.readString(string + (Object)ParameterKey.FLASH, "default");
        this.mSaveSettingMap.put(string + (Object)ParameterKey.FLASH, string2);
    }

    private void saveSettings(int n) {
        String string = SharedPreferencesUtil.getPrefix(ParameterKey.FLASH, 1, n);
        String string2 = this.mSharedPrefsUtil.readString(string + (Object)ParameterKey.FLASH, "default");
        this.mSaveSettingMap.put(string + (Object)ParameterKey.FLASH, string2);
    }

    public CameraExtensionVersion getCameraExtensionVersion() {
        if (sCameraExtensionVersion == null) {
            sCameraExtensionVersion = new CameraExtensionVersion(this.getList((int)0).EXTENSION_VERSION.get());
        }
        return sCameraExtensionVersion;
    }

    public String getFileName(int n) {
        return "com.sonyericsson.android.camera.supported_values." + String.valueOf(n);
    }

    public int getMaxSoftSkinLevel(int n) {
        return this.getList((int)n).MAX_SOFT_SKIN_LEVEL.get();
    }

    public boolean isCameraExtensionSupported(int n) {
        if (this.getList((int)n).EXTENSION_VERSION.get().length() > 0) {
            return true;
        }
        return false;
    }

    public boolean isDetectedFaceIdSupported(int n) {
        return this.getCameraExtensionVersion().isLaterThanOrEqualTo(1, 6);
    }

    public boolean isFullHdVideoFpsSupported(int n, int n2) {
        if (n2 * 1000 <= this.getList((int)n).MAX_VIDEO_FRAME.get()) {
            return true;
        }
        return false;
    }

    public boolean isSceneRecognitionSupported(int n) {
        return this.getList((int)n).SCENE_RECOGNITION.get();
    }

    public boolean isStillHdrVer3(int n) {
        List<String> list = this.getList((int)n).SCENE.get();
        if (!list.isEmpty()) {
            list = list.iterator();
            while (list.hasNext()) {
                if (!((String)list.next()).equals("hdr")) continue;
                return true;
            }
        }
        return false;
    }

    public boolean isVideoHdrSupported(int n, Rect rect) {
        Rect rect2 = this.getList((int)n).MAX_VIDEO_HDR_SIZE.get();
        if (rect2 != null && rect2.width() >= rect.width() && rect2.height() >= rect.height()) {
            return true;
        }
        return false;
    }

    public boolean isVideoMetaDataSupported(int n) {
        return this.getList((int)n).VIDEO_MEATDAT_VALUES.get();
    }

    public boolean isVideoNrSupported(int n) {
        return this.getList((int)n).VIDEO_NR_VALUES.get().contains("on");
    }

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

    public void setCameraParameters(Context context, int n, Camera.Parameters parameters) {
        this.setCapabilityFromParams(context, n, parameters);
    }

    /*
     * Enabled aggressive block sorting
     */
    void setCapabilityFromParams(Context context, int n, Camera.Parameters object) {
        this.mList[n] = new CapabilityList(context, (Camera.Parameters)object);
        boolean bl = true;
        object = this.mList[n];
        if (object.FPS_RANGE.get().isEmpty()) {
            return;
        }
        if (object.PREVIEW_SIZE.get().isEmpty()) {
            return;
        }
        if (object.PICTURE_SIZE.get().isEmpty()) {
            return;
        }
        if (bl) {
            this.store(context, n);
        }
    }

    void setCapabilityFromParamsWithCameraOpen(Context context, int n) throws CameraDeviceException {
        this.setCapabilityFromParams(context, n, CameraDeviceUtil.getParams(context, n));
    }

    /*
     * Enabled aggressive block sorting
     */
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

    boolean store(Context object, int n) {
        if ((object = SharedPreferencesUtil.getSharedPreferences((Context)object, this.getFileName(n), 0)) == null) {
            return false;
        }
        object = object.edit();
        object.putString("android.os.Build.FINGERPRINT", Build.FINGERPRINT);
        Iterator iterator = this.mList[n].values().iterator();
        while (iterator.hasNext()) {
            iterator.next().write((SharedPreferences.Editor)object);
        }
        object.apply();
        return true;
    }
}

