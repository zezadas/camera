/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 */
package com.sonyericsson.cameracommon.utility;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FaceDetectUtil {
    private static final String TAG;

    static;

    public FaceDetectUtil();

    private static int computeClosesDistance(Rect var0, Rect var1);

    public static List<FaceIdentification.FaceIdentificationRequest> createFaceIdentificationRequest(CameraExtension.FaceDetectionResult var0);

    private static List<DistanceMapItem> createSortedDistanceList(CameraExtension.FaceDetectionResult var0, Rect var1);

    public static void dumpDistanceMapList(List<DistanceMapItem> var0);

    private static String getFaceIdentifyNameByUuid(List<FaceIdentification.FaceIdentificationResult> var0, String var1);

    public static FaceInformationList getFaceInformationList(List<FaceIdentification.FaceIdentificationResult> var0, CameraExtension.FaceDetectionResult var1, Rect var2, String var3);

    public static Boolean hasValidFaceId(CameraExtension.FaceDetectionResult var0);

    public static boolean isValidFaceDetectionResult(CameraExtension.FaceDetectionResult var0);

    public static void logFaceDetectionResult(CameraExtension.FaceDetectionResult var0);

    public static void logFaceIdentificationResult(List<FaceIdentification.FaceIdentificationResult> var0);

    public static TaggedRectangle overwriteTaggedRectangle(HashMap<String, TaggedRectangle> var0, String var1, FaceInformationList var2);

    public static CameraExtension.FaceDetectionResult setUuidFaceDetectionResult(CameraExtension.FaceDetectionResult var0);

    public static TaggedRectangle sortRectangles(HashMap<String, TaggedRectangle> var0, FaceInformationList var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DistanceComparator
    implements Comparator<DistanceMapItem> {
        private DistanceComparator();

        /* synthetic */ DistanceComparator( var1);

        @Override
        public int compare(DistanceMapItem var1, DistanceMapItem var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DistanceMapItem {
        private final int mArrayIndex;
        private final int mDistance;

        public DistanceMapItem(int var1, int var2);

        public int getArrayIndex();

        public int getDistance();
    }

}

