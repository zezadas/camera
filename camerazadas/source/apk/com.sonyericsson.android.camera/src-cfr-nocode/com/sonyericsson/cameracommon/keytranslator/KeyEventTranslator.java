/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.keytranslator;

import com.sonyericsson.cameracommon.commonsetting.CommonSettings;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class KeyEventTranslator {
    private static String TAG;
    private KeyType mCurrentKeyType;
    private final CommonSettings mSettings;

    static;

    public KeyEventTranslator(CommonSettings var1);

    private boolean isAvailableNow(TranslatedKeyCode var1, boolean var2);

    private boolean isExpectedKeyType(boolean var1, KeyType var2, KeyType var3, KeyType var4, KeyType var5);

    public TranslatedKeyCode translateKeyCode(int var1);

    public TranslatedKeyCode translateKeyCodeOnDown(int var1);

    public TranslatedKeyCode translateKeyCodeOnUp(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class KeyType
    extends Enum<KeyType> {
        private static final /* synthetic */ KeyType[] $VALUES;
        public static final /* enum */ KeyType CAMERA_KEY;
        public static final /* enum */ KeyType NON;
        public static final /* enum */ KeyType VOLUME_DOWN_KEY;
        public static final /* enum */ KeyType VOLUME_UP_KEY;

        static;

        private KeyType();

        public static KeyType valueOf(String var0);

        public static KeyType[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class TranslatedKeyCode
    extends Enum<TranslatedKeyCode> {
        private static final /* synthetic */ TranslatedKeyCode[] $VALUES;
        public static final /* enum */ TranslatedKeyCode BACK;
        public static final /* enum */ TranslatedKeyCode ENTER;
        public static final /* enum */ TranslatedKeyCode FOCUS;
        public static final /* enum */ TranslatedKeyCode FOCUS_AND_SHUTTER_DOWN_KEY;
        public static final /* enum */ TranslatedKeyCode FOCUS_AND_SHUTTER_UP_KEY;
        public static final /* enum */ TranslatedKeyCode IGNORED;
        public static final /* enum */ TranslatedKeyCode MENU;
        public static final /* enum */ TranslatedKeyCode NON;
        public static final /* enum */ TranslatedKeyCode SHUTTER;
        public static final /* enum */ TranslatedKeyCode VOLUME;
        public static final /* enum */ TranslatedKeyCode ZOOM;

        static;

        private TranslatedKeyCode();

        public static TranslatedKeyCode valueOf(String var0);

        public static TranslatedKeyCode[] values();
    }

}

