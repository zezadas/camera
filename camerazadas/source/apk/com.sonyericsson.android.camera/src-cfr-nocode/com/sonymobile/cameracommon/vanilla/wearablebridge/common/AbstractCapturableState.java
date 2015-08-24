/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

public interface AbstractCapturableState {

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class AbstractPhotoState
    extends Enum<AbstractPhotoState> {
        private static final /* synthetic */ AbstractPhotoState[] $VALUES;
        public static final /* enum */ AbstractPhotoState BLOCKED;
        public static final /* enum */ AbstractPhotoState IDLE;

        static;

        private AbstractPhotoState();

        public static AbstractPhotoState valueOf(String var0);

        public static AbstractPhotoState[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class AbstractVideoState
    extends Enum<AbstractVideoState> {
        private static final /* synthetic */ AbstractVideoState[] $VALUES;
        public static final /* enum */ AbstractVideoState BLOCKED;
        public static final /* enum */ AbstractVideoState IDLE;
        public static final /* enum */ AbstractVideoState RECORDING;
        public static final /* enum */ AbstractVideoState STARTING_REC;

        static;

        private AbstractVideoState();

        public static AbstractVideoState valueOf(String var0);

        public static AbstractVideoState[] values();
    }

}

