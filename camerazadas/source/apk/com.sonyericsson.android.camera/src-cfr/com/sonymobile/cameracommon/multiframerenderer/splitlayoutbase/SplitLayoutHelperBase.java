/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import android.graphics.PointF;
import android.graphics.RectF;
import com.sonymobile.cameracommon.multiframerenderer.Vector2dUtil;
import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperNode;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class SplitLayoutHelperBase {
    private static final float EXPANSION_SIZE = 0.01f;
    public static final int INVALID_INDEX = -1;
    private float mControlPointDraggingLimitBottom;
    private float mControlPointDraggingLimitLeft;
    private float mControlPointDraggingLimitRight;
    private float mControlPointDraggingLimitTop;
    private float mControlPointTouchRange = 0.0f;
    private final RectF mLayoutSize;
    private float mLineTouchRange = 0.0f;
    private SplitLayoutHelperNode mRootNode;
    private final Vertex[] mSplitLineVertexArray = new Vertex[]{new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex()};
    private final Vertex[] mVertexArray = new Vertex[]{new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex()};

    public SplitLayoutHelperBase(RectF rectF) {
        this.mLayoutSize = new RectF(rectF);
        this.init();
    }

    private void initCenterHorizontalVertexArray() {
        this.mVertexArray[3].set(this.mLayoutSize.left, this.mLayoutSize.centerY());
        this.mVertexArray[4].set(this.mLayoutSize.centerX(), this.mLayoutSize.centerY());
        this.mVertexArray[5].set(this.mLayoutSize.right, this.mLayoutSize.centerY());
        this.updateCenterVertexWithLimit();
    }

    private void limitVertex(int n) {
        switch (n) {
            default: {
                return;
            }
            case 1: {
                this.mVertexArray[1].x = Vector2dUtil.limit(this.mVertexArray[1].x, this.mLayoutSize.left + this.mControlPointDraggingLimitLeft, this.mLayoutSize.right - this.mControlPointDraggingLimitRight);
                this.mVertexArray[1].y = this.mLayoutSize.top;
                return;
            }
            case 3: {
                this.mVertexArray[3].x = this.mLayoutSize.left;
                this.mVertexArray[3].y = Vector2dUtil.limit(this.mVertexArray[3].y, this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom, this.mLayoutSize.top - this.mControlPointDraggingLimitTop);
                return;
            }
            case 5: {
                this.mVertexArray[5].x = this.mLayoutSize.right;
                this.mVertexArray[5].y = Vector2dUtil.limit(this.mVertexArray[5].y, this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom, this.mLayoutSize.top - this.mControlPointDraggingLimitTop);
                return;
            }
            case 7: 
        }
        this.mVertexArray[7].x = Vector2dUtil.limit(this.mVertexArray[7].x, this.mLayoutSize.left + this.mControlPointDraggingLimitLeft, this.mLayoutSize.right - this.mControlPointDraggingLimitRight);
        this.mVertexArray[7].y = this.mLayoutSize.bottom;
    }

    private void updateCenterVertexWithLimit() {
        this.updateCenterVertex(this.mVertexArray, true);
    }

    public void addFrame(String string) {
        this.initCenterHorizontalVertexArray();
        this.getRootNode().addFrame(string);
    }

    public Vertex[] copyVertexArray() {
        return (Vertex[])this.mVertexArray.clone();
    }

    public void deleteFrame(String string) {
        this.getRootNode().deleteFrame(string);
    }

    protected Area getArea(String string) {
        return this.getRootNode().findNode(string).getArea();
    }

    public String getAreaFrameId(float f, float f2) {
        for (String string : this.getRootNode().getFrameIdList()) {
            if (!this.inArea(this.getRootNode().findNode(string).getArea(), f, f2)) continue;
            return string;
        }
        return null;
    }

    public Vertex[] getAreaVertexArray(String object) {
        object = this.getRootNode().findNode((String)object).getArea();
        return new Vertex[]{this.getVertex(((Area)object).mVertextIndexArray[0]), this.getVertex(((Area)object).mVertextIndexArray[1]), this.getVertex(((Area)object).mVertextIndexArray[2]), this.getVertex(((Area)object).mVertextIndexArray[3])};
    }

    public int getControlPointIndex(float f, float f2) {
        for (Integer n : this.getControlPointVertexIndexList()) {
            float f3 = this.mVertexArray[n.intValue()].x;
            float f4 = this.mVertexArray[n.intValue()].y;
            if (Math.abs(f - f3) >= this.mControlPointTouchRange || Math.abs(f2 - f4) >= this.mControlPointTouchRange) continue;
            return n;
        }
        return -1;
    }

    public Set<Integer> getControlPointVertexIndexList() {
        return this.getRootNode().getControlPointVertexIndexSet();
    }

    public Vertex getExpandedVertex(int n) {
        return this.mSplitLineVertexArray[n];
    }

    protected List<String> getFrameIdList() {
        return this.getRootNode().getFrameIdList();
    }

    protected RectF getLayoutSize() {
        return this.mLayoutSize;
    }

    protected Set<Segment> getMovableSegmentList() {
        return this.getRootNode().getMovableSegmentSet();
    }

    protected Segment getRelatedSegment(int n) {
        switch (n) {
            default: {
                return null;
            }
            case 1: {
                return new Segment(0, 2);
            }
            case 3: {
                return new Segment(0, 6);
            }
            case 4: {
                return new Segment(1, 7);
            }
            case 5: {
                return new Segment(2, 8);
            }
            case 7: 
        }
        return new Segment(6, 8);
    }

    public Vertex[] getRootAreaVertexArray() {
        Area area = this.getRootNode().getArea();
        return new Vertex[]{this.getVertex(area.mVertextIndexArray[0]), this.getVertex(area.mVertextIndexArray[1]), this.getVertex(area.mVertextIndexArray[2]), this.getVertex(area.mVertextIndexArray[3])};
    }

    protected SplitLayoutHelperNode getRootNode() {
        return this.mRootNode;
    }

    public Vertex getVertex(int n) {
        return this.mVertexArray[n];
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean inArea(Area area, float f, float f2) {
        if (Vector2dUtil.isLeftSide(this.getVertex(area.mVertextIndexArray[0]), this.getVertex(area.mVertextIndexArray[1]), f, f2) || Vector2dUtil.isLeftSide(this.getVertex(area.mVertextIndexArray[1]), this.getVertex(area.mVertextIndexArray[2]), f, f2) || Vector2dUtil.isLeftSide(this.getVertex(area.mVertextIndexArray[2]), this.getVertex(area.mVertextIndexArray[3]), f, f2) || Vector2dUtil.isLeftSide(this.getVertex(area.mVertextIndexArray[3]), this.getVertex(area.mVertextIndexArray[0]), f, f2)) {
            return false;
        }
        return true;
    }

    protected boolean inLine(Segment segment, float f, float f2) {
        f = Vector2dUtil.getDistanceFromSegment(this.getVertex(segment.pointVertexIndex0), this.getVertex(segment.pointVertexIndex1), f, f2);
        if (this.mLineTouchRange >= Math.abs(f)) {
            return true;
        }
        return false;
    }

    public void init() {
        if (this.getRootNode() != null) {
            this.getRootNode().clearFrame();
        }
        this.initVertexArray();
    }

    public void initVertexArray() {
        this.mVertexArray[0].set(this.mLayoutSize.left, this.mLayoutSize.top);
        this.mVertexArray[1].set(this.mLayoutSize.centerX(), this.mLayoutSize.top);
        this.mVertexArray[2].set(this.mLayoutSize.right, this.mLayoutSize.top);
        this.mVertexArray[3].set(this.mLayoutSize.left, this.mLayoutSize.centerY());
        this.mVertexArray[4].set(this.mLayoutSize.centerX(), this.mLayoutSize.centerY());
        this.mVertexArray[5].set(this.mLayoutSize.right, this.mLayoutSize.centerY());
        this.mVertexArray[6].set(this.mLayoutSize.left, this.mLayoutSize.bottom);
        this.mVertexArray[7].set(this.mLayoutSize.centerX(), this.mLayoutSize.bottom);
        this.mVertexArray[8].set(this.mLayoutSize.right, this.mLayoutSize.bottom);
    }

    public void moveControlPointParallel(float f, float f2) {
        f = Vector2dUtil.limit(f, this.mLayoutSize.left + this.mControlPointDraggingLimitLeft, this.mLayoutSize.right - this.mControlPointDraggingLimitRight);
        f2 = Vector2dUtil.limit(f2, this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom, this.mLayoutSize.top - this.mControlPointDraggingLimitTop);
        Object object = new Vertex(f, f2);
        float f3 = this.mVertexArray[4].x;
        float f4 = this.mVertexArray[4].y;
        Set<Integer> set = this.getRootNode().getControlPointVertexIndexSet();
        Iterator<Integer> iterator = set.iterator();
        while (iterator.hasNext()) {
            int n = iterator.next();
            Object object2 = this.mVertexArray[n];
            object2.x+=f - f3;
            object2 = this.mVertexArray[n];
            object2.y+=f2 - f4;
            object2 = this.getRelatedSegment(n);
            Vector2dUtil.getCrossPoint(this.mVertexArray[n], (PointF)object, this.mVertexArray[object2.pointVertexIndex0], this.mVertexArray[object2.pointVertexIndex1], this.mVertexArray[n]);
        }
        object = set.iterator();
        while (object.hasNext()) {
            this.limitVertex((Integer)object.next());
        }
        this.updateCenterVertexWithLimit();
    }

    public abstract void moveControlPointPivot(int var1, float var2, float var3);

    public abstract boolean needToMoveParallel(int var1, float var2, float var3);

    protected void pivotControlPoint(int n, int n2, float f, float f2) {
        Segment segment = this.getRelatedSegment(n2);
        Vector2dUtil.getCrossPoint(this.mVertexArray[n], new Vertex(f, f2), this.mVertexArray[segment.pointVertexIndex0], this.mVertexArray[segment.pointVertexIndex1], this.mVertexArray[n2]);
        this.limitVertex(n2);
        this.updateCenterVertexWithLimit();
    }

    public void replaceId(String string, String string2) {
        this.getRootNode().replaceNodeId(string, string2);
    }

    protected void rotateControlPointWithCenterVertex(int n, int n2, float f, float f2) {
        Segment segment = this.getRelatedSegment(n2);
        Segment segment2 = this.getRelatedSegment(n);
        Vector2dUtil.getCrossPoint(this.getVertex(4), new Vertex(f, f2), this.mVertexArray[segment.pointVertexIndex0], this.mVertexArray[segment.pointVertexIndex1], this.mVertexArray[n2]);
        this.limitVertex(n2);
        Vector2dUtil.getCrossPoint(this.mVertexArray[4], this.mVertexArray[n2], this.mVertexArray[segment2.pointVertexIndex0], this.mVertexArray[segment2.pointVertexIndex1], this.mVertexArray[n]);
        this.limitVertex(n);
        Vector2dUtil.getCrossPoint(this.mVertexArray[4], this.mVertexArray[n], this.mVertexArray[segment.pointVertexIndex0], this.mVertexArray[segment.pointVertexIndex1], this.mVertexArray[n2]);
        this.limitVertex(n2);
        this.updateCenterVertexWithLimit();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected int searchPivotPointIndex(int n) {
        if (n == -1) {
            return -1;
        }
        Iterator<Segment> iterator = this.getMovableSegmentList().iterator();
        do {
            if (!iterator.hasNext()) return -1;
            Segment segment = iterator.next();
            if (n != segment.pointVertexIndex0) continue;
            return segment.pointVertexIndex1;
        } while (n != segment.pointVertexIndex1);
        return segment.pointVertexIndex0;
    }

    public void setControlPointDraggingLimit(float f, float f2, float f3, float f4) {
        this.mControlPointDraggingLimitLeft = f;
        this.mControlPointDraggingLimitTop = f2;
        this.mControlPointDraggingLimitRight = f3;
        this.mControlPointDraggingLimitBottom = f4;
    }

    public void setControlPointTouchRange(float f) {
        this.mControlPointTouchRange = f;
    }

    public void setLineTouchRange(float f) {
        this.mLineTouchRange = f;
    }

    protected void setRootNode(SplitLayoutHelperNode splitLayoutHelperNode) {
        this.mRootNode = splitLayoutHelperNode;
    }

    public List<String> swapFrame(String list, String string) {
        list = this.getRootNode().swapFrame((String)list, string);
        if (list.size() >= 3) {
            this.initCenterHorizontalVertexArray();
        }
        return list;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateCenterVertex(Vertex[] arrvertex, boolean bl) {
        Vertex vertex;
        Vertex vertex2 = arrvertex[1];
        Vertex vertex3 = arrvertex[7];
        Object object = this.getRootNode().getControlPointVertexIndexSet();
        boolean bl2 = object.contains(3);
        boolean bl3 = object.contains(5);
        if (bl2 && !bl3) {
            object = arrvertex[3];
            vertex = arrvertex[4];
        } else if (!bl2 && bl3) {
            object = arrvertex[4];
            vertex = arrvertex[5];
        } else {
            object = arrvertex[3];
            vertex = arrvertex[5];
        }
        Vector2dUtil.getCrossPoint((PointF)object, vertex, vertex2, vertex3, arrvertex[4]);
        if (!bl) return;
        {
            float f = this.mLayoutSize.top - this.mControlPointDraggingLimitTop;
            float f2 = this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom;
            if (arrvertex[4].y > f) {
                Vector2dUtil.getCrossPoint(vertex2, vertex3, new Vertex(this.mLayoutSize.left, f), new Vertex(this.mLayoutSize.right, f), arrvertex[4]);
                return;
            } else {
                if (arrvertex[4].y >= f2) return;
                {
                    Vector2dUtil.getCrossPoint(vertex2, vertex3, new Vertex(this.mLayoutSize.left, f2), new Vertex(this.mLayoutSize.right, f2), arrvertex[4]);
                    return;
                }
            }
        }
    }

    public void updateExpandedVertexArray() {
        this.mSplitLineVertexArray[0].x = this.mLayoutSize.left - 0.01f;
        this.mSplitLineVertexArray[0].y = this.mLayoutSize.top + 0.01f;
        this.mSplitLineVertexArray[2].x = this.mLayoutSize.right + 0.01f;
        this.mSplitLineVertexArray[2].y = this.mLayoutSize.top + 0.01f;
        this.mSplitLineVertexArray[6].x = this.mLayoutSize.left - 0.01f;
        this.mSplitLineVertexArray[6].y = this.mLayoutSize.bottom - 0.01f;
        this.mSplitLineVertexArray[8].x = this.mLayoutSize.right + 0.01f;
        this.mSplitLineVertexArray[8].y = this.mLayoutSize.bottom - 0.01f;
        Vertex vertex = this.getVertex(4);
        this.mSplitLineVertexArray[4].x = vertex.x;
        this.mSplitLineVertexArray[4].y = vertex.y;
        Vector2dUtil.getCrossPoint(this.getVertex(1), vertex, this.mSplitLineVertexArray[0], this.mSplitLineVertexArray[2], this.mSplitLineVertexArray[1]);
        Vector2dUtil.getCrossPoint(this.getVertex(3), vertex, this.mSplitLineVertexArray[0], this.mSplitLineVertexArray[6], this.mSplitLineVertexArray[3]);
        Vector2dUtil.getCrossPoint(this.getVertex(5), vertex, this.mSplitLineVertexArray[2], this.mSplitLineVertexArray[8], this.mSplitLineVertexArray[5]);
        Vector2dUtil.getCrossPoint(this.getVertex(7), vertex, this.mSplitLineVertexArray[6], this.mSplitLineVertexArray[8], this.mSplitLineVertexArray[7]);
    }

    public static class Area {
        private final int[] mVertextIndexArray = new int[4];

        public Area(int n, int n2, int n3, int n4) {
            this.mVertextIndexArray[0] = n;
            this.mVertextIndexArray[1] = n2;
            this.mVertextIndexArray[2] = n3;
            this.mVertextIndexArray[3] = n4;
        }

        public String toString() {
            return "(" + this.mVertextIndexArray[0] + "," + this.mVertextIndexArray[1] + "," + this.mVertextIndexArray[2] + "," + this.mVertextIndexArray[3] + ")";
        }
    }

    public static class Segment {
        public final int pointVertexIndex0;
        public final int pointVertexIndex1;

        public Segment(int n, int n2) {
            this.pointVertexIndex0 = n;
            this.pointVertexIndex1 = n2;
        }
    }

    public static class Vertex
    extends PointF {
        public Vertex() {
        }

        public Vertex(float f, float f2) {
            super(f, f2);
        }

        public Vertex(Vertex vertex) {
            super(vertex.x, vertex.y);
        }
    }

}

