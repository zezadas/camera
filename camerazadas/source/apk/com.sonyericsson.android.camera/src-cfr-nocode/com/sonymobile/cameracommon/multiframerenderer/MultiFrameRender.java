/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.gltextureview.ExtendedGLTextureView;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import com.sonymobile.cameracommon.multiframerenderer.FrameStruct;
import com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor;
import com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase;
import com.sonymobile.cameracommon.opengl.CopiedFrame;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.FramebufferController;
import com.sonymobile.cameracommon.opengl.TransitionControllerUtil;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MultiFrameRender
extends ExtendedGLTextureView
implements GLTextureView.SurfaceStateCallback,
GLTextureView.Renderer,
GLRendererAccessor {
    public static final float[] EYE_POSITION;
    public static final float EYE_POSITION_Z = 2.0f;
    private static final float[] EYE_SIGHT_MATRIX;
    public static final float FAR_CLIP = 10.0f;
    private static final boolean IS_DEBUG = false;
    public static final float NEAR_CLIP = 1.0f;
    private static final float[] PARALLEL_PROJECTION_MATRIX;
    private static final float[] PERSPECTIVE_PROJECTION_MATRIX;
    private static final String TAG;
    private static final Object mFrameEncoderLock;
    private Bitmap mCaptureWorkBitmap;
    private float mClearColorBlue;
    private float mClearColorGreen;
    private float mClearColorRed;
    private MultiFrameLayoutBase mCurrentMultiFrameLayout;
    private FramebufferController mFramebuffer;
    private CopiedFrame mFramebufferRenderer;
    private int mFramebufferRendererShader;
    private boolean mIsNeedToSkipGetBitmap;
    private boolean mIsVideoFrameRendererReleaseRequired;
    private GLTextureView.SurfaceStateCallback mLifeCycleCallback;
    private GLRendererAccessor.OnTakeGlTextureViewBitmapCallback mOnTakeGlTextureViewBitmapCallback;
    private PhotoSavingRequest mPhotoSavingRequest;
    private TransitionControllerUtil.ServoControlRotator mRotator;
    private TransitionControllerUtil.ServoControlTranslator mTranslator;
    private Handler mUiThreadHandler;
    private EGLController mVideoEncoderEglController;
    private int mVideoFrameHeight;
    private int mVideoFrameWidth;
    private int[] mViewPort;

    static;

    public MultiFrameRender(Context var1, int var2);

    private void bindAndRenderToFrameBuffer(float[] var1);

    private static void clearSurface(float var0, float var1, float var2);

    private static void disableGlobalFunctions();

    private static void enableGlobalFunctions();

    private static float[] getPerspectiveProjectionRootGlobalMatrix();

    private static void logDebug(String var0);

    private void render();

    private void renderPreviewFrame(float[] var1);

    private void renderVideoFrame(float[] var1);

    private void setDefaultGlViewPort(int var1, int var2);

    private static int[] setupDynamicConfig(int var0, int var1);

    public MultiFrameLayoutBase getCurrentMultiFrameLayout();

    @Override
    public Bitmap getGLTextureViewBitmap();

    @Override
    public void getGLTextureViewBitmap(Bitmap var1);

    @Override
    public void onDrawFrame();

    @Override
    public void onPause();

    @Override
    public void onResume();

    @Override
    public void onSurfaceChanged(int var1, int var2);

    @Override
    public void onSurfaceCreated();

    @Override
    public void onSurfaceDestroyed();

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture var1);

    public void release();

    protected void render(MultiFrameLayoutBase var1, float[] var2, TransitionControllerUtil.ServoControlBase.Applier var3, TransitionControllerUtil.ServoControlBase.Applier var4, TransitionControllerUtil.ServoControlBase.Applier var5, FrameStruct.FrameStructVisibility var6);

    protected void renderOnlyPreviewFrame(float[] var1);

    protected void renderOnlyVideoFrame(float[] var1);

    protected void renderToFrameBuffer(float[] var1);

    @Override
    public void requestFrame(String var1, FrameData var2);

    @Override
    public void requestTakeGlTextureViewBitmap(GLRendererAccessor.OnTakeGlTextureViewBitmapCallback var1, PhotoSavingRequest var2, Bitmap var3);

    public void setGlobalRotate(float var1, float var2, float var3);

    public void setGlobalTranslator(float var1, float var2, float var3);

    public void setGlobalTranslator(float var1, float var2, float var3, TransitionControllerUtil.ServoControlBase.ServoControlListener var4);

    protected void setMatrix(MultiFrameLayoutBase var1);

    @Override
    public void setMirrored(String var1, boolean var2);

    public void setMultiFrameLayout(MultiFrameLayoutBase var1);

    @Override
    public void setRenderer(GLTextureView.Renderer var1);

    public void setSurfaceClearColor(float var1, float var2, float var3);

    public void setSurfaceClearColor(int var1);

    @Override
    public void setSurfaceStateCallback(GLTextureView.SurfaceStateCallback var1);

    public void setUiOrientation(int var1);

    @Override
    public void startVideoFrameRendering(EGLController var1, int var2, int var3);

    @Override
    public void stopVideoFrameRendering();

}

