/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

public interface AbstractCapturableState {

    public static enum AbstractPhotoState {
        IDLE,
        BLOCKED;
        

        private AbstractPhotoState() {
        }
    }

    public static enum AbstractVideoState {
        IDLE,
        STARTING_REC,
        RECORDING,
        BLOCKED;
        

        private AbstractVideoState() {
        }
    }

}

