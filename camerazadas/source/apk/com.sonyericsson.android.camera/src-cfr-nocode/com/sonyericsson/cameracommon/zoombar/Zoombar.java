/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.zoombar;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Zoombar
extends RelativeLayout {
    public static final int DELAY_ZOOMBAR_HIDE = 1000;
    public static final int MIN_VALUE = 0;
    private static final String TAG;
    private float SRZ_LIMIT_POSITION;
    private Type mCurrentType;
    private final Runnable mHideEvent;
    private int mLastMaxValue;
    private int mLastValue;
    private Point mMaxPosition;
    private Point mMinPosition;
    private RelativeLayout mThumbBase;

    static;

    public Zoombar(Context var1);

    public Zoombar(Context var1, AttributeSet var2);

    public Zoombar(Context var1, AttributeSet var2, int var3);

    private int onZoomChanged(int var1, int var2);

    private int onZoomChangedWithSuperResolutionInternal(int var1, int var2, int var3);

    private void prepareMinMaxPositions();

    private void updateLookAndFeel();

    public void hide();

    public void hideDelayed();

    public void initZoom();

    @Override
    public boolean onTouchEvent(MotionEvent var1);

    public int onZoomChanged(int var1, int var2, int var3);

    public void setSensorOrientation(int var1);

    public void show();

    public void updateZoombarType(Type var1);

    public int zoom(int var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Type
    extends Enum<Type> {
        private static final /* synthetic */ Type[] $VALUES;
        public static final /* enum */ Type NORMAL;
        public static final /* enum */ Type PARTIAL_SUPER_RESOLUTION;

        static;

        private Type();

        public static Type valueOf(String var0);

        public static Type[] values();
    }

}

