/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import android.app.Activity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.utility.ProductConfig;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

public class SettingList {
    private static final Shortcut[] AUTO = new Shortcut[]{Shortcut.BLANK, Shortcut.BLANK, Shortcut.FLASH_LIGHT, Shortcut.FACING, Shortcut.MENU};
    private static final Shortcut[] AUTO_TABLET;
    private static final Shortcut[] FRONT;
    private static final Shortcut[] FRONT_FLASH_SUPPORTED;
    private static final Shortcut[] FRONT_TABLET;
    public static final int LIST_APPEND = 1;
    public static final int LIST_REMOVE = 0;
    private static final Shortcut[] PROGRAM_PHOTO;
    private static final Shortcut[] PROGRAM_PHOTO_TABLET;
    private static final Shortcut[] PROGRAM_VIDEO;
    private static final Shortcut[] PROGRAM_VIDEO_TABLET;
    private static Map<SettingGroup, List<ParameterKey>> sDisplayingParameterKeyMap;

    /*
     * Enabled aggressive block sorting
     */
    static {
        PROGRAM_PHOTO = new Shortcut[]{Shortcut.SCENE, Shortcut.CONTROL, Shortcut.FLASH_LIGHT, Shortcut.FACING, Shortcut.MENU};
        PROGRAM_VIDEO = new Shortcut[]{Shortcut.SCENE, Shortcut.CONTROL, Shortcut.FLASH_LIGHT, Shortcut.FACING, Shortcut.MENU};
        FRONT = new Shortcut[]{Shortcut.BLANK, Shortcut.BLANK, Shortcut.SELF_TIMER, Shortcut.FACING, Shortcut.MENU};
        FRONT_FLASH_SUPPORTED = new Shortcut[]{Shortcut.BLANK, Shortcut.SELF_TIMER, Shortcut.FLASH_LIGHT, Shortcut.FACING, Shortcut.MENU};
        AUTO_TABLET = new Shortcut[]{Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.FACING, Shortcut.MENU};
        PROGRAM_PHOTO_TABLET = new Shortcut[]{Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.SCENE, Shortcut.CONTROL, Shortcut.FACING, Shortcut.MENU};
        PROGRAM_VIDEO_TABLET = new Shortcut[]{Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.SCENE, Shortcut.CONTROL, Shortcut.FACING, Shortcut.MENU};
        FRONT_TABLET = new Shortcut[]{Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.BLANK, Shortcut.SELF_TIMER, Shortcut.FACING, Shortcut.MENU};
        sDisplayingParameterKeyMap = new EnumMap<SettingGroup, List<ParameterKey>>(SettingGroup.class);
        for (SettingGroup settingGroup : SettingGroup.values()) {
            ParameterKey[] arrparameterKey = settingGroup.getSettingItemList();
            ArrayList<ParameterKey> arrayList = new ArrayList<ParameterKey>();
            block5 : for (ParameterKey parameterKey : arrparameterKey) {
                switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[parameterKey.ordinal()]) {
                    default: {
                        arrayList.add(parameterKey);
                        continue block5;
                    }
                    case 1: {
                        if (StaticConfigurationUtil.isForceSound()) continue block5;
                        arrayList.add(parameterKey);
                        continue block5;
                    }
                    case 2: {
                        arrayList.add(parameterKey);
                    }
                }
            }
            sDisplayingParameterKeyMap.put(settingGroup, arrayList);
        }
    }

    public static SettingGroup getDefaultTab(CapturingMode capturingMode) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                return SettingGroup.COMMON;
            }
            case 1: 
            case 2: 
            case 4: 
            case 5: {
                return SettingGroup.PHOTO;
            }
            case 3: 
            case 6: 
        }
        return SettingGroup.VIDEO;
    }

    public static List<ParameterKey> getSettingGroupItemListList(SettingGroup settingGroup) {
        return sDisplayingParameterKeyMap.get((Object)settingGroup);
    }

    public static List<Shortcut> getSettingShortcutList(CapturingMode capturingMode, Activity activity) {
        if (ProductConfig.isTablet(activity)) {
            switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
                default: {
                    return Arrays.asList(AUTO_TABLET);
                }
                case 1: {
                    return Arrays.asList(AUTO_TABLET);
                }
                case 2: {
                    return Arrays.asList(PROGRAM_PHOTO_TABLET);
                }
                case 3: {
                    return Arrays.asList(PROGRAM_VIDEO_TABLET);
                }
                case 4: 
                case 5: 
                case 6: 
            }
            return Arrays.asList(FRONT_TABLET);
        }
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                return Arrays.asList(AUTO);
            }
            case 1: {
                return Arrays.asList(AUTO);
            }
            case 2: {
                return Arrays.asList(PROGRAM_PHOTO);
            }
            case 3: {
                return Arrays.asList(PROGRAM_VIDEO);
            }
            case 4: 
            case 5: 
            case 6: 
        }
        if (Flash.isSupported(capturingMode.getCameraId())) {
            return Arrays.asList(FRONT_FLASH_SUPPORTED);
        }
        return Arrays.asList(FRONT);
    }

    public static SettingTabs.Tab[] getSettingTabList(CapturingMode capturingMode) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode[capturingMode.ordinal()]) {
            default: {
                return new SettingTabs.Tab[]{SettingTabs.Tab.Photo, SettingTabs.Tab.Video, SettingTabs.Tab.Common};
            }
            case 1: 
            case 4: 
            case 5: {
                return new SettingTabs.Tab[]{SettingTabs.Tab.Photo, SettingTabs.Tab.Video, SettingTabs.Tab.Common};
            }
            case 2: {
                return new SettingTabs.Tab[]{SettingTabs.Tab.Photo, SettingTabs.Tab.Common};
            }
            case 3: 
            case 6: 
        }
        return new SettingTabs.Tab[]{SettingTabs.Tab.Video, SettingTabs.Tab.Common};
    }

    public static void updateList(ParameterKey parameterKey, int n) {
    }

    public static enum Shortcut {
        FACING(null),
        FLASH_LIGHT(SettingGroup.FLASH_LIGHT),
        SCENE(null),
        CONTROL(SettingGroup.CONTROL),
        MENU(null),
        SELF_TIMER(null),
        BLANK(null);
        
        private final SettingGroup mGroup;

        private Shortcut(SettingGroup settingGroup) {
            this.mGroup = settingGroup;
        }

        public SettingGroup getGroup() {
            return this.mGroup;
        }
    }

}

