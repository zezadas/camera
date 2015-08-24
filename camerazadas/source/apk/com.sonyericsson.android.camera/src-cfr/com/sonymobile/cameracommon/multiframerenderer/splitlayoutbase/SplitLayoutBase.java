/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase;
import com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter;
import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperBase;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.RenderBase;
import com.sonymobile.cameracommon.opengl.RgbFrame;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
    protected static final String TAG = SplitLayoutBase.class.getSimpleName();
    protected static final List<String> sControlPointFrameIdList = new ArrayList<String>();
    private float mControlPointAlpha = 1.0f;
    private float mControlPointBaseScaleX = 1.0f;
    private float mControlPointBaseScaleY = 1.0f;
    private ControlPointFrameBaseFactory mControlPointFrameBaseFactory;
    private int mControlPointResourceId;
    private float mControlPointScale = 1.0f;
    private int mDraggingMode = 0;
    private int mDraggingVertexIndex = -1;
    private boolean mIsAdjustingLayout = false;
    private boolean mIsEnabledOutline = false;
    private boolean mIsReady = false;
    private Paint mOutLinePaint = new Paint();
    private Bitmap mOverlayBitmap;
    private Canvas mOverlayCanvas;
    private OverlayFrameBaseFactory mOverlayFrameBaseFactory;
    private Map<String, PreviewFrameBaseFactory> mPreviewFrameBaseFactoryMap = new HashMap<String, PreviewFrameBaseFactory>();
    private int mPreviewFrameBaseFactoryShader = 0;
    private Paint mSplitLinePaint = new Paint();
    private List<String> mStreamFrameIdList = new ArrayList<String>();
    private Paint mVideoOutLinePaint = new Paint();
    private Bitmap mVideoOverlayBitmap;
    private Canvas mVideoOverlayCanvas;
    private OverlayFrameBaseFactory mVideoOverlayFrameBaseFactory;
    private Paint mVideoSplitLinePaint = new Paint();

    static {
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_0");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_1");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_2");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_3");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_4");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_5");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_6");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_7");
        sControlPointFrameIdList.add("FRAMEID_CONTROLPOINT_8");
    }

    public SplitLayoutBase(Context context) {
        super(context);
    }

    private void clearCanvasLines(Canvas canvas) {
        if (canvas == null) {
            return;
        }
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
    }

    private final void drawHighlightFrameToCanvas(String object, Canvas canvas) {
        Object object22;
        if ((object = this.getVertexArrayAsWindowCoord((String)object)) == null) {
            return;
        }
        for (Object object22 : object) {
            object22.x = (int)((float)object22.x * 0.5f);
            object22.y = (int)((float)object22.y * 0.5f);
        }
        object22 = new Path();
        object22.moveTo(object[0].x, object[0].y);
        object22.lineTo(object[1].x, object[1].y);
        object22.lineTo(object[2].x, object[2].y);
        object22.lineTo(object[3].x, object[3].y);
        object22.close();
        object = new Paint();
        object.setAntiAlias(true);
        object.setColor(-2130706433);
        object.setStyle(Paint.Style.FILL);
        canvas.drawPath((Path)object22, (Paint)object);
    }

    private final void drawLinesToCanvas(Canvas canvas, Paint object, Paint paint, boolean bl) {
        Object object2;
        Object object3 = this.getSplitLayoutHelper();
        this.clearCanvasLines(canvas);
        this.getSplitLayoutHelper().updateExpandedVertexArray();
        Object object4 = this.getSplitLayoutHelper().getMovableSegmentList().iterator();
        while (object4.hasNext()) {
            Object object5 = object4.next();
            object2 = this.getWindowCoordFromClipCoord(object3.getExpandedVertex(object5.pointVertexIndex0));
            object5 = this.getWindowCoordFromClipCoord(object3.getExpandedVertex(object5.pointVertexIndex1));
            if (object2 == null || object5 == null) continue;
            canvas.drawLine(0.5f * (float)object2.x, 0.5f * (float)object2.y, 0.5f * (float)object5.x, 0.5f * (float)object5.y, (Paint)object);
        }
        if (bl) {
            object2 = object3.getRootAreaVertexArray();
            object = this.getWindowCoordFromClipCoord(object2[0]);
            object3 = this.getWindowCoordFromClipCoord((PointF)object2[1]);
            object4 = this.getWindowCoordFromClipCoord((PointF)object2[2]);
            object2 = this.getWindowCoordFromClipCoord((PointF)object2[3]);
            if (object != null && object3 != null && object4 != null && object2 != null) {
                canvas.drawLine(0.5f * (float)object.x, 0.5f * (float)object.y, 0.5f * (float)object3.x, 0.5f * (float)object3.y, paint);
                canvas.drawLine(0.5f * (float)object3.x, 0.5f * (float)object3.y, 0.5f * (float)object4.x, 0.5f * (float)object4.y, paint);
                canvas.drawLine(0.5f * (float)object4.x, 0.5f * (float)object4.y, 0.5f * (float)object2.x, 0.5f * (float)object2.y, paint);
                canvas.drawLine(0.5f * (float)object2.x, 0.5f * (float)object2.y, 0.5f * (float)object.x, 0.5f * (float)object.y, paint);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean needToMoveParallel(int n, float f, float f2) {
        if (this.mDraggingMode == 0) {
            this.mDraggingMode = this.getSplitLayoutHelper().needToMoveParallel(n, f, f2) ? 1 : 2;
        }
        if (this.mDraggingMode == 1) {
            return true;
        }
        return false;
    }

    private void renderControPoints(String object, RenderBase renderBase) {
        int n = sControlPointFrameIdList.lastIndexOf(object);
        object = this.getSplitLayoutHelper().getVertex(n);
        renderBase.scale(this.mControlPointBaseScaleX * this.mControlPointScale, this.mControlPointBaseScaleY * this.mControlPointScale, 1.0f);
        renderBase.translate(object.x, object.y, 4.0E-5f);
        ((FrameBase)renderBase).setAlpha(this.mControlPointAlpha);
    }

    private void renderOverlay(String string, RenderBase renderBase) {
        renderBase.translate(0.0f, 0.0f, 2.0E-5f);
    }

    private void setupControlPoint() {
        this.mControlPointFrameBaseFactory = new ControlPointFrameBaseFactory(this.mControlPointResourceId);
        Object object = sControlPointFrameIdList.iterator();
        while (object.hasNext()) {
            this.registerFrameInfo(object.next(), null, this.mControlPointFrameBaseFactory, false);
        }
        object = new BitmapFactory.Options();
        object.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(this.getContext().getResources(), this.mControlPointResourceId, (BitmapFactory.Options)object);
        int n = object.outWidth;
        int n2 = object.outHeight;
        this.mControlPointBaseScaleX = (float)n / (float)this.getSurfaceWidth();
        this.mControlPointBaseScaleY = (float)n2 / (float)this.getSurfaceHeight();
    }

    private void setupOverlay() {
        if (this.getSurfaceWidth() <= 0 || this.getSurfaceHeight() <= 0) {
            return;
        }
        this.mSplitLinePaint.setAntiAlias(true);
        this.mOutLinePaint.set(this.mSplitLinePaint);
        this.mOutLinePaint.setStrokeWidth(this.mSplitLinePaint.getStrokeWidth() * 2.0f);
        this.mOverlayBitmap = Bitmap.createBitmap((int)((float)this.getSurfaceWidth() * 0.5f), (int)((float)this.getSurfaceHeight() * 0.5f), Bitmap.Config.ARGB_8888);
        this.mOverlayCanvas = new Canvas(this.mOverlayBitmap);
        this.mOverlayFrameBaseFactory = new OverlayFrameBaseFactory();
        this.registerFrameInfo("FRAMEID_OVERLAY", null, this.mOverlayFrameBaseFactory, false);
        this.mVideoSplitLinePaint.setAntiAlias(true);
        this.mVideoOutLinePaint.set(this.mVideoSplitLinePaint);
        this.mVideoOutLinePaint.setStrokeWidth(this.mVideoSplitLinePaint.getStrokeWidth() * 2.0f);
        this.mVideoOverlayBitmap = Bitmap.createBitmap((int)((float)this.getSurfaceWidth() * 0.5f), (int)((float)this.getSurfaceHeight() * 0.5f), Bitmap.Config.ARGB_8888);
        this.mVideoOverlayCanvas = new Canvas(this.mVideoOverlayBitmap);
        this.mVideoOverlayFrameBaseFactory = new OverlayFrameBaseFactory();
        this.registerFrameInfo("FRAMEID_VIDEO_OVERLAY", null, this.mVideoOverlayFrameBaseFactory, false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void addFrameId(String string) {
        synchronized (this) {
            if (!(string == null || this.mStreamFrameIdList.contains(string))) {
                PreviewFrameBaseFactory previewFrameBaseFactory;
                this.mStreamFrameIdList.add(string);
                if (this.mPreviewFrameBaseFactoryMap.containsKey(string)) {
                    previewFrameBaseFactory = this.mPreviewFrameBaseFactoryMap.get(string);
                } else {
                    previewFrameBaseFactory = new PreviewFrameBaseFactory();
                    this.mPreviewFrameBaseFactoryMap.put(string, previewFrameBaseFactory);
                }
                this.registerFrameInfo(string, null, previewFrameBaseFactory, true);
                if (this.getSplitLayoutHelper() != null) {
                    this.getSplitLayoutHelper().addFrame(string);
                    this.drawLines();
                }
                this.updateSortOrder();
            }
            return;
        }
    }

    protected void clearLines() {
        synchronized (this) {
            this.clearCanvasLines(this.mOverlayCanvas);
            this.clearCanvasLines(this.mVideoOverlayCanvas);
            return;
        }
    }

    protected Point convertToPoint(MotionEvent motionEvent) {
        return new Point((int)motionEvent.getX(), (int)motionEvent.getY());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void deleteFrameId(String string) {
        synchronized (this) {
            block7 : {
                boolean bl = this.mStreamFrameIdList.contains(string);
                if (bl) break block7;
                do {
                    return;
                    break;
                } while (true);
            }
            this.mStreamFrameIdList.remove(string);
            if (this.getSplitLayoutHelper() != null) {
                this.getSplitLayoutHelper().deleteFrame(string);
                this.drawLines();
            }
            this.unregisterFrameInfo(string);
            this.updateSortOrder();
            return;
        }
    }

    @Override
    protected void disableFunctions() {
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void dragControlPoint(Point parcelable) {
        PointF pointF = this.getObjectCoordFromWindowCoord((Point)parcelable);
        if (pointF == null) {
            return;
        }
        if (this.needToMoveParallel(this.mDraggingVertexIndex, pointF.x, pointF.y)) {
            this.getSplitLayoutHelper().moveControlPointParallel(pointF.x, pointF.y);
        } else {
            this.getSplitLayoutHelper().moveControlPointPivot(this.mDraggingVertexIndex, pointF.x, pointF.y);
        }
        this.drawLines();
    }

    protected void drawHighlightFrame(String string) {
        synchronized (this) {
            this.drawHighlightFrameToCanvas(string, this.mOverlayCanvas);
            this.mOverlayFrameBaseFactory.updateBitmap(this.mOverlayBitmap);
            this.drawHighlightFrameToCanvas(string, this.mVideoOverlayCanvas);
            this.mVideoOverlayFrameBaseFactory.updateBitmap(this.mVideoOverlayBitmap);
            return;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected void drawLines() {
        synchronized (this) {
            block6 : {
                boolean bl = this.mIsReady;
                if (bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            this.drawLinesToCanvas(this.mOverlayCanvas, this.mSplitLinePaint, this.mOutLinePaint, this.mIsEnabledOutline);
            this.mOverlayFrameBaseFactory.updateBitmap(this.mOverlayBitmap);
            this.drawLinesToCanvas(this.mVideoOverlayCanvas, this.mVideoSplitLinePaint, this.mVideoOutLinePaint, this.mIsEnabledOutline);
            this.mVideoOverlayFrameBaseFactory.updateBitmap(this.mVideoOverlayBitmap);
            return;
        }
    }

    @Override
    protected void enableFunctions() {
    }

    @Override
    public void endAdjustLayout(boolean bl) {
        this.mIsAdjustingLayout = false;
    }

    protected void finishDraggingControlPoint(Point point) {
        this.dragControlPoint(point);
        this.mDraggingVertexIndex = -1;
        this.mDraggingMode = 0;
    }

    @Override
    public List<String> getFrameIdList() {
        return this.mStreamFrameIdList;
    }

    protected PointF getObjectCoordFromWindowCoord(Point point) {
        if (this.mStreamFrameIdList.size() > 0) {
            return this.getObjectCoordFromWindowCoord(this.mStreamFrameIdList.get(0), point);
        }
        return null;
    }

    protected abstract SplitLayoutHelperBase getSplitLayoutHelper();

    protected float[] getTexCoord(PointF pointF5, PointF pointF2, PointF pointF3, PointF pointF4) {
        float f;
        float f2 = this.getNormalizedWidth() / 2.0f;
        float f3 = this.getNormalizedHeight() / 2.0f;
        PointF[] arrpointF = new PointF[]{new PointF(pointF5.x / f2, pointF5.y / f3), new PointF(pointF2.x / f2, pointF2.y / f3), new PointF(pointF3.x / f2, pointF3.y / f3), new PointF(pointF4.x / f2, pointF4.y / f3)};
        float f4 = 3.4028235E38f;
        float f5 = 1.4E-45f;
        f3 = 1.4E-45f;
        f2 = 3.4028235E38f;
        for (PointF pointF5 : arrpointF) {
            f = f4;
            if (pointF5.x < f4) {
                f = pointF5.x;
            }
            float f6 = f5;
            if (pointF5.x > f5) {
                f6 = pointF5.x;
            }
            float f7 = f3;
            if (pointF5.y > f3) {
                f7 = pointF5.y;
            }
            f3 = f2;
            if (pointF5.y < f2) {
                f3 = pointF5.y;
            }
            f2 = f3;
            f4 = f;
            f5 = f6;
            f3 = f7;
        }
        f = f5 - f4;
        f4 = f / 2.0f + f4;
        f2 = (f3-=f2) / 2.0f + f2;
        f3 = Math.max(f, f3);
        return new float[]{(arrpointF[0].x - f4) / f3 + 0.5f, - (arrpointF[0].y - f2) / f3 + 0.5f, (arrpointF[1].x - f4) / f3 + 0.5f, - (arrpointF[1].y - f2) / f3 + 0.5f, (arrpointF[2].x - f4) / f3 + 0.5f, - (arrpointF[2].y - f2) / f3 + 0.5f, (arrpointF[3].x - f4) / f3 + 0.5f, - (arrpointF[3].y - f2) / f3 + 0.5f};
    }

    protected Point[] getVertexArrayAsWindowCoord(String object) {
        Object object2 = this.getSplitLayoutHelper().getAreaVertexArray((String)object);
        object = this.getWindowCoordFromClipCoord(object2[0]);
        Point point = this.getWindowCoordFromClipCoord(object2[1]);
        Point point2 = this.getWindowCoordFromClipCoord(object2[2]);
        object2 = this.getWindowCoordFromClipCoord(object2[3]);
        if (object == null || object2 == null || point == null || point2 == null) {
            return null;
        }
        return new Point[]{object, point, point2, object2};
    }

    protected boolean isAdjustingLayout() {
        return this.mIsAdjustingLayout;
    }

    protected boolean isDraggingControlPoint() {
        if (this.mDraggingVertexIndex != -1) {
            return true;
        }
        return false;
    }

    protected boolean isReady() {
        return this.mIsReady;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onObjectCoordTransformRequested(String string, RenderBase renderBase) {
        if ("FRAMEID_OVERLAY".equals(string) || "FRAMEID_VIDEO_OVERLAY".equals(string)) {
            this.renderOverlay(string, renderBase);
            return;
        } else {
            if (!sControlPointFrameIdList.contains(string)) return;
            {
                this.renderControPoints(string, renderBase);
                return;
            }
        }
    }

    @Override
    protected void onObjectVertexUpdateRequested(String string, FrameBase frameBase) {
        if (this.mStreamFrameIdList.contains(string)) {
            this.renderPreview(string, frameBase, 0.0f);
        }
    }

    @Override
    public void onPause() {
    }

    @Override
    public void onResume() {
    }

    @Override
    public void onSurfaceChanged(int n, int n2) {
        super.onSurfaceChanged(n, n2);
        this.setupSplitLayoutInstances();
        this.mIsReady = true;
        this.updateSortOrder();
        this.drawLines();
    }

    @Override
    public void release() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void releaseGlEglRelatedInstances() {
        this.mIsReady = false;
        // MONITORENTER : this
        Iterator iterator = this.mPreviewFrameBaseFactoryMap.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().release();
        }
        iterator = this.mPreviewFrameBaseFactoryMap.keySet().iterator();
        while (iterator.hasNext()) {
            String string = (String)iterator.next();
            if (this.mStreamFrameIdList.contains(string)) continue;
            iterator.remove();
        }
        // MONITOREXIT : this
        if (this.mPreviewFrameBaseFactoryShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mPreviewFrameBaseFactoryShader);
            this.mPreviewFrameBaseFactoryShader = 0;
        }
        this.mOverlayFrameBaseFactory.release();
        this.mOverlayFrameBaseFactory = null;
        this.mOverlayCanvas.setBitmap(null);
        this.mOverlayCanvas = null;
        if (!(this.mOverlayBitmap == null || this.mOverlayBitmap.isRecycled())) {
            this.mOverlayBitmap.recycle();
        }
        this.mOverlayBitmap = null;
        this.mControlPointFrameBaseFactory.release();
        this.mControlPointFrameBaseFactory = null;
        this.mVideoOverlayFrameBaseFactory.release();
        this.mVideoOverlayFrameBaseFactory = null;
        this.mVideoOverlayCanvas.setBitmap(null);
        this.mVideoOverlayCanvas = null;
        if (!(this.mVideoOverlayBitmap == null || this.mVideoOverlayBitmap.isRecycled())) {
            this.mVideoOverlayBitmap.recycle();
        }
        this.mVideoOverlayBitmap = null;
    }

    protected void renderPreview(String string, FrameBase frameBase, float f) {
        Object object = this.getSplitLayoutHelper().getAreaVertexArray(string);
        SplitLayoutHelperBase.Vertex vertex = object[0];
        SplitLayoutHelperBase.Vertex vertex2 = object[1];
        SplitLayoutHelperBase.Vertex vertex3 = object[2];
        object = object[3];
        frameBase.updateVertexBuffer(new float[]{vertex.x, vertex.y, f, object.x, object.y, f, vertex2.x, vertex2.y, f, vertex3.x, vertex3.y, f});
        vertex = vertex2 = (SplitLayoutHelperBase.Vertex)this.getTexCoord(vertex, (PointF)object, vertex2, vertex3);
        if (this.isMirroredFrameStruct(string)) {
            vertex = (SplitLayoutHelperBase.Vertex)this.mirroringTextureCoordinate((float[])vertex2);
        }
        frameBase.updateTextureBuffer((float[])vertex);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void replaceFrameId(String object, String string) {
        synchronized (this) {
            boolean bl = this.mStreamFrameIdList.contains(object);
            if (bl) {
                this.getSplitLayoutHelper().replaceId((String)object, string);
                int n = this.mStreamFrameIdList.indexOf(object);
                this.mStreamFrameIdList.set(n, string);
                this.unregisterFrameInfo((String)object);
                if (this.mPreviewFrameBaseFactoryMap.containsKey(string)) {
                    object = this.mPreviewFrameBaseFactoryMap.get(string);
                } else {
                    object = new PreviewFrameBaseFactory();
                    this.mPreviewFrameBaseFactoryMap.put(string, (PreviewFrameBaseFactory)object);
                }
                this.registerFrameInfo(string, null, (FrameBaseFactory)object, true);
                this.updateSortOrder();
            }
            return;
        }
    }

    protected void setControlPointAlpha(float f) {
        this.mControlPointAlpha = f;
    }

    public void setControlPointResourceId(int n) {
        this.mControlPointResourceId = n;
    }

    protected void setControlPointScale(float f) {
        this.mControlPointScale = f;
    }

    protected void setEnableDrawingOutline(boolean bl) {
        synchronized (this) {
            this.mIsEnabledOutline = bl;
            return;
        }
    }

    protected void setLineColor(int n) {
        synchronized (this) {
            this.mSplitLinePaint.setColor(n);
            this.mOutLinePaint.setColor(n);
            return;
        }
    }

    protected void setLineColorForVideo(int n) {
        synchronized (this) {
            this.mVideoSplitLinePaint.setColor(n);
            this.mVideoOutLinePaint.setColor(n);
            return;
        }
    }

    protected void setLineWidth(float f) {
        synchronized (this) {
            this.mSplitLinePaint.setStrokeWidth(f * 0.5f);
            this.mOutLinePaint.setStrokeWidth(this.mSplitLinePaint.getStrokeWidth() * 2.0f);
            this.mVideoSplitLinePaint.setStrokeWidth(f * 0.5f);
            this.mVideoOutLinePaint.setStrokeWidth(this.mVideoSplitLinePaint.getStrokeWidth() * 2.0f);
            return;
        }
    }

    protected void setupSplitLayoutHelper() {
        float f = Math.min(this.mControlPointBaseScaleX, this.mControlPointBaseScaleY);
        this.getSplitLayoutHelper().setControlPointTouchRange(f);
        this.getSplitLayoutHelper().setLineTouchRange(f);
        for (String string : this.mStreamFrameIdList) {
            this.getSplitLayoutHelper().addFrame(string);
        }
        this.drawLines();
    }

    protected void setupSplitLayoutInstances() {
        this.setupOverlay();
        this.setupControlPoint();
        this.setupSplitLayoutHelper();
    }

    @Override
    public void startAdjustLayout(boolean bl) {
        this.mIsAdjustingLayout = true;
    }

    protected void startDraggingControlPoint(Point parcelable) {
        if ((parcelable = this.getObjectCoordFromWindowCoord((Point)parcelable)) == null) {
            return;
        }
        this.mDraggingVertexIndex = this.getSplitLayoutHelper().getControlPointIndex(parcelable.x, parcelable.y);
    }

    @Override
    public void swapSortOrder(String string, String string2) {
        int n = this.mStreamFrameIdList.indexOf(string);
        int n2 = this.mStreamFrameIdList.indexOf(string2);
        Collections.swap(this.mStreamFrameIdList, n, n2);
        this.updateSortOrder();
    }

    protected abstract void updateSortOrder();

    private static class ControlPointFrameBaseFactory
    implements FrameBaseFactory {
        private int mControlPointResourceId;
        private RgbFrame mFrame;
        private int mShader;

        public ControlPointFrameBaseFactory(int n) {
            this.mControlPointResourceId = n;
        }

        @Override
        public void initialize(View view) {
            Context context = view.getContext();
            this.mFrame = new RgbFrame(context, view, this.mControlPointResourceId);
            this.mShader = ShaderProgramFactory.createRgbFrameShaderProgram(context);
            this.mFrame.setShaderProgram(this.mShader);
        }

        @Override
        public FrameBase obtain() {
            return this.mFrame;
        }

        @Override
        public void release() {
            if (this.mFrame != null) {
                this.mFrame.release();
                this.mFrame = null;
            }
            if (this.mShader != 0) {
                ShaderProgramFactory.deleteShaderProgram(this.mShader);
                this.mShader = 0;
            }
        }
    }

    private static class OverlayFrameBaseFactory
    implements FrameBaseFactory {
        private Bitmap mBitmap;
        private RgbFrame mFrame;
        private int mShader;

        private OverlayFrameBaseFactory() {
        }

        @Override
        public void initialize(View view) {
            Context context = view.getContext();
            this.mFrame = new RgbFrame(context, view, this.mBitmap);
            this.mShader = ShaderProgramFactory.createRgbFrameShaderProgram(context);
            this.mFrame.setShaderProgram(this.mShader);
        }

        @Override
        public FrameBase obtain() {
            if (this.mFrame != null && this.mBitmap != null) {
                this.mFrame.updataTexture(this.mBitmap);
                this.mBitmap = null;
            }
            return this.mFrame;
        }

        @Override
        public void release() {
            if (this.mFrame != null) {
                this.mFrame.release();
                this.mFrame = null;
            }
            if (this.mShader != 0) {
                ShaderProgramFactory.deleteShaderProgram(this.mShader);
                this.mShader = 0;
            }
        }

        public void updateBitmap(Bitmap bitmap) {
            this.mBitmap = bitmap;
        }
    }

    private class PreviewFrameBaseFactory
    implements FrameBaseFactory {
        private YuvFrame mFrame;

        private PreviewFrameBaseFactory() {
        }

        @Override
        public void initialize(View view) {
            Context context = view.getContext();
            this.mFrame = new YuvFrame(context, view, true);
            if (SplitLayoutBase.this.mPreviewFrameBaseFactoryShader == 0) {
                SplitLayoutBase.this.mPreviewFrameBaseFactoryShader = ShaderProgramFactory.createYuvFrameShaderProgram(context);
            }
            this.mFrame.setShaderProgram(SplitLayoutBase.this.mPreviewFrameBaseFactoryShader);
        }

        @Override
        public FrameBase obtain() {
            return this.mFrame;
        }

        @Override
        public void release() {
            if (this.mFrame != null) {
                this.mFrame.release();
                this.mFrame = null;
            }
        }
    }

}

