/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.googleanalytics.parameters.Screen;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class LocalGoogleAnalyticsUtil {
    private static final String TAG = LocalGoogleAnalyticsUtil.class.getSimpleName();
    private static final LocalGoogleAnalyticsUtil sInstance = new LocalGoogleAnalyticsUtil();
    private final Map<ParameterKey, BasisAndChange<ParameterValue>> mSettingsPhoto = new HashMap<ParameterKey, BasisAndChange<ParameterValue>>();
    private final Map<ParameterKey, BasisAndChange<ParameterValue>> mSettingsVideo = new HashMap<ParameterKey, BasisAndChange<ParameterValue>>();

    private LocalGoogleAnalyticsUtil() {
    }

    public static LocalGoogleAnalyticsUtil getInstance() {
        return sInstance;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Screen getScreen(CapturingMode enum_, boolean bl) {
        Object var3_3 = null;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[enum_.ordinal()]) {
            default: {
                return var3_3;
            }
            case 1: {
                enum_ = Screen.SUPERIOR_AUTO_MAIN;
                if (!bl) return enum_;
                return Screen.FASTCAPTURING_MAIN;
            }
            case 2: {
                return Screen.MANUAL_PHOTO;
            }
            case 3: {
                return Screen.SUPERIOR_AUTO_FRONT;
            }
            case 4: {
                enum_ = Screen.MANUAL_FRONT;
                if (!bl) return enum_;
                return Screen.FASTCAPTURING_FRONT;
            }
            case 5: 
        }
        return Screen.MANUAL_VIDEO;
    }

    private Map<ParameterKey, BasisAndChange<ParameterValue>> getSettingsMap(Event.Category category) {
        switch (.$SwitchMap$com$sonymobile$cameracommon$googleanalytics$parameters$Event$Category[category.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return this.mSettingsPhoto;
            }
            case 2: 
        }
        return this.mSettingsVideo;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void sendEventSettings(Event.Category category) {
        Map<ParameterKey, BasisAndChange<ParameterValue>> map = this.getSettingsMap(category);
        if (map == null || map.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<ParameterKey, BasisAndChange<ParameterValue>>> iterator = map.entrySet().iterator();
        do {
            if (!iterator.hasNext()) {
                map.clear();
                return;
            }
            Map.Entry<ParameterKey, BasisAndChange<ParameterValue>> entry = iterator.next();
            ParameterKey parameterKey = entry.getKey();
            BasisAndChange<ParameterValue> basisAndChange = entry.getValue();
            if (basisAndChange.mChange == null) continue;
            GoogleAnalyticsUtil.getInstance().sendEvent(category, parameterKey.toString(), ((ParameterValue)basisAndChange.mChange).toString());
        } while (true);
    }

    private void setSettingsPhotoVideo(BasisAndChange<ParameterValue> basisAndChange, Event.Category object) {
        ParameterKey parameterKey = ((ParameterValue)basisAndChange.mChange).getParameterKey();
        if ((object = this.getSettingsMap((Event.Category)object)) == null) {
            return;
        }
        if (object.containsKey((Object)parameterKey)) {
            BasisAndChange basisAndChange2 = (BasisAndChange)object.get((Object)parameterKey);
            if (((ParameterValue)basisAndChange2.mBasis).equals(basisAndChange.mChange)) {
                object.remove((Object)parameterKey);
                return;
            }
            basisAndChange2.mChange = basisAndChange.mChange;
            object.put(parameterKey, basisAndChange2);
            return;
        }
        object.put(parameterKey, basisAndChange);
    }

    public void clear() {
        this.mSettingsPhoto.clear();
        this.mSettingsVideo.clear();
    }

    public void sendEventSettings() {
        this.sendEventSettings(Event.Category.SETTINGS_PHOTO);
        this.sendEventSettings(Event.Category.SETTINGS_VIDEO);
    }

    public void sendView(BaseActivity baseActivity, BaseActivity.LaunchedBy launchedBy, CapturingMode capturingMode, boolean bl) {
        GoogleAnalyticsUtil.getInstance().sendView(baseActivity, launchedBy, this.getScreen(capturingMode, bl));
    }

    public void sendView(CustomDimension.GALaunchedBy gALaunchedBy, CapturingMode capturingMode, boolean bl) {
        GoogleAnalyticsUtil.getInstance().sendView(gALaunchedBy, this.getScreen(capturingMode, bl));
    }

    public void setSettingsValue(ParameterValue object, ParameterValue object2, CapturingMode capturingMode) {
        object = new BasisAndChange<ParameterValue>((ParameterValue)object, (ParameterValue)object2);
        object2 = ((ParameterValue)((BasisAndChange)object).mChange).getParameterKey();
        if (!object.hasChange()) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[object2.ordinal()]) {
            default: {
                return;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: 
            case 12: {
                this.setSettingsPhotoVideo((BasisAndChange<ParameterValue>)object, Event.Category.SETTINGS_PHOTO);
                return;
            }
            case 13: 
            case 14: 
            case 15: 
            case 16: 
            case 17: 
            case 18: 
            case 19: 
            case 20: 
            case 21: {
                this.setSettingsPhotoVideo((BasisAndChange<ParameterValue>)object, Event.Category.SETTINGS_VIDEO);
                return;
            }
            case 22: 
            case 23: 
            case 24: 
            case 25: {
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
                    default: {
                        return;
                    }
                    case 2: {
                        this.setSettingsPhotoVideo((BasisAndChange<ParameterValue>)object, Event.Category.SETTINGS_PHOTO);
                        return;
                    }
                    case 5: 
                }
                this.setSettingsPhotoVideo((BasisAndChange<ParameterValue>)object, Event.Category.SETTINGS_VIDEO);
                return;
            }
            case 26: 
            case 27: 
            case 28: 
            case 29: 
            case 30: 
            case 31: 
            case 32: 
        }
        GoogleAnalyticsUtil.getInstance().sendEvent(Event.Category.SETTINGS_COMMON, object2.toString(), ((ParameterValue)((BasisAndChange)object).mChange).toString());
    }

    private static class BasisAndChange<T> {
        private T mBasis = null;
        private T mChange = null;

        public BasisAndChange(T t, T t2) {
            this.mBasis = t;
            this.mChange = t2;
        }

        boolean hasChange() {
            if (this.mBasis != this.mChange) {
                return true;
            }
            return false;
        }
    }

}

