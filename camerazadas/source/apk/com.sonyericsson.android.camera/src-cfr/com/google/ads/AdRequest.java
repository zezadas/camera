/*
 * Decompiled with CFR 0_100.
 */
package com.google.ads;

@Deprecated
public final class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR = com.google.android.gms.ads.AdRequest.DEVICE_ID_EMULATOR;
    public static final String VERSION = "0.0.0";

    private AdRequest() {
    }

    public static enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        
        private final String description;

        private ErrorCode(String string2) {
            this.description = string2;
        }

        public String toString() {
            return this.description;
        }
    }

    public static enum Gender {
        UNKNOWN,
        MALE,
        FEMALE;
        

        private Gender() {
        }
    }

}

