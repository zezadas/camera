/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.identity.intents;

public interface AddressConstants {

    public static interface ErrorCodes {
        public static final int ERROR_CODE_NO_APPLICABLE_ADDRESSES = 555;
    }

    public static interface Extras {
        public static final String EXTRA_ADDRESS = "com.google.android.gms.identity.intents.EXTRA_ADDRESS";
        public static final String EXTRA_ERROR_CODE = "com.google.android.gms.identity.intents.EXTRA_ERROR_CODE";
    }

    public static interface ResultCodes {
        public static final int RESULT_ERROR = 1;
    }

    public static interface Themes {
        public static final int THEME_DARK = 0;
        @Deprecated
        public static final int THEME_HOLO_DARK = 0;
        @Deprecated
        public static final int THEME_HOLO_LIGHT = 1;
        public static final int THEME_LIGHT = 1;
    }

}

