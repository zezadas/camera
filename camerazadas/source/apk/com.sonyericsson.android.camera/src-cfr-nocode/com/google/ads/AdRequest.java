/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@Deprecated
public final class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR;
    public static final String VERSION = "0.0.0";

    static;

    private AdRequest();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ErrorCode
    extends Enum<ErrorCode> {
        public static final /* enum */ ErrorCode INTERNAL_ERROR;
        public static final /* enum */ ErrorCode INVALID_REQUEST;
        public static final /* enum */ ErrorCode NETWORK_ERROR;
        public static final /* enum */ ErrorCode NO_FILL;
        private static final /* synthetic */ ErrorCode[] a;
        private final String description;

        static;

        private ErrorCode(String var3);

        public static ErrorCode valueOf(String var0);

        public static ErrorCode[] values();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Gender
    extends Enum<Gender> {
        public static final /* enum */ Gender FEMALE;
        public static final /* enum */ Gender MALE;
        public static final /* enum */ Gender UNKNOWN;
        private static final /* synthetic */ Gender[] b;

        static;

        private Gender();

        public static Gender valueOf(String var0);

        public static Gender[] values();
    }

}

