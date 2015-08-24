/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import android.graphics.PointF;
import android.graphics.RectF;
import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperNode;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public abstract class SplitLayoutHelperBase {
    private static final float EXPANSION_SIZE = 0.01f;
    public static final int INVALID_INDEX = -1;
    private float mControlPointDraggingLimitBottom;
    private float mControlPointDraggingLimitLeft;
    private float mControlPointDraggingLimitRight;
    private float mControlPointDraggingLimitTop;
    private float mControlPointTouchRange;
    private final RectF mLayoutSize;
    private float mLineTouchRange;
    private SplitLayoutHelperNode mRootNode;
    private final Vertex[] mSplitLineVertexArray;
    private final Vertex[] mVertexArray;

    public SplitLayoutHelperBase(RectF var1);

    private void initCenterHorizontalVertexArray();

    private void limitVertex(int var1);

    private void updateCenterVertexWithLimit();

    public void addFrame(String var1);

    public Vertex[] copyVertexArray();

    public void deleteFrame(String var1);

    protected Area getArea(String var1);

    public String getAreaFrameId(float var1, float var2);

    public Vertex[] getAreaVertexArray(String var1);

    public int getControlPointIndex(float var1, float var2);

    public Set<Integer> getControlPointVertexIndexList();

    public Vertex getExpandedVertex(int var1);

    protected List<String> getFrameIdList();

    protected RectF getLayoutSize();

    protected Set<Segment> getMovableSegmentList();

    protected Segment getRelatedSegment(int var1);

    public Vertex[] getRootAreaVertexArray();

    protected SplitLayoutHelperNode getRootNode();

    public Vertex getVertex(int var1);

    protected boolean inArea(Area var1, float var2, float var3);

    protected boolean inLine(Segment var1, float var2, float var3);

    public void init();

    public void initVertexArray();

    public void moveControlPointParallel(float var1, float var2);

    public abstract void moveControlPointPivot(int var1, float var2, float var3);

    public abstract boolean needToMoveParallel(int var1, float var2, float var3);

    protected void pivotControlPoint(int var1, int var2, float var3, float var4);

    public void replaceId(String var1, String var2);

    protected void rotateControlPointWithCenterVertex(int var1, int var2, float var3, float var4);

    protected int searchPivotPointIndex(int var1);

    public void setControlPointDraggingLimit(float var1, float var2, float var3, float var4);

    public void setControlPointTouchRange(float var1);

    public void setLineTouchRange(float var1);

    protected void setRootNode(SplitLayoutHelperNode var1);

    public List<String> swapFrame(String var1, String var2);

    protected void updateCenterVertex(Vertex[] var1, boolean var2);

    public void updateExpandedVertexArray();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Area {
        private final int[] mVertextIndexArray;

        public Area(int var1, int var2, int var3, int var4);

        static /* synthetic */ int[] access$000(Area var0);

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Segment {
        public final int pointVertexIndex0;
        public final int pointVertexIndex1;

        public Segment(int var1, int var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class Vertex
    extends PointF {
        public Vertex();

        public Vertex(float var1, float var2);

        public Vertex(Vertex var1);
    }

}

