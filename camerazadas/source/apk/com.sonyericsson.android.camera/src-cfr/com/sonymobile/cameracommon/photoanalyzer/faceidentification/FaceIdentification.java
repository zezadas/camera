/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.photoanalyzer.faceidentification;

import android.graphics.Rect;
import java.util.List;

public interface FaceIdentification {
    public void cancel();

    public boolean isBusy();

    public void release();

    public void request(byte[] var1, int var2, int var3, int var4, int var5, List<FaceIdentificationRequest> var6, FaceIdentificationCallback var7);

    public static interface FaceIdentificationCallback {
        public void onFaceIdentified(List<FaceIdentificationResult> var1);
    }

    public static final class FaceIdentificationRequest {
        public final Rect mRect;
        public final String mUUid;

        public FaceIdentificationRequest(String string, Rect rect) {
            this.mUUid = string;
            this.mRect = rect;
        }
    }

    public static final class FaceIdentificationResult {
        public final String mName;
        public final Rect mRect;
        public final String mUUid;

        public FaceIdentificationResult(String string, String string2, Rect rect) {
            this.mUUid = string;
            this.mName = string2;
            this.mRect = rect;
        }
    }

}

