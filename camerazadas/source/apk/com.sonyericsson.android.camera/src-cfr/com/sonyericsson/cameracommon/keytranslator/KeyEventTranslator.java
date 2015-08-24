/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.keytranslator;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.VolumeKey;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class KeyEventTranslator {
    private static String TAG = KeyEventTranslator.class.getSimpleName();
    private KeyType mCurrentKeyType = KeyType.NON;
    private final CommonSettings mSettings;

    public KeyEventTranslator(CommonSettings commonSettings) {
        this.mSettings = commonSettings;
    }

    private boolean isAvailableNow(TranslatedKeyCode translatedKeyCode, boolean bl) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode[translatedKeyCode.ordinal()]) {
            default: {
                return true;
            }
            case 1: {
                return this.isExpectedKeyType(bl, KeyType.NON, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY, KeyType.NON);
            }
            case 2: {
                return this.isExpectedKeyType(bl, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY);
            }
            case 3: {
                return this.isExpectedKeyType(bl, KeyType.NON, KeyType.VOLUME_UP_KEY, KeyType.VOLUME_UP_KEY, KeyType.NON);
            }
            case 4: 
        }
        return this.isExpectedKeyType(bl, KeyType.NON, KeyType.VOLUME_DOWN_KEY, KeyType.VOLUME_DOWN_KEY, KeyType.NON);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean isExpectedKeyType(boolean bl, KeyType keyType, KeyType keyType2, KeyType keyType3, KeyType keyType4) {
        boolean bl2 = false;
        if (bl) {
            bl = bl2;
            if (this.mCurrentKeyType != keyType) return bl;
            this.mCurrentKeyType = keyType2;
            return true;
        }
        bl = bl2;
        if (this.mCurrentKeyType != keyType3) return bl;
        this.mCurrentKeyType = keyType4;
        return true;
    }

    public TranslatedKeyCode translateKeyCode(int n) {
        switch (n) {
            default: {
                return TranslatedKeyCode.NON;
            }
            case 80: {
                return TranslatedKeyCode.FOCUS;
            }
            case 27: {
                return TranslatedKeyCode.SHUTTER;
            }
            case 24: 
            case 25: {
                VolumeKey volumeKey = (VolumeKey)this.mSettings.get(CommonSettingKey.VOLUME_KEY);
                switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$VolumeKey[volumeKey.ordinal()]) {
                    default: {
                        CameraLogger.e(TAG, "Volume key parameter is invalid state.");
                        return TranslatedKeyCode.ZOOM;
                    }
                    case 1: {
                        return TranslatedKeyCode.ZOOM;
                    }
                    case 2: {
                        return TranslatedKeyCode.VOLUME;
                    }
                    case 3: 
                }
                if (n == 24) {
                    return TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY;
                }
                return TranslatedKeyCode.FOCUS_AND_SHUTTER_DOWN_KEY;
            }
            case 4: {
                return TranslatedKeyCode.BACK;
            }
            case 82: {
                return TranslatedKeyCode.MENU;
            }
            case 66: 
        }
        return TranslatedKeyCode.ENTER;
    }

    public TranslatedKeyCode translateKeyCodeOnDown(int n) {
        TranslatedKeyCode translatedKeyCode;
        TranslatedKeyCode translatedKeyCode2 = translatedKeyCode = this.translateKeyCode(n);
        if (!this.isAvailableNow(translatedKeyCode, true)) {
            translatedKeyCode2 = TranslatedKeyCode.IGNORED;
        }
        return translatedKeyCode2;
    }

    public TranslatedKeyCode translateKeyCodeOnUp(int n) {
        TranslatedKeyCode translatedKeyCode;
        TranslatedKeyCode translatedKeyCode2 = translatedKeyCode = this.translateKeyCode(n);
        if (!this.isAvailableNow(translatedKeyCode, false)) {
            translatedKeyCode2 = TranslatedKeyCode.IGNORED;
        }
        return translatedKeyCode2;
    }

    private static enum KeyType {
        NON,
        CAMERA_KEY,
        VOLUME_UP_KEY,
        VOLUME_DOWN_KEY;
        

        private KeyType() {
        }
    }

    public static enum TranslatedKeyCode {
        NON,
        ZOOM,
        VOLUME,
        FOCUS,
        SHUTTER,
        FOCUS_AND_SHUTTER_UP_KEY,
        FOCUS_AND_SHUTTER_DOWN_KEY,
        BACK,
        MENU,
        IGNORED,
        ENTER;
        

        private TranslatedKeyCode() {
        }
    }

}

