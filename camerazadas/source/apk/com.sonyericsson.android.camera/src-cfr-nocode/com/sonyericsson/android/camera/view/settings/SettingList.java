/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.settings;

import android.app.Activity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.view.settings.SettingGroup;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SettingList {
    private static final Shortcut[] AUTO;
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

    static;

    public SettingList();

    public static SettingGroup getDefaultTab(CapturingMode var0);

    public static List<ParameterKey> getSettingGroupItemListList(SettingGroup var0);

    public static List<Shortcut> getSettingShortcutList(CapturingMode var0, Activity var1);

    public static SettingTabs.Tab[] getSettingTabList(CapturingMode var0);

    public static void updateList(ParameterKey var0, int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Shortcut
    extends Enum<Shortcut> {
        private static final /* synthetic */ Shortcut[] $VALUES;
        public static final /* enum */ Shortcut BLANK;
        public static final /* enum */ Shortcut CONTROL;
        public static final /* enum */ Shortcut FACING;
        public static final /* enum */ Shortcut FLASH_LIGHT;
        public static final /* enum */ Shortcut MENU;
        public static final /* enum */ Shortcut SCENE;
        public static final /* enum */ Shortcut SELF_TIMER;
        private final SettingGroup mGroup;

        static;

        private Shortcut(SettingGroup var3);

        public static Shortcut valueOf(String var0);

        public static Shortcut[] values();

        public SettingGroup getGroup();
    }

}

