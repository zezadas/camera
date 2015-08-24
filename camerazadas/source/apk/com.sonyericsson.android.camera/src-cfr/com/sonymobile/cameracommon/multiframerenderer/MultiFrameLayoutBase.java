/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import com.sonymobile.cameracommon.multiframerenderer.CoordConvertUtil;
import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.multiframerenderer.FrameStruct;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.RenderBase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class MultiFrameLayoutBase {
    private final Context mContext;
    private Map<String, float[]> mFrameMvpMatrixMap = new HashMap<String, float[]>();
    private Map<String, FrameStruct> mFrameStructMap = new HashMap<String, FrameStruct>();
    private float[] mLookAtPosition;
    private float[] mProjectionMatrix;
    private List<FrameStruct> mSortedFrameStructList = new ArrayList<FrameStruct>();
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    private int[] mViewPort;

    public MultiFrameLayoutBase(Context context) {
        this.mContext = context;
    }

    private boolean isMatrixAlreadySet() {
        if (this.mViewPort == null || this.mLookAtPosition == null || this.mProjectionMatrix == null) {
            return false;
        }
        return true;
    }

    protected abstract void disableFunctions();

    protected abstract void enableFunctions();

    @Deprecated
    public boolean exsitFrameIdForDebug(String string) {
        return this.mFrameStructMap.containsKey(string);
    }

    protected Context getContext() {
        return this.mContext;
    }

    List<FrameStruct> getFrameStructList() {
        return this.mSortedFrameStructList;
    }

    @Deprecated
    public List<FrameStruct> getFrameStructListForDebug() {
        return this.mSortedFrameStructList;
    }

    protected float getNormalizedHeight() {
        float f = 2.0f;
        if (this.mSurfaceHeight < this.mSurfaceWidth) {
            f = 2.0f * (float)this.mSurfaceHeight / (float)this.mSurfaceWidth;
        }
        return f;
    }

    protected float getNormalizedWidth() {
        if (this.mSurfaceHeight < this.mSurfaceWidth) {
            return 2.0f;
        }
        return 2.0f * (float)this.mSurfaceWidth / (float)this.mSurfaceHeight;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected PointF getObjectCoordFromWindowCoord(String object, Point point) {
        if (!(this.isMatrixAlreadySet() && point != null && (object = (Object)this.mFrameMvpMatrixMap.get(object)) != null)) {
            return null;
        }
        return CoordConvertUtil.getObjectCoord(point.x, point.y, this.mProjectionMatrix, (float[])object, this.mViewPort, this.mLookAtPosition);
    }

    protected int getSurfaceHeight() {
        return this.mSurfaceHeight;
    }

    protected int getSurfaceWidth() {
        return this.mSurfaceWidth;
    }

    protected Point getWindowCoordFromClipCoord(PointF pointF) {
        if (!this.isMatrixAlreadySet()) {
            return null;
        }
        float f = this.mViewPort[2];
        float f2 = (pointF.x + 1.0f) / 2.0f;
        float f3 = this.mViewPort[3];
        float f4 = (pointF.y + 1.0f) / 2.0f;
        float f5 = this.mViewPort[3] + this.mViewPort[1] * 2;
        float f6 = this.mViewPort[1];
        return new Point((int)(f * f2), (int)(f5 - (f6 + f3 * f4)));
    }

    /*
     * Enabled aggressive block sorting
     */
    protected Point getWindowCoordFromObjectCoord(String object, PointF pointF) {
        if (!(this.isMatrixAlreadySet() && pointF != null && (object = (Object)this.mFrameMvpMatrixMap.get(object)) != null)) {
            return null;
        }
        return CoordConvertUtil.getWindowCoord(pointF.x, pointF.y, 0.0f, (float[])object, this.mViewPort);
    }

    protected boolean isMirroredFrameStruct(String string) {
        return this.mFrameStructMap.get(string).isMirrored();
    }

    protected float[] mirroringTextureCoordinate(float[] arrf) {
        float f = arrf[0];
        if (arrf[2] < arrf[0]) {
            f = arrf[2];
        }
        float f2 = arrf[4];
        if (arrf[4] < arrf[6]) {
            f2 = arrf[6];
        }
        f = (f2 - f) / 2.0f + f;
        return new float[]{f * 2.0f - arrf[0], arrf[1], f * 2.0f - arrf[2], arrf[3], f * 2.0f - arrf[4], arrf[5], f * 2.0f - arrf[6], arrf[7]};
    }

    protected abstract void onObjectCoordTransformRequested(String var1, RenderBase var2);

    protected abstract void onObjectVertexUpdateRequested(String var1, FrameBase var2);

    public void onSurfaceChanged(int n, int n2) {
        this.mSurfaceWidth = n;
        this.mSurfaceHeight = n2;
    }

    protected void registerFrameInfo(String string, FrameData frameData, FrameBaseFactory frameBaseFactory, boolean bl) {
        this.registerFrameInfo(string, frameData, frameBaseFactory, bl, FrameStruct.FrameStructVisibility.COMMON);
    }

    protected void registerFrameInfo(String string, FrameData frameData, FrameBaseFactory frameBaseFactory, boolean bl, FrameStruct.FrameStructVisibility frameStructVisibility) {
        synchronized (this) {
            this.mFrameStructMap.put(string, new FrameStruct(string, frameData, frameBaseFactory, bl, frameStructVisibility));
            return;
        }
    }

    public abstract void releaseGlEglRelatedInstances();

    void setFrameMvpMatrix(String string, float[] arrf) {
        this.mFrameMvpMatrixMap.put(string, arrf);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setFrameStructVisibility(String object, FrameStruct.FrameStructVisibility frameStructVisibility) {
        synchronized (this) {
            object = this.mFrameStructMap.get(object);
            if (object != null) {
                void var2_2;
                object.setVisibility((FrameStruct.FrameStructVisibility)var2_2);
            }
            return;
        }
    }

    void setMatrix(int[] arrn, float[] arrf, float[] arrf2) {
        this.mViewPort = arrn;
        this.mLookAtPosition = arrf;
        this.mProjectionMatrix = arrf2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setMirrored(String object, boolean bl) {
        synchronized (this) {
            object = this.mFrameStructMap.get(object);
            if (object != null) {
                void var2_2;
                object.setMirrored((boolean)var2_2);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void setSortOrder(List<String> object) {
        synchronized (this) {
            ArrayList<FrameStruct> arrayList = new ArrayList<FrameStruct>();
            object = object.iterator();
            do {
                if (!object.hasNext()) {
                    this.mSortedFrameStructList = arrayList;
                    return;
                }
                Object object2 = (String)object.next();
                if ((object2 = this.mFrameStructMap.get(object2)) == null) continue;
                arrayList.add((FrameStruct)object2);
            } while (true);
        }
    }

    protected void unregisterFrameInfo(String string) {
        synchronized (this) {
            this.mFrameStructMap.remove(string);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void updateFrameData(String object, FrameData frameData) {
        synchronized (this) {
            object = this.mFrameStructMap.get(object);
            if (object != null) {
                void var2_2;
                object.updateFrameData((FrameData)var2_2);
            }
            return;
        }
    }

    @Deprecated
    public void updateFrameDataForDebug(String string, FrameData frameData) {
        this.updateFrameData(string, frameData);
    }
}

