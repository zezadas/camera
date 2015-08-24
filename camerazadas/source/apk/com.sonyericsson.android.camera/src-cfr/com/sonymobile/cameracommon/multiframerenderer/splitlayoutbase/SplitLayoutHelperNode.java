/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperBase;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class SplitLayoutHelperNode {
    public static final String EMPTY = "EMPTY";
    public static final String FILL_CHILD = "FILL_CHILD";
    protected final SplitLayoutHelperBase.Area mArea;
    protected final SplitLayoutHelperNode mChildNode0;
    protected final SplitLayoutHelperNode mChildNode1;
    protected String mFrameId = "EMPTY";
    protected final SplitLayoutHelperBase.Segment mMovalbleSegment;
    private int mNest = -1;
    protected String mNodeNameForDebug;
    protected SplitLayoutHelperNode mParentNode = null;
    protected String mTempFrameIdForCopy = "EMPTY";

    public SplitLayoutHelperNode(SplitLayoutHelperNode splitLayoutHelperNode, SplitLayoutHelperNode splitLayoutHelperNode2, SplitLayoutHelperBase.Area area, SplitLayoutHelperBase.Segment segment) {
        this.mChildNode0 = splitLayoutHelperNode;
        this.mChildNode1 = splitLayoutHelperNode2;
        this.mArea = area;
        this.mMovalbleSegment = segment;
        if (this.hasChild()) {
            this.mChildNode0.mParentNode = this;
            this.mChildNode1.mParentNode = this;
        }
        this.setNodeNest(0);
    }

    private Set<SplitLayoutHelperBase.Area> collectArea(Set<SplitLayoutHelperBase.Area> set) {
        if (this.mFrameId == "EMPTY") {
            return set;
        }
        if (this.mFrameId == "FILL_CHILD") {
            this.mChildNode0.collectArea(set);
            this.mChildNode1.collectArea(set);
            return set;
        }
        set.add(this.mArea);
        return set;
    }

    private Set<Integer> collectControlPointVertexIndex(Set<Integer> set) {
        if (this.mFrameId == "EMPTY") {
            return set;
        }
        if (this.mFrameId == "FILL_CHILD") {
            this.mChildNode0.collectControlPointVertexIndex(set);
            this.mChildNode1.collectControlPointVertexIndex(set);
        }
        set.add(this.mMovalbleSegment.pointVertexIndex0);
        set.add(this.mMovalbleSegment.pointVertexIndex1);
        return set;
    }

    private List<String> collectFrameId(List<String> list) {
        if (this.mFrameId == "EMPTY") {
            return list;
        }
        if (this.mFrameId == "FILL_CHILD") {
            this.mChildNode0.collectFrameId(list);
            this.mChildNode1.collectFrameId(list);
            return list;
        }
        list.add(this.mFrameId);
        return list;
    }

    private Set<SplitLayoutHelperBase.Segment> collectMovableSegment(Set<SplitLayoutHelperBase.Segment> set) {
        if (this.mFrameId == "EMPTY") {
            return set;
        }
        if (this.mFrameId == "FILL_CHILD") {
            this.mChildNode0.collectMovableSegment(set);
            this.mChildNode1.collectMovableSegment(set);
        }
        set.add(this.mMovalbleSegment);
        return set;
    }

    private void copyFrameIdTree(SplitLayoutHelperNode splitLayoutHelperNode) {
        this.prepareCopyFrameIdTree();
        this.doCopyFrameIdTree(splitLayoutHelperNode);
        this.finalizeCopyFrameIdTree();
    }

    private void doCopyFrameIdTree(SplitLayoutHelperNode splitLayoutHelperNode) {
        this.mFrameId = splitLayoutHelperNode.mTempFrameIdForCopy;
        if (splitLayoutHelperNode.hasChild()) {
            this.mChildNode0.doCopyFrameIdTree(splitLayoutHelperNode.mChildNode0);
            this.mChildNode1.doCopyFrameIdTree(splitLayoutHelperNode.mChildNode1);
        }
    }

    private void finalizeCopyFrameIdTree() {
        this.mTempFrameIdForCopy = "EMPTY";
        if (this.hasChild()) {
            this.mChildNode0.finalizeCopyFrameIdTree();
            this.mChildNode1.finalizeCopyFrameIdTree();
        }
    }

    private void prepareCopyFrameIdTree() {
        this.mTempFrameIdForCopy = this.mFrameId;
        this.mFrameId = "EMPTY";
        if (this.hasChild()) {
            this.mChildNode0.prepareCopyFrameIdTree();
            this.mChildNode1.prepareCopyFrameIdTree();
        }
    }

    private void setNodeNest(int n) {
        this.mNest = n;
        if (this.hasChild()) {
            this.mChildNode0.setNodeNest(n + 1);
            this.mChildNode1.setNodeNest(n + 1);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean addFrame(String string) {
        if (string == null) {
            throw new IllegalArgumentException("Don't set null.");
        }
        if (this.mFrameId == "EMPTY") {
            this.mFrameId = string;
            return true;
        }
        if (!this.hasChild()) {
            return false;
        }
        if (this.mFrameId == "FILL_CHILD") {
            if (this.mChildNode1.addFrame(string) || this.mChildNode0.addFrame(string)) return true;
            return false;
        }
        if (this.mChildNode0.getFrameId() != "EMPTY") {
            throw new IllegalStateException("Child node 0 is not empty : Frame id=" + this.mChildNode0.getFrameId());
        }
        if (this.mChildNode1.getFrameId() != "EMPTY") {
            throw new IllegalStateException("Child node 1 is not empty : Frame id=" + this.mChildNode1.getFrameId());
        }
        this.mChildNode0.addFrame(this.mFrameId);
        this.mChildNode1.addFrame(string);
        this.mFrameId = "FILL_CHILD";
        return true;
    }

    public void clearFrame() {
        this.mFrameId = "EMPTY";
        if (this.hasChild()) {
            this.mChildNode0.clearFrame();
            this.mChildNode1.clearFrame();
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public SplitLayoutHelperNode deleteFrame(String object) {
        if (object == null) {
            throw new IllegalArgumentException("Don't set null.");
        }
        if (this.mFrameId == "EMPTY") {
            throw new IllegalStateException("Empty node.");
        }
        if (this.mFrameId == "FILL_CHILD") {
            SplitLayoutHelperNode splitLayoutHelperNode = this.mChildNode0.deleteFrame((String)object);
            if (splitLayoutHelperNode != null) {
                if (splitLayoutHelperNode != this.mChildNode0) return splitLayoutHelperNode;
                if (this.mChildNode0.getFrameId() == "EMPTY" && this.mChildNode1.getFrameId() == "FILL_CHILD") {
                    this.copyFrameIdTree(this.mChildNode1);
                    return splitLayoutHelperNode;
                }
                this.mFrameId = this.mChildNode1.mFrameId;
                this.mChildNode1.mFrameId = "EMPTY";
                return splitLayoutHelperNode;
            }
            if ((object = this.mChildNode1.deleteFrame((String)object)) == null) return null;
            if (object == this.mChildNode1) {
                if (this.mChildNode1.getFrameId() == "EMPTY" && this.mChildNode0.getFrameId() == "FILL_CHILD") {
                    this.copyFrameIdTree(this.mChildNode0);
                }
            } else {
                do {
                    return object;
                    break;
                } while (true);
            }
            this.mFrameId = this.mChildNode0.mFrameId;
            this.mChildNode0.mFrameId = "EMPTY";
            return object;
        }
        if (!this.mFrameId.equals(object)) return null;
        this.mFrameId = "EMPTY";
        return this;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public SplitLayoutHelperNode findNode(String object) {
        SplitLayoutHelperNode splitLayoutHelperNode;
        if (object == null) {
            return null;
        }
        if (object.equals(this.mFrameId)) {
            return this;
        }
        if (!this.hasChild()) {
            return null;
        }
        Object object2 = splitLayoutHelperNode = this.mChildNode0.findNode((String)object);
        if (splitLayoutHelperNode != null) return object2;
        object2 = object = this.mChildNode1.findNode((String)object);
        if (object != null) return object2;
        return null;
    }

    public SplitLayoutHelperBase.Area getArea() {
        return this.mArea;
    }

    public Set<SplitLayoutHelperBase.Area> getAreaSet() {
        return this.collectArea(new HashSet<SplitLayoutHelperBase.Area>());
    }

    public Set<Integer> getControlPointVertexIndexSet() {
        return this.collectControlPointVertexIndex(new HashSet<Integer>());
    }

    public String getFrameId() {
        return this.mFrameId;
    }

    public List<String> getFrameIdList() {
        return this.collectFrameId(new ArrayList<String>());
    }

    public Set<SplitLayoutHelperBase.Segment> getMovableSegmentSet() {
        return this.collectMovableSegment(new HashSet<SplitLayoutHelperBase.Segment>());
    }

    public SplitLayoutHelperBase.Segment getSegmentVertexIndex() {
        return this.mMovalbleSegment;
    }

    protected boolean hasChild() {
        if (this.mChildNode0 != null && this.mChildNode1 != null) {
            return true;
        }
        return false;
    }

    public void replaceNodeId(String string, String string2) {
        this.findNode((String)string).mFrameId = string2;
    }

    public void setNodeNameForDebug(String string) {
        this.mNodeNameForDebug = string;
    }

    public List<String> swapFrame(String string, String string2) {
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add(string);
        arrayList.add(string2);
        SplitLayoutHelperNode splitLayoutHelperNode = this.findNode(string);
        SplitLayoutHelperNode splitLayoutHelperNode2 = this.findNode(string2);
        if (splitLayoutHelperNode.mNest <= splitLayoutHelperNode2.mNest) {
            splitLayoutHelperNode.mFrameId = string2;
            splitLayoutHelperNode2.mFrameId = string;
            return arrayList;
        }
        splitLayoutHelperNode.mParentNode.deleteFrame(string);
        splitLayoutHelperNode2.addFrame(string);
        arrayList.add(splitLayoutHelperNode.mParentNode.mFrameId);
        return arrayList;
    }

    public String toString() {
        return "Node = " + this.mNodeNameForDebug + ", Frame Id = " + this.mFrameId + ", Area = " + this.mArea;
    }
}

