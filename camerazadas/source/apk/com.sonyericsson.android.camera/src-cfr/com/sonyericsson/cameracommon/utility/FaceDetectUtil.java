/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$ExtFace
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 */
package com.sonyericsson.cameracommon.utility;

import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class FaceDetectUtil {
    private static final String TAG = FaceDetectUtil.class.getSimpleName();

    private static int computeClosesDistance(Rect rect, Rect rect2) {
        rect = PositionConverter.getInstance().convertFaceFromDeviceToPreview(rect);
        int n = rect2.centerX() - rect.centerX();
        int n2 = rect2.centerY() - rect.centerY();
        int n3 = n;
        if (n < 0) {
            n3 = n * -1;
        }
        n = n2;
        if (n2 < 0) {
            n = n2 * -1;
        }
        return n3 + n;
    }

    public static List<FaceIdentification.FaceIdentificationRequest> createFaceIdentificationRequest(CameraExtension.FaceDetectionResult object) {
        CameraExtension.ExtFace extFace = null;
        if (object.extFaceList.size() > 0) {
            CameraExtension.ExtFace extFace2 = new CameraExtension.ExtFace();
            object = object.extFaceList.iterator();
            do {
                extFace = extFace2;
                if (!object.hasNext()) break;
                extFace = (CameraExtension.ExtFace)object.next();
                Rect rect = PositionConverter.getInstance().convertFaceFromDeviceToPreview(extFace.face.rect);
                extFace2.add(new FaceIdentification.FaceIdentificationRequest(Integer.valueOf(extFace.face.id).toString(), rect));
            } while (true);
        }
        return extFace;
    }

    private static List<DistanceMapItem> createSortedDistanceList(CameraExtension.FaceDetectionResult object, Rect rect) {
        if (object == null) {
            return null;
        }
        if (object.extFaceList == null) {
            return null;
        }
        ArrayList<DistanceMapItem> arrayList = new ArrayList<DistanceMapItem>();
        int n = 0;
        object = object.extFaceList.iterator();
        while (object.hasNext()) {
            arrayList.add(new DistanceMapItem(n, FaceDetectUtil.computeClosesDistance(((CameraExtension.ExtFace)object.next()).face.rect, rect)));
            ++n;
        }
        Collections.sort(arrayList, new DistanceComparator());
        return arrayList;
    }

    public static void dumpDistanceMapList(List<DistanceMapItem> list) {
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String getFaceIdentifyNameByUuid(List<FaceIdentification.FaceIdentificationResult> iterator, String string) {
        block2 : {
            if (iterator != null) {
                for (FaceIdentification.FaceIdentificationResult faceIdentificationResult : iterator) {
                    if (!faceIdentificationResult.mUUid.equals(string)) continue;
                    if (!faceIdentificationResult.mName.equals("NO NAME")) break block2;
                }
            }
            return null;
        }
        return faceIdentificationResult.mName;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static FaceInformationList getFaceInformationList(List<FaceIdentification.FaceIdentificationResult> list, CameraExtension.FaceDetectionResult faceDetectionResult, Rect object, String iterator) {
        CameraExtension.ExtFace extFace;
        if (faceDetectionResult == null || (extFace = FaceDetectUtil.createSortedDistanceList(faceDetectionResult, (Rect)object)) == null) {
            return null;
        }
        object = new FaceInformationList();
        object.setUserTouchUuid((String)iterator);
        iterator = extFace.iterator();
        do {
            if (!iterator.hasNext()) {
                FaceDetectUtil.logFaceDetectionResult(faceDetectionResult);
                FaceDetectUtil.logFaceIdentificationResult(list);
                return object;
            }
            int n = iterator.next().getArrayIndex();
            extFace = (CameraExtension.ExtFace)faceDetectionResult.extFaceList.get(n);
            String string = String.valueOf(extFace.face.id);
            object.addNamedFace(new NamedFace(FaceDetectUtil.getFaceIdentifyNameByUuid(list, string), string, extFace.face.rect, extFace.smileScore));
        } while (true);
    }

    public static Boolean hasValidFaceId(CameraExtension.FaceDetectionResult object) {
        block1 : {
            Boolean bl = Boolean.TRUE;
            Iterator iterator = object.extFaceList.iterator();
            do {
                object = bl;
                if (!iterator.hasNext()) break block1;
            } while (((CameraExtension.ExtFace)iterator.next()).face.id != -1);
            object = Boolean.FALSE;
        }
        return object;
    }

    public static boolean isValidFaceDetectionResult(CameraExtension.FaceDetectionResult faceDetectionResult) {
        boolean bl;
        boolean bl2 = bl = false;
        if (faceDetectionResult != null) {
            bl2 = bl;
            if (faceDetectionResult.extFaceList.size() > faceDetectionResult.indexOfSelectedFace) {
                bl2 = bl;
                if (faceDetectionResult.indexOfSelectedFace >= 0) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void logFaceDetectionResult(CameraExtension.FaceDetectionResult iterator) {
        if (iterator == null) {
            CameraLogger.v(TAG, "onFaceDetection: result is null");
            return;
        } else {
            CameraLogger.v(TAG, "onFaceDetection: Number of faces: " + iterator.extFaceList.size());
            CameraLogger.v(TAG, "onFaceDetection: Selected index : " + iterator.indexOfSelectedFace);
            if (iterator.extFaceList.isEmpty()) return;
            {
                int n = 0;
                iterator = iterator.extFaceList.iterator();
                while (iterator.hasNext()) {
                    Object object = (CameraExtension.ExtFace)iterator.next();
                    String string = "ExtFACE[" + n + "]";
                    string = string + " face = " + object.face + " ";
                    string = string + " face.id = " + object.face.id + " ";
                    string = string + " face.score = " + object.face.score + " ";
                    string = string + " face.leftEye = " + object.face.leftEye + " ";
                    string = string + " face.mouth = " + object.face.mouth + " ";
                    string = string + " face.rect = " + object.face.rect + " ";
                    string = string + " face.rightEye = " + object.face.rightEye + " ";
                    object = string + " SmileScore = " + object.smileScore + " ";
                    CameraLogger.v(TAG, (String)object);
                    ++n;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void logFaceIdentificationResult(List<FaceIdentification.FaceIdentificationResult> iterator) {
        if (iterator == null) {
            CameraLogger.v(TAG, "onFaceDetection: resultList is null");
            return;
        } else {
            CameraLogger.v(TAG, "onFaceIdentification: Size of list: " + iterator.size());
            int n = 0;
            for (FaceIdentification.FaceIdentificationResult faceIdentificationResult : iterator) {
                CameraLogger.v(TAG, "onFaceIdentification: FACE[" + n + "] Name  : " + faceIdentificationResult.mName);
                CameraLogger.v(TAG, "onFaceIdentification: FACE[" + n + "] Rect  : " + faceIdentificationResult.mRect);
                CameraLogger.v(TAG, "onFaceIdentification: FACE[" + n + "] UUid  : " + faceIdentificationResult.mUUid);
                ++n;
            }
        }
    }

    public static TaggedRectangle overwriteTaggedRectangle(HashMap<String, TaggedRectangle> hashMap, String string, FaceInformationList faceInformationList) {
        Object object;
        String string2;
        block3 : {
            boolean bl;
            Map.Entry<String, TaggedRectangle> entry = null;
            String string3 = null;
            Iterator<Map.Entry<String, TaggedRectangle>> iterator = hashMap.entrySet().iterator();
            block0 : do {
                string2 = string3;
                object = entry;
                if (!iterator.hasNext()) break block3;
                object = iterator.next();
                string2 = object.getKey();
                boolean bl2 = false;
                Iterator<NamedFace> iterator2 = faceInformationList.getNamedFaceList().iterator();
                do {
                    bl = bl2;
                    if (!iterator2.hasNext()) continue block0;
                } while (!string2.equals(iterator2.next().mUuid));
                bl = true;
            } while (bl);
            object = object.getValue();
        }
        if (object != null) {
            hashMap.remove(string2);
            hashMap.put(string, (TaggedRectangle)object);
        }
        return object;
    }

    public static CameraExtension.FaceDetectionResult setUuidFaceDetectionResult(CameraExtension.FaceDetectionResult faceDetectionResult) {
        int n = 0;
        Iterator iterator = faceDetectionResult.extFaceList.iterator();
        while (iterator.hasNext()) {
            ((CameraExtension.ExtFace)iterator.next()).face.id = n++;
        }
        return faceDetectionResult;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static TaggedRectangle sortRectangles(HashMap<String, TaggedRectangle> var0, FaceInformationList var1_1) {
        var4_2 = null;
        var2_3 = var1_1.getNamedFaceList().size() < var0.size() ? var1_1.getNamedFaceList().size() : var0.size();
        for (var3_4 = --var2_3; var3_4 >= 0; --var3_4) {
            var5_5 = var1_1.getNamedFace((int)var3_4).mUuid;
            if (var5_5.equals(var1_1.getUserSelectedUuid())) {
                var5_5 = var4_2;
            } else {
                var6_6 = (TaggedRectangle)var0.get(var5_5);
                var5_5 = var4_2;
                if (var6_6 != null) {
                    var5_5 = var4_2;
                    if (var1_1.getNamedFace((int)var3_4).mName == null) {
                        var5_5 = var4_2;
                        if (var6_6.getName() == null) {
                            var6_6.bringToFront();
                            var5_5 = var6_6;
                        }
                    }
                }
            }
            var4_2 = var5_5;
        }
        do {
            if (var2_3 < 0) {
                var5_5 = var4_2;
                if (var1_1.getNamedFaceByUuid(var1_1.getUserSelectedUuid()) == null) return var5_5;
                var0 = (TaggedRectangle)var0.get(var1_1.getUserSelectedUuid());
                var5_5 = var4_2;
                if (var0 == null) return var5_5;
                var0.bringToFront();
                return var0;
            }
            var5_5 = var1_1.getNamedFace((int)var2_3).mUuid;
            if (!var5_5.equals(var1_1.getUserSelectedUuid())) ** GOTO lbl32
            var5_5 = var4_2;
            ** GOTO lbl40
lbl32: // 1 sources:
            var6_6 = (TaggedRectangle)var0.get(var5_5);
            var5_5 = var4_2;
            if (var6_6 == null) ** GOTO lbl40
            if (var1_1.getNamedFace((int)var2_3).mName != null) ** GOTO lbl-1000
            var5_5 = var4_2;
            if (var6_6.getName() != null) lbl-1000: // 2 sources:
            {
                var6_6.bringToFront();
                var5_5 = var6_6;
            }
lbl40: // 5 sources:
            --var2_3;
            var4_2 = var5_5;
        } while (true);
    }

    private static class DistanceComparator
    implements Comparator<DistanceMapItem> {
        private DistanceComparator() {
        }

        @Override
        public int compare(DistanceMapItem distanceMapItem, DistanceMapItem distanceMapItem2) {
            return distanceMapItem.getDistance() - distanceMapItem2.getDistance();
        }
    }

    private static class DistanceMapItem {
        private final int mArrayIndex;
        private final int mDistance;

        public DistanceMapItem(int n, int n2) {
            this.mArrayIndex = n;
            this.mDistance = n2;
        }

        public int getArrayIndex() {
            return this.mArrayIndex;
        }

        public int getDistance() {
            return this.mDistance;
        }
    }

}

