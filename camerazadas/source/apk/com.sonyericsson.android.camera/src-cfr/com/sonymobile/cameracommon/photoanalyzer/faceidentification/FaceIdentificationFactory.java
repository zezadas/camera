/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.photoanalyzer.faceidentification;

import android.content.Context;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationImpl;

public class FaceIdentificationFactory {
    public static FaceIdentification createNewInstance(Context context) {
        return new FaceIdentificationImpl(context);
    }
}

