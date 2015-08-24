/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase;
import com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter;
import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperBase;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.RenderBase;
import com.sonymobile.cameracommon.opengl.RgbFrame;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class SplitLayoutBase
extends MultiFrameLayoutBase
implements MultiFramePresenter {
    protected static final float CONTROLPOINT_Z_ORDER = 4.0E-5f;
    private static final int DRAGGING_MODE_PARALLEL = 1;
    private static final int DRAGGING_MODE_PIVOT = 2;
    private static final int DRAGGING_MODE_UNKNOWN = 0;
    protected static final String FRAMEID_CONTROLPOINT_0 = "FRAMEID_CONTROLPOINT_0";
    protected static final String FRAMEID_CONTROLPOINT_1 = "FRAMEID_CONTROLPOINT_1";
    protected static final String FRAMEID_CONTROLPOINT_2 = "FRAMEID_CONTROLPOINT_2";
    protected static final String FRAMEID_CONTROLPOINT_3 = "FRAMEID_CONTROLPOINT_3";
    protected static final String FRAMEID_CONTROLPOINT_4 = "FRAMEID_CONTROLPOINT_4";
    protected static final String FRAMEID_CONTROLPOINT_5 = "FRAMEID_CONTROLPOINT_5";
    protected static final String FRAMEID_CONTROLPOINT_6 = "FRAMEID_CONTROLPOINT_6";
    protected static final String FRAMEID_CONTROLPOINT_7 = "FRAMEID_CONTROLPOINT_7";
    protected static final String FRAMEID_CONTROLPOINT_8 = "FRAMEID_CONTROLPOINT_8";
    protected static final String FRAMEID_OVERLAY = "FRAMEID_OVERLAY";
    protected static final String FRAMEID_VIDEO_OVERLAY = "FRAMEID_VIDEO_OVERLAY";
    protected static final float OVERLAY_BITMAP_SCALE = 0.5f;
    protected static final int OVERLAY_HIGHLIGHT_DEAULT_COLOR = -2130706433;
    protected static final float OVERLAY_Z_ORDER = 2.0E-5f;
    protected static final float PREVIEW_Z_ORDER = 0.0f;
    protected static final String TAG;
    protected static final List<String> sControlPointFrameIdList;
    private float mControlPointAlpha;
    private float mControlPointBaseScaleX;
    private float mControlPointBaseScaleY;
    private ControlPointFrameBaseFactory mControlPointFrameBaseFactory;
    private int mControlPointResourceId;
    private float mControlPointScale;
    private int mDraggingMode;
    private int mDraggingVertexIndex;
    private boolean mIsAdjustingLayout;
    private boolean mIsEnabledOutline;
    private boolean mIsReady;
    private Paint mOutLinePaint;
    private Bitmap mOverlayBitmap;
    private Canvas mOverlayCanvas;
    private OverlayFrameBaseFactory mOverlayFrameBaseFactory;
    private Map<String, PreviewFrameBaseFactory> mPreviewFrameBaseFactoryMap;
    private int mPreviewFrameBaseFactoryShader;
    private Paint mSplitLinePaint;
    private List<String> mStreamFrameIdList;
    private Paint mVideoOutLinePaint;
    private Bitmap mVideoOverlayBitmap;
    private Canvas mVideoOverlayCanvas;
    private OverlayFrameBaseFactory mVideoOverlayFrameBaseFactory;
    private Paint mVideoSplitLinePaint;

    static;

    public SplitLayoutBase(Context var1);

    static /* synthetic */ int access$100(SplitLayoutBase var0);

    static /* synthetic */ int access$102(SplitLayoutBase var0, int var1);

    private void clearCanvasLines(Canvas var1);

    private final void drawHighlightFrameToCanvas(String var1, Canvas var2);

    private final void drawLinesToCanvas(Canvas var1, Paint var2, Paint var3, boolean var4);

    private boolean needToMoveParallel(int var1, float var2, float var3);

    private void renderControPoints(String var1, RenderBase var2);

    private void renderOverlay(String var1, RenderBase var2);

    private void setupControlPoint();

    private void setupOverlay();

    @Override
    public void addFrameId(String var1);

    protected void clearLines();

    protected Point convertToPoint(MotionEvent var1);

    @Override
    public void deleteFrameId(String var1);

    @Override
    protected void disableFunctions();

    protected void dragControlPoint(Point var1);

    protected void drawHighlightFrame(String var1);

    protected void drawLines();

    @Override
    protected void enableFunctions();

    @Override
    public void endAdjustLayout(boolean var1);

    protected void finishDraggingControlPoint(Point var1);

    @Override
    public List<String> getFrameIdList();

    protected PointF getObjectCoordFromWindowCoord(Point var1);

    protected abstract SplitLayoutHelperBase getSplitLayoutHelper();

    protected float[] getTexCoord(PointF var1, PointF var2, PointF var3, PointF var4);

    protected Point[] getVertexArrayAsWindowCoord(String var1);

    protected boolean isAdjustingLayout();

    protected boolean isDraggingControlPoint();

    protected boolean isReady();

    @Override
    protected void onObjectCoordTransformRequested(String var1, RenderBase var2);

    @Override
    protected void onObjectVertexUpdateRequested(String var1, FrameBase var2);

    @Override
    public void onPause();

    @Override
    public void onResume();

    @Override
    public void onSurfaceChanged(int var1, int var2);

    @Override
    public void release();

    @Override
    public void releaseGlEglRelatedInstances();

    protected void renderPreview(String var1, FrameBase var2, float var3);

    public void replaceFrameId(String var1, String var2);

    protected void setControlPointAlpha(float var1);

    public void setControlPointResourceId(int var1);

    protected void setControlPointScale(float var1);

    protected void setEnableDrawingOutline(boolean var1);

    protected void setLineColor(int var1);

    protected void setLineColorForVideo(int var1);

    protected void setLineWidth(float var1);

    protected void setupSplitLayoutHelper();

    protected void setupSplitLayoutInstances();

    @Override
    public void startAdjustLayout(boolean var1);

    protected void startDraggingControlPoint(Point var1);

    @Override
    public void swapSortOrder(String var1, String var2);

    protected abstract void updateSortOrder();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ControlPointFrameBaseFactory
    implements FrameBaseFactory {
        private int mControlPointResourceId;
        private RgbFrame mFrame;
        private int mShader;

        public ControlPointFrameBaseFactory(int var1);

        @Override
        public void initialize(View var1);

        @Override
        public FrameBase obtain();

        @Override
        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class OverlayFrameBaseFactory
    implements FrameBaseFactory {
        private Bitmap mBitmap;
        private RgbFrame mFrame;
        private int mShader;

        private OverlayFrameBaseFactory();

        /* synthetic */ OverlayFrameBaseFactory( var1);

        @Override
        public void initialize(View var1);

        @Override
        public FrameBase obtain();

        @Override
        public void release();

        public void updateBitmap(Bitmap var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PreviewFrameBaseFactory
    implements FrameBaseFactory {
        private YuvFrame mFrame;
        final /* synthetic */ SplitLayoutBase this$0;

        private PreviewFrameBaseFactory(SplitLayoutBase var1);

        /* synthetic */ PreviewFrameBaseFactory(SplitLayoutBase var1,  var2);

        @Override
        public void initialize(View var1);

        @Override
        public FrameBase obtain();

        @Override
        public void release();
    }

}

