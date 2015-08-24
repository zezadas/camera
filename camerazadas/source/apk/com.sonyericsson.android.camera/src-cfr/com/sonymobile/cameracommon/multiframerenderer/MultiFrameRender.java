/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.multiframerenderer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.gltextureview.ExtendedGLTextureView;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.multiframerenderer.FrameStruct;
import com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor;
import com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase;
import com.sonymobile.cameracommon.multiframerenderer.NotifySurfaceStateTask;
import com.sonymobile.cameracommon.opengl.CopiedFrame;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.FramebufferController;
import com.sonymobile.cameracommon.opengl.RenderBase;
import com.sonymobile.cameracommon.opengl.RgbFrame;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.TransitionControllerUtil;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.nio.IntBuffer;
import java.util.Iterator;
import java.util.List;

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
    private float mClearColorBlue = 0.0f;
    private float mClearColorGreen = 0.0f;
    private float mClearColorRed = 0.0f;
    private MultiFrameLayoutBase mCurrentMultiFrameLayout;
    private FramebufferController mFramebuffer;
    private CopiedFrame mFramebufferRenderer = null;
    private int mFramebufferRendererShader = 0;
    private boolean mIsNeedToSkipGetBitmap;
    private boolean mIsVideoFrameRendererReleaseRequired = false;
    private GLTextureView.SurfaceStateCallback mLifeCycleCallback = null;
    private GLRendererAccessor.OnTakeGlTextureViewBitmapCallback mOnTakeGlTextureViewBitmapCallback;
    private PhotoSavingRequest mPhotoSavingRequest;
    private TransitionControllerUtil.ServoControlRotator mRotator;
    private TransitionControllerUtil.ServoControlTranslator mTranslator;
    private Handler mUiThreadHandler = new Handler();
    private EGLController mVideoEncoderEglController = null;
    private int mVideoFrameHeight;
    private int mVideoFrameWidth;
    private int[] mViewPort;

    static {
        TAG = MultiFrameRender.class.getSimpleName();
        EYE_SIGHT_MATRIX = new float[16];
        PERSPECTIVE_PROJECTION_MATRIX = new float[16];
        PARALLEL_PROJECTION_MATRIX = new float[16];
        EYE_POSITION = new float[]{0.0f, 0.0f, 2.0f};
        Matrix.setLookAtM(EYE_SIGHT_MATRIX, 0, EYE_POSITION[0], EYE_POSITION[1], EYE_POSITION[2], 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        Matrix.orthoM(PARALLEL_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 200.0f);
        Matrix.frustumM(PERSPECTIVE_PROJECTION_MATRIX, 0, -0.5f, 0.5f, -0.5f, 0.5f, 1.0f, 10.0f);
        mFrameEncoderLock = new Object();
    }

    public MultiFrameRender(Context context, int n) {
        super(context, true, n);
        super.setSurfaceStateCallback(this);
        super.setRenderer(this);
        this.mRotator = new TransitionControllerUtil.ServoControlRotator(0.0f, 0.0f, 0.0f);
        this.mRotator.setGains(0.2f, 0.01f, 0.01f);
        this.mTranslator = new TransitionControllerUtil.ServoControlTranslator(0.0f, 0.0f, 0.0f);
        this.mTranslator.setGains(0.2f, 0.03f, 0.04f);
    }

    private void bindAndRenderToFrameBuffer(float[] arrf) {
        this.mFramebuffer.bind();
        MultiFrameRender.clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
        this.setDefaultGlViewPort(this.getWidth(), this.getHeight());
        this.renderToFrameBuffer(arrf);
        this.mFramebuffer.unbind();
    }

    private static void clearSurface(float f, float f2, float f3) {
        GLES20.glClearColor(f, f2, f3, 1.0f);
        GLES20.glClear(16640);
    }

    private static void disableGlobalFunctions() {
        GLES20.glDisable(3042);
        GLES20.glDisable(2929);
    }

    private static void enableGlobalFunctions() {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glEnable(2929);
    }

    private static float[] getPerspectiveProjectionRootGlobalMatrix() {
        float[] arrf = new float[16];
        Matrix.setIdentityM(arrf, 0);
        Matrix.multiplyMM(arrf, 0, EYE_SIGHT_MATRIX, 0, arrf, 0);
        Matrix.multiplyMM(arrf, 0, PERSPECTIVE_PROJECTION_MATRIX, 0, arrf, 0);
        return arrf;
    }

    private static void logDebug(String string) {
        Log.e("TraceLog", "[TIME=" + System.currentTimeMillis() + "] [TAG=" + TAG + "] [THREAD=" + Thread.currentThread() + "] [EVENT=" + string + "]");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void render() {
        MultiFrameRender.clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
        if (this.mCurrentMultiFrameLayout.getFrameStructList().isEmpty()) {
            return;
        }
        float[] arrf = MultiFrameRender.getPerspectiveProjectionRootGlobalMatrix();
        this.mRotator.update();
        this.mTranslator.update();
        MultiFrameLayoutBase multiFrameLayoutBase = this.mCurrentMultiFrameLayout;
        synchronized (multiFrameLayoutBase) {
            MultiFrameRender.enableGlobalFunctions();
            this.bindAndRenderToFrameBuffer(arrf);
            this.renderPreviewFrame(arrf);
            MultiFrameRender.disableGlobalFunctions();
            Object object = mFrameEncoderLock;
            synchronized (object) {
                this.renderVideoFrame(arrf);
                return;
            }
        }
    }

    private void renderPreviewFrame(float[] arrf) {
        this.setDefaultGlViewPort(this.getWidth(), this.getHeight());
        this.mFramebufferRenderer.setGlobalMatrix(arrf);
        this.mFramebufferRenderer.setInputTexture(this.mFramebuffer.getTexture());
        this.mFramebufferRenderer.scale(1.0f, -1.0f, 1.0f);
        this.mFramebufferRenderer.render();
        this.renderOnlyPreviewFrame(arrf);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void renderVideoFrame(float[] arrf) {
        if (this.mVideoEncoderEglController != null) {
            if (this.mVideoEncoderEglController.isValid()) {
                if (this.mIsVideoFrameRendererReleaseRequired) {
                    this.mVideoEncoderEglController.release();
                    this.mVideoEncoderEglController = null;
                } else {
                    this.mVideoEncoderEglController.enable();
                    this.setDefaultGlViewPort(this.mVideoFrameWidth, this.mVideoFrameHeight);
                    MultiFrameRender.enableGlobalFunctions();
                    MultiFrameRender.clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
                    this.mFramebufferRenderer.setGlobalMatrix(arrf);
                    this.mFramebufferRenderer.setInputTexture(this.mFramebuffer.getTexture());
                    this.mFramebufferRenderer.scale(1.0f, -1.0f, 1.0f);
                    this.mFramebufferRenderer.render();
                    this.renderOnlyVideoFrame(arrf);
                    MultiFrameRender.disableGlobalFunctions();
                    GLES20.glFlush();
                    GLES20.glFinish();
                    this.mVideoEncoderEglController.onDrawFrameFinished();
                    this.mVideoEncoderEglController.disable();
                }
            }
            this.recoverEglContext();
        }
    }

    private void setDefaultGlViewPort(int n, int n2) {
        if (n2 < n) {
            GLES20.glViewport(0, (n - n2) / 2 * -1, n, n);
            return;
        }
        GLES20.glViewport(0, (n2 - n) / 2 * -1, n2, n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static int[] setupDynamicConfig(int n, int n2) {
        if (n2 < n) {
            GLES20.glViewport(0, (n - n2) / 2 * -1, n, n);
        } else {
            GLES20.glViewport(0, (n2 - n) / 2 * -1, n2, n2);
        }
        IntBuffer intBuffer = IntBuffer.allocate(4);
        GLES20.glGetIntegerv(2978, intBuffer);
        return intBuffer.array();
    }

    public MultiFrameLayoutBase getCurrentMultiFrameLayout() {
        return this.mCurrentMultiFrameLayout;
    }

    @Override
    public Bitmap getGLTextureViewBitmap() {
        return this.getBitmap();
    }

    @Override
    public void getGLTextureViewBitmap(Bitmap bitmap) {
        this.getBitmap(bitmap);
    }

    @Override
    public void onDrawFrame() {
        if (this.isReady()) {
            this.render();
            return;
        }
        MultiFrameRender.clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.requestAction(new Runnable(){

            @Override
            public void run() {
            }
        });
        this.requestRender();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.requestAction(new Runnable(){

            @Override
            public void run() {
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onSurfaceChanged(int n, int n2) {
        this.mViewPort = MultiFrameRender.setupDynamicConfig(this.getWidth(), this.getHeight());
        this.setMatrix(this.mCurrentMultiFrameLayout);
        MultiFrameLayoutBase multiFrameLayoutBase = this.mCurrentMultiFrameLayout;
        synchronized (multiFrameLayoutBase) {
            this.mCurrentMultiFrameLayout.onSurfaceChanged(n, n2);
        }
        this.mFramebuffer = new FramebufferController(n, n2);
        this.mFramebufferRenderer = new CopiedFrame(this.getContext(), this);
        this.mFramebufferRendererShader = ShaderProgramFactory.createCopyFrameShaderProgram(this.getContext());
        this.mFramebufferRenderer.setShaderProgram(this.mFramebufferRendererShader);
        if (this.mLifeCycleCallback != null) {
            this.mUiThreadHandler.post(new NotifySurfaceStateTask(NotifySurfaceStateTask.NotifyType.CHANGED, n, n2, this.mLifeCycleCallback));
        }
    }

    @Override
    public void onSurfaceCreated() {
        if (this.mLifeCycleCallback != null) {
            this.mUiThreadHandler.post(new NotifySurfaceStateTask(NotifySurfaceStateTask.NotifyType.CREATED, this.getWidth(), this.getHeight(), this.mLifeCycleCallback));
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void onSurfaceDestroyed() {
        MultiFrameLayoutBase multiFrameLayoutBase = this.mCurrentMultiFrameLayout;
        // MONITORENTER : multiFrameLayoutBase
        this.mCurrentMultiFrameLayout.releaseGlEglRelatedInstances();
        // MONITOREXIT : multiFrameLayoutBase
        if (this.mFramebuffer != null) {
            this.mFramebuffer.release();
        }
        if (this.mFramebufferRenderer != null) {
            this.mFramebufferRenderer.release();
            this.mFramebufferRenderer = null;
        }
        if (this.mFramebufferRendererShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mFramebufferRendererShader);
            this.mFramebufferRendererShader = 0;
        }
        if (this.mLifeCycleCallback == null) return;
        this.mUiThreadHandler.post(new NotifySurfaceStateTask(NotifySurfaceStateTask.NotifyType.DESTROYED, 0, 0, this.mLifeCycleCallback));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture object) {
        super.onSurfaceTextureUpdated((SurfaceTexture)object);
        if (this.mOnTakeGlTextureViewBitmapCallback == null) {
            return;
        }
        Object object2 = this.mGlLock;
        synchronized (object2) {
            if (this.mIsNeedToSkipGetBitmap) {
                this.mIsNeedToSkipGetBitmap = false;
                return;
            }
            if (this.mCaptureWorkBitmap != null) {
                this.getBitmap(this.mCaptureWorkBitmap);
                object = this.mCaptureWorkBitmap;
            } else {
                object = this.getBitmap();
            }
        }
        this.mOnTakeGlTextureViewBitmapCallback.onTakeGlTextureViewBitmap((Bitmap)object, this.mPhotoSavingRequest);
        this.mOnTakeGlTextureViewBitmapCallback = null;
        this.mPhotoSavingRequest = null;
        object = this.mGlLock;
        synchronized (object) {
            this.mCaptureWorkBitmap = null;
            return;
        }
    }

    public void release() {
        this.mLifeCycleCallback = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void render(MultiFrameLayoutBase multiFrameLayoutBase, float[] arrf, TransitionControllerUtil.ServoControlBase.Applier applier, TransitionControllerUtil.ServoControlBase.Applier applier2, TransitionControllerUtil.ServoControlBase.Applier applier3, FrameStruct.FrameStructVisibility frameStructVisibility) {
        multiFrameLayoutBase.enableFunctions();
        Iterator<FrameStruct> iterator = multiFrameLayoutBase.getFrameStructList().iterator();
        do {
            Object object;
            if (!iterator.hasNext()) {
                multiFrameLayoutBase.disableFunctions();
                return;
            }
            FrameStruct frameStruct = iterator.next();
            if (frameStruct.getVisibility() != frameStructVisibility) continue;
            boolean bl = false;
            Object object2 = object = frameStruct.getFrameBaseFactory().obtain();
            if (object == null) {
                frameStruct.getFrameBaseFactory().initialize(this);
                object2 = frameStruct.getFrameBaseFactory().obtain();
            }
            boolean bl2 = bl;
            if (frameStruct.isTextureRequiredToUpdate()) {
                object = frameStruct.getFrameData();
                if (object == null) {
                    bl2 = true;
                } else {
                    switch (.$SwitchMap$com$sonymobile$cameracommon$opengl$FrameData$ImageFormat[object.getImageFormat().ordinal()]) {
                        default: {
                            bl2 = bl;
                            break;
                        }
                        case 1: {
                            ((YuvFrame)object2).setTextureYvu(object.getFrameWidth(), object.getFrameHeight(), object.getByteArrayYvu(), object.getYOffset(), object.getVuOffset());
                            bl2 = bl;
                            break;
                        }
                        case 2: {
                            ((RgbFrame)object2).updataTexture(object.getBitmap());
                            bl2 = bl;
                        }
                    }
                }
            }
            object = frameStruct.getFrameId();
            object2.setGlobalMatrix(arrf);
            multiFrameLayoutBase.onObjectCoordTransformRequested((String)object, (RenderBase)object2);
            multiFrameLayoutBase.onObjectVertexUpdateRequested((String)object, (FrameBase)object2);
            if (applier3 != null) {
                applier3.apply((RenderBase)object2);
            }
            if (applier != null) {
                applier.apply((RenderBase)object2);
            }
            if (applier2 != null) {
                applier2.apply((RenderBase)object2);
            }
            if (!bl2) {
                object2.render();
            }
            multiFrameLayoutBase.setFrameMvpMatrix((String)object, object2.getLocalGlobalMatrix());
        } while (true);
    }

    protected void renderOnlyPreviewFrame(float[] arrf) {
        TransitionControllerUtil.ServoControlBase.Applier applier = this.mRotator.getCurrentConcreteApplier();
        TransitionControllerUtil.ServoControlBase.Applier applier2 = this.mTranslator.getCurrentConcreteApplier();
        this.render(this.mCurrentMultiFrameLayout, arrf, applier, applier2, null, FrameStruct.FrameStructVisibility.PREVIEW_ONLY);
        this.render(this.mCurrentMultiFrameLayout, arrf, applier, applier2, null, FrameStruct.FrameStructVisibility.COMMON_OVERLAY);
    }

    protected void renderOnlyVideoFrame(float[] arrf) {
        TransitionControllerUtil.ServoControlBase.Applier applier = this.mRotator.getCurrentConcreteApplier();
        TransitionControllerUtil.ServoControlBase.Applier applier2 = this.mTranslator.getCurrentConcreteApplier();
        this.render(this.mCurrentMultiFrameLayout, arrf, applier, applier2, null, FrameStruct.FrameStructVisibility.VIDEO_ONLY);
        this.render(this.mCurrentMultiFrameLayout, arrf, applier, applier2, null, FrameStruct.FrameStructVisibility.COMMON_OVERLAY);
    }

    protected void renderToFrameBuffer(float[] arrf) {
        TransitionControllerUtil.ServoControlBase.Applier applier = this.mRotator.getCurrentConcreteApplier();
        TransitionControllerUtil.ServoControlBase.Applier applier2 = this.mTranslator.getCurrentConcreteApplier();
        this.render(this.mCurrentMultiFrameLayout, arrf, applier, applier2, null, FrameStruct.FrameStructVisibility.COMMON);
    }

    @Override
    public void requestFrame(String string, FrameData frameData) {
        if (!this.isReady()) {
            return;
        }
        this.mCurrentMultiFrameLayout.updateFrameData(string, frameData);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void requestTakeGlTextureViewBitmap(GLRendererAccessor.OnTakeGlTextureViewBitmapCallback onTakeGlTextureViewBitmapCallback, PhotoSavingRequest photoSavingRequest, Bitmap bitmap) {
        if (onTakeGlTextureViewBitmapCallback != null) {
            Object object = this.mGlLock;
            synchronized (object) {
                this.mOnTakeGlTextureViewBitmapCallback = onTakeGlTextureViewBitmapCallback;
                this.mPhotoSavingRequest = photoSavingRequest;
                this.mCaptureWorkBitmap = bitmap;
                this.mIsNeedToSkipGetBitmap = true;
                return;
            }
        }
    }

    public void setGlobalRotate(float f, float f2, float f3) {
        this.mRotator.updateTargetCondition(f, f2, f3);
    }

    public void setGlobalTranslator(float f, float f2, float f3) {
        this.setGlobalTranslator(f, f2, f3, null);
    }

    public void setGlobalTranslator(float f, float f2, float f3, TransitionControllerUtil.ServoControlBase.ServoControlListener servoControlListener) {
        this.mTranslator.updateTargetCondition(f, f2, f3);
        this.mTranslator.setListener(servoControlListener);
    }

    protected void setMatrix(MultiFrameLayoutBase multiFrameLayoutBase) {
        multiFrameLayoutBase.setMatrix(this.mViewPort, EYE_POSITION, MultiFrameRender.getPerspectiveProjectionRootGlobalMatrix());
    }

    @Override
    public void setMirrored(String string, boolean bl) {
        if (!this.isReady()) {
            return;
        }
        this.mCurrentMultiFrameLayout.setMirrored(string, bl);
    }

    public void setMultiFrameLayout(MultiFrameLayoutBase multiFrameLayoutBase) {
        this.mCurrentMultiFrameLayout = multiFrameLayoutBase;
        this.setMatrix(multiFrameLayoutBase);
    }

    @Override
    public void setRenderer(GLTextureView.Renderer renderer) {
        throw new IllegalAccessError("Do not use this directly.");
    }

    public void setSurfaceClearColor(float f, float f2, float f3) {
        this.mClearColorRed = f;
        this.mClearColorGreen = f2;
        this.mClearColorBlue = f3;
    }

    public void setSurfaceClearColor(int n) {
        this.setSurfaceClearColor((float)Color.red(n) / 255.0f, (float)Color.green(n) / 255.0f, (float)Color.blue(n) / 255.0f);
    }

    @Override
    public void setSurfaceStateCallback(GLTextureView.SurfaceStateCallback surfaceStateCallback) {
        this.mLifeCycleCallback = surfaceStateCallback;
    }

    public void setUiOrientation(int n) {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void startVideoFrameRendering(EGLController eGLController, int n, int n2) {
        Object object = mFrameEncoderLock;
        synchronized (object) {
            this.mVideoFrameWidth = n;
            this.mVideoFrameHeight = n2;
            this.mVideoEncoderEglController = eGLController;
            this.mIsVideoFrameRendererReleaseRequired = false;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void stopVideoFrameRendering() {
        Object object = mFrameEncoderLock;
        synchronized (object) {
            this.mIsVideoFrameRendererReleaseRequired = true;
            return;
        }
    }

}

