/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.graphics.RectF;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FocusRectPositionConvertor {
    private static final Pattern FOCUS_RECTS_PATTERN;
    public static final float MULTIFOCUS_RECT_HEIGHT_RATIO = 0.14f;
    public static final float MULTIFOCUS_RECT_WIDTH_RATIO = 0.11f;
    public static final float MULTIFOCUS_RECT_XDIST_RATIO = 0.22f;
    public static final float MULTIFOCUS_RECT_YDIST_RATIO = 0.14f;
    private static final String TAG;

    static;

    public FocusRectPositionConvertor();

    public static Rect convertToPreview(Rect var0, Rect var1, Rect var2);

    public static RectF[] getFixedMultiFocusRectangles(Rect var0);

    public static final List<Rect> getFocusAreasOnPreview(String var0, Rect var1, Rect var2);

    public static Rect getMaxPictureSize(List<Rect> var0);

    public static RectF[] getMultiFocusRectangles(int var0);

    private static Rect getRect(int var0, int var1, int var2, int var3);

    public static RectF getSingleFocusRectangle();

}

