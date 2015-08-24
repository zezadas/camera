/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FocusRectPositionConvertor {
    private static final Pattern FOCUS_RECTS_PATTERN;
    public static final float MULTIFOCUS_RECT_HEIGHT_RATIO = 0.14f;
    public static final float MULTIFOCUS_RECT_WIDTH_RATIO = 0.11f;
    public static final float MULTIFOCUS_RECT_XDIST_RATIO = 0.22f;
    public static final float MULTIFOCUS_RECT_YDIST_RATIO = 0.14f;
    private static final String TAG;

    static {
        TAG = FocusRectPositionConvertor.class.getSimpleName();
        FOCUS_RECTS_PATTERN = Pattern.compile("\\( *([0-9]+) *, *([0-9]+) *, *([0-9]+) *, *([0-9]+) *\\)");
    }

    public static Rect convertToPreview(Rect rect, Rect rect2, Rect rect3) {
        float f = (float)rect3.width() / (float)rect3.height();
        float f2 = (float)rect2.width() / (float)rect2.height();
        float f3 = rect2.width();
        float f4 = rect2.height();
        if (f2 > f) {
            f3 = (float)rect2.width() / (float)rect3.width();
            f = rect3.height();
            return FocusRectPositionConvertor.getRect((int)((float)rect.left / 100.0f * (float)rect3.width() * f3), (int)((float)rect.top / 100.0f * (float)rect3.height() * f3 - (f * f3 - f4) / 2.0f), (int)((float)rect.width() / 100.0f * (float)rect3.width() * f3), (int)((float)rect.height() / 100.0f * (float)rect3.height() * f3));
        }
        f4 = (float)rect2.height() / (float)rect3.height();
        f = rect3.width();
        return FocusRectPositionConvertor.getRect((int)((float)rect.left / 100.0f * (float)rect3.width() * f4 - (f * f4 - f3) / 2.0f), (int)((float)rect.top / 100.0f * (float)rect3.height() * f4), (int)((float)rect.width() / 100.0f * (float)rect3.width() * f4), (int)((float)rect.height() / 100.0f * (float)rect3.height() * f4));
    }

    public static RectF[] getFixedMultiFocusRectangles(Rect parcelable) {
        float f = (float)parcelable.height() / (float)parcelable.width();
        float f2 = 0.14f / f * 0.75f;
        f = 0.14f / f * 0.75f;
        parcelable = new RectF(0.5f - 0.11f / 2.0f, 0.5f - f2 / 2.0f, 0.11f / 2.0f + 0.5f, f2 / 2.0f + 0.5f);
        RectF[] arrrectF = new RectF[]{new RectF((RectF)parcelable), new RectF((RectF)parcelable), new RectF((RectF)parcelable), new RectF((RectF)parcelable), new RectF((RectF)parcelable)};
        arrrectF[0].offset(0.0f, - f);
        arrrectF[1].offset(- 0.22f, 0.0f);
        arrrectF[2].offset(0.0f, 0.0f);
        arrrectF[3].offset(0.22f, 0.0f);
        arrrectF[4].offset(0.0f, f);
        return arrrectF;
    }

    public static final List<Rect> getFocusAreasOnPreview(String object, Rect rect, Rect rect2) {
        ArrayList<Rect> arrayList = new ArrayList<Rect>();
        object = FOCUS_RECTS_PATTERN.matcher((CharSequence)object);
        while (object.find()) {
            arrayList.add(FocusRectPositionConvertor.convertToPreview(FocusRectPositionConvertor.getRect(Integer.parseInt(object.group(1)), Integer.parseInt(object.group(2)), Integer.parseInt(object.group(3)), Integer.parseInt(object.group(4))), rect, rect2));
        }
        return arrayList;
    }

    public static Rect getMaxPictureSize(List<Rect> list) {
        return Collections.max(list, new Comparator<Rect>(){

            @Override
            public int compare(Rect rect, Rect rect2) {
                return rect.width() * rect.height() - rect2.width() * rect2.height();
            }
        });
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static RectF[] getMultiFocusRectangles(int n) {
        Rect rect = PositionConverter.getInstance().getPreviewSize();
        if (false) {
            return FocusRectPositionConvertor.getFixedMultiFocusRectangles(rect);
        }
        Object object = HardwareCapability.getCapability(n);
        n = object.MAX_MULTI_FOCUS_AREAS.get();
        if (n > 0) {
            List<Rect> list = FocusRectPositionConvertor.getFocusAreasOnPreview(object.MULTI_FOCUS_RECTS.get(), rect, FocusRectPositionConvertor.getMaxPictureSize(object.PICTURE_SIZE.get()));
            if (list.isEmpty()) {
                CameraLogger.e(TAG, "Camera doesn't have 'sony-multi-focus-rects' parameter, but 'sony-max-multi-focus-num' is " + n + ".");
                return FocusRectPositionConvertor.getFixedMultiFocusRectangles(rect);
            }
            RectF[] arrrectF = new RectF[list.size()];
            n = 0;
            do {
                object = arrrectF;
                if (n >= list.size()) return object;
                object = list.get(n);
                arrrectF[n] = new RectF((float)object.left / (float)rect.width(), (float)object.top / (float)rect.height(), (float)object.right / (float)rect.width(), (float)object.bottom / (float)rect.height());
                ++n;
            } while (true);
        }
        CameraLogger.e(TAG, "Camera doesn't have 'sony-max-multi-focus-num'.");
        return FocusRectPositionConvertor.getFixedMultiFocusRectangles(rect);
    }

    private static Rect getRect(int n, int n2, int n3, int n4) {
        return new Rect(n, n2, n + n3, n2 + n4);
    }

    public static RectF getSingleFocusRectangle() {
        float f = (1.0f - 0.21f) / 2.0f;
        float f2 = (1.0f - 0.16f) / 2.0f;
        return new RectF(f, f2, f + 0.21f, f2 + 0.16f);
    }

}

