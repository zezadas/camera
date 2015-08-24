/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import com.sonyericsson.cameracommon.R;

public enum MediaSavingResult {
    SUCCESS(true, -1, -1),
    FAIL(false, R.string.cam_strings_store_fail_txt, 0),
    FAIL_MEMORY_FULL(false, R.string.cam_strings_memory_full_save_failed_txt, 0);
    
    public final int mResultCode;
    public final boolean mSuccess;
    public final int mTextId;

    private MediaSavingResult(boolean bl, int n2, int n3) {
        this.mSuccess = bl;
        this.mTextId = n2;
        this.mResultCode = n3;
    }
}

