/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperBase;
import java.util.List;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public class SplitLayoutHelperNode {
    public static final String EMPTY = "EMPTY";
    public static final String FILL_CHILD = "FILL_CHILD";
    protected final SplitLayoutHelperBase.Area mArea;
    protected final SplitLayoutHelperNode mChildNode0;
    protected final SplitLayoutHelperNode mChildNode1;
    protected String mFrameId;
    protected final SplitLayoutHelperBase.Segment mMovalbleSegment;
    private int mNest;
    protected String mNodeNameForDebug;
    protected SplitLayoutHelperNode mParentNode;
    protected String mTempFrameIdForCopy;

    public SplitLayoutHelperNode(SplitLayoutHelperNode var1, SplitLayoutHelperNode var2, SplitLayoutHelperBase.Area var3, SplitLayoutHelperBase.Segment var4);

    private Set<SplitLayoutHelperBase.Area> collectArea(Set<SplitLayoutHelperBase.Area> var1);

    private Set<Integer> collectControlPointVertexIndex(Set<Integer> var1);

    private List<String> collectFrameId(List<String> var1);

    private Set<SplitLayoutHelperBase.Segment> collectMovableSegment(Set<SplitLayoutHelperBase.Segment> var1);

    private void copyFrameIdTree(SplitLayoutHelperNode var1);

    private void doCopyFrameIdTree(SplitLayoutHelperNode var1);

    private void finalizeCopyFrameIdTree();

    private void prepareCopyFrameIdTree();

    private void setNodeNest(int var1);

    public boolean addFrame(String var1);

    public void clearFrame();

    public SplitLayoutHelperNode deleteFrame(String var1);

    public SplitLayoutHelperNode findNode(String var1);

    public SplitLayoutHelperBase.Area getArea();

    public Set<SplitLayoutHelperBase.Area> getAreaSet();

    public Set<Integer> getControlPointVertexIndexSet();

    public String getFrameId();

    public List<String> getFrameIdList();

    public Set<SplitLayoutHelperBase.Segment> getMovableSegmentSet();

    public SplitLayoutHelperBase.Segment getSegmentVertexIndex();

    protected boolean hasChild();

    public void replaceNodeId(String var1, String var2);

    public void setNodeNameForDebug(String var1);

    public List<String> swapFrame(String var1, String var2);

    public String toString();
}

