/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.multiframerenderer.FrameStruct;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.RenderBase;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public abstract class MultiFrameLayoutBase {
    private final Context mContext;
    private Map<String, float[]> mFrameMvpMatrixMap;
    private Map<String, FrameStruct> mFrameStructMap;
    private float[] mLookAtPosition;
    private float[] mProjectionMatrix;
    private List<FrameStruct> mSortedFrameStructList;
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    private int[] mViewPort;

    public MultiFrameLayoutBase(Context var1);

    private boolean isMatrixAlreadySet();

    protected abstract void disableFunctions();

    protected abstract void enableFunctions();

    @Deprecated
    public boolean exsitFrameIdForDebug(String var1);

    protected Context getContext();

    List<FrameStruct> getFrameStructList();

    @Deprecated
    public List<FrameStruct> getFrameStructListForDebug();

    protected float getNormalizedHeight();

    protected float getNormalizedWidth();

    protected PointF getObjectCoordFromWindowCoord(String var1, Point var2);

    protected int getSurfaceHeight();

    protected int getSurfaceWidth();

    protected Point getWindowCoordFromClipCoord(PointF var1);

    protected Point getWindowCoordFromObjectCoord(String var1, PointF var2);

    protected boolean isMirroredFrameStruct(String var1);

    protected float[] mirroringTextureCoordinate(float[] var1);

    protected abstract void onObjectCoordTransformRequested(String var1, RenderBase var2);

    protected abstract void onObjectVertexUpdateRequested(String var1, FrameBase var2);

    public void onSurfaceChanged(int var1, int var2);

    protected void registerFrameInfo(String var1, FrameData var2, FrameBaseFactory var3, boolean var4);

    protected void registerFrameInfo(String var1, FrameData var2, FrameBaseFactory var3, boolean var4, FrameStruct.FrameStructVisibility var5);

    public abstract void releaseGlEglRelatedInstances();

    void setFrameMvpMatrix(String var1, float[] var2);

    public void setFrameStructVisibility(String var1, FrameStruct.FrameStructVisibility var2);

    void setMatrix(int[] var1, float[] var2, float[] var3);

    public void setMirrored(String var1, boolean var2);

    protected void setSortOrder(List<String> var1);

    protected void unregisterFrameInfo(String var1);

    public void updateFrameData(String var1, FrameData var2);

    @Deprecated
    public void updateFrameDataForDebug(String var1, FrameData var2);
}

