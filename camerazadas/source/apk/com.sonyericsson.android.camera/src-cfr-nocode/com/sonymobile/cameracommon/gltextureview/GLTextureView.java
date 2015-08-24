/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import java.util.Queue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class GLTextureView
extends TextureView
implements TextureView.SurfaceTextureListener {
    protected static final boolean IS_EGL_DEBUG = false;
    protected static final boolean IS_GL_DEBUG = false;
    static final String TAG;
    private Queue<Runnable> mActionQueue;
    private Thread mBackgroundThread;
    private final DummyRenderer mDummyRenderer;
    private final DummySurfaceStateListener mDummyStateCallback;
    private EGLController mEglCon;
    private EGLConfigChooser mEglConfigChooser;
    protected final Object mGlLock;
    private boolean mIsAlreadyDestroyed;
    private boolean mIsAlreadyInitialized;
    private boolean mIsAlreadyScreenCleared;
    private boolean mIsRenderRequested;
    private boolean mIsSleep;
    protected OpenGLVersion mOpenGlVersion;
    protected RenderSyncType mRenderSyncType;
    private Renderer mRenderer;
    private SurfaceStateCallback mStateCallback;
    private int mSurfaceHeight;
    private int mSurfaceWidth;

    static;

    public GLTextureView(Context var1);

    public GLTextureView(Context var1, AttributeSet var2);

    public GLTextureView(Context var1, AttributeSet var2, int var3);

    static /* synthetic */ boolean access$1000(GLTextureView var0);

    static /* synthetic */ boolean access$1002(GLTextureView var0, boolean var1);

    static /* synthetic */ Renderer access$1100(GLTextureView var0);

    static /* synthetic */ boolean access$1200(GLTextureView var0);

    static /* synthetic */ EGLController access$300(GLTextureView var0);

    static /* synthetic */ SurfaceStateCallback access$400(GLTextureView var0);

    static /* synthetic */ boolean access$500(GLTextureView var0);

    static /* synthetic */ Queue access$600(GLTextureView var0);

    static /* synthetic */ boolean access$700(GLTextureView var0);

    static /* synthetic */ int access$800(GLTextureView var0);

    static /* synthetic */ int access$900(GLTextureView var0);

    public static void logGlEgl(String var0);

    public static void logPerformance(String var0);

    protected void clearAll();

    public EGLContext getEGLContext();

    public boolean isReady();

    public void onPause();

    public void onResume();

    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture var1, int var2, int var3);

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture var1);

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture var1, int var2, int var3);

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture var1);

    public void recoverEglContext();

    public void requestAction(Runnable var1);

    public void requestRender();

    public void requestSyncAction(Runnable var1);

    public void setRenderer(Renderer var1);

    public void setSurfaceStateCallback(SurfaceStateCallback var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class BackgroundRenderingThread
    extends Thread {
        private int mLocalHeight;
        private int mLocalWidth;
        final /* synthetic */ GLTextureView this$0;

        private BackgroundRenderingThread(GLTextureView var1);

        /* synthetic */ BackgroundRenderingThread(GLTextureView var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class DummyRenderer
    implements Renderer {
        private DummyRenderer();

        /* synthetic */ DummyRenderer( var1);

        @Override
        public void onDrawFrame();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class DummySurfaceStateListener
    implements SurfaceStateCallback {
        private DummySurfaceStateListener();

        /* synthetic */ DummySurfaceStateListener( var1);

        @Override
        public void onSurfaceChanged(int var1, int var2);

        @Override
        public void onSurfaceCreated();

        @Override
        public void onSurfaceDestroyed();
    }

    public static interface EGLConfigChooser {
        public EGLConfig chooseConfig(EGL10 var1, EGLDisplay var2, OpenGLVersion var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class OpenGLVersion
    extends Enum<OpenGLVersion> {
        private static final /* synthetic */ OpenGLVersion[] $VALUES;
        public static final /* enum */ OpenGLVersion OPEN_GL_ES_11;
        public static final /* enum */ OpenGLVersion OPEN_GL_ES_20;

        static;

        private OpenGLVersion();

        public static OpenGLVersion valueOf(String var0);

        public static OpenGLVersion[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class RenderSyncType
    extends Enum<RenderSyncType> {
        private static final /* synthetic */ RenderSyncType[] $VALUES;
        public static final /* enum */ RenderSyncType IN_SYNC;
        public static final /* enum */ RenderSyncType ON_BACK;

        static;

        private RenderSyncType();

        public static RenderSyncType valueOf(String var0);

        public static RenderSyncType[] values();
    }

    public static interface Renderer {
        public void onDrawFrame();
    }

    public static interface SurfaceStateCallback {
        public void onSurfaceChanged(int var1, int var2);

        public void onSurfaceCreated();

        public void onSurfaceDestroyed();
    }

}

