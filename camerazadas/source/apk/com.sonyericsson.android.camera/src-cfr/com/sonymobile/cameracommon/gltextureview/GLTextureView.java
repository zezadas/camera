/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.gltextureview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import com.sonymobile.cameracommon.gltextureview.EGLConfigChooser_RGBA8888D16S8;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

public class GLTextureView
extends TextureView
implements TextureView.SurfaceTextureListener {
    protected static final boolean IS_EGL_DEBUG = false;
    protected static final boolean IS_GL_DEBUG = false;
    static final String TAG = GLTextureView.class.getSimpleName();
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

    public GLTextureView(Context context) {
        super(context);
        this.mRenderer = this.mDummyRenderer = new DummyRenderer();
        this.mStateCallback = this.mDummyStateCallback = new DummySurfaceStateListener();
        this.mOpenGlVersion = OpenGLVersion.OPEN_GL_ES_20;
        this.mEglConfigChooser = new EGLConfigChooser_RGBA8888D16S8();
        this.mRenderSyncType = RenderSyncType.ON_BACK;
        this.mEglCon = null;
        this.mGlLock = new Object();
        this.mBackgroundThread = null;
        this.mIsAlreadyInitialized = false;
        this.mIsAlreadyDestroyed = false;
        this.mIsSleep = false;
        this.mIsRenderRequested = false;
        this.mIsAlreadyScreenCleared = false;
        this.mActionQueue = new ConcurrentLinkedQueue<Runnable>();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        this.setSurfaceTextureListener(this);
    }

    public GLTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRenderer = this.mDummyRenderer = new DummyRenderer();
        this.mStateCallback = this.mDummyStateCallback = new DummySurfaceStateListener();
        this.mOpenGlVersion = OpenGLVersion.OPEN_GL_ES_20;
        this.mEglConfigChooser = new EGLConfigChooser_RGBA8888D16S8();
        this.mRenderSyncType = RenderSyncType.ON_BACK;
        this.mEglCon = null;
        this.mGlLock = new Object();
        this.mBackgroundThread = null;
        this.mIsAlreadyInitialized = false;
        this.mIsAlreadyDestroyed = false;
        this.mIsSleep = false;
        this.mIsRenderRequested = false;
        this.mIsAlreadyScreenCleared = false;
        this.mActionQueue = new ConcurrentLinkedQueue<Runnable>();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        this.setSurfaceTextureListener(this);
    }

    public GLTextureView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.mRenderer = this.mDummyRenderer = new DummyRenderer();
        this.mStateCallback = this.mDummyStateCallback = new DummySurfaceStateListener();
        this.mOpenGlVersion = OpenGLVersion.OPEN_GL_ES_20;
        this.mEglConfigChooser = new EGLConfigChooser_RGBA8888D16S8();
        this.mRenderSyncType = RenderSyncType.ON_BACK;
        this.mEglCon = null;
        this.mGlLock = new Object();
        this.mBackgroundThread = null;
        this.mIsAlreadyInitialized = false;
        this.mIsAlreadyDestroyed = false;
        this.mIsSleep = false;
        this.mIsRenderRequested = false;
        this.mIsAlreadyScreenCleared = false;
        this.mActionQueue = new ConcurrentLinkedQueue<Runnable>();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        this.setSurfaceTextureListener(this);
    }

    public static void logGlEgl(String string) {
        Log.e("TraceLog", "[GL/EGL] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    public static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    protected void clearAll() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(17664);
    }

    public EGLContext getEGLContext() {
        return this.mEglCon.getEGLContext();
    }

    public boolean isReady() {
        if (!this.mIsSleep) {
            return true;
        }
        return false;
    }

    public void onPause() {
        this.mIsSleep = true;
        this.mIsAlreadyScreenCleared = false;
    }

    public void onResume() {
        this.mActionQueue.clear();
        this.mIsSleep = false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int n, int n2) {
        if (n <= 0) return;
        if (n2 <= 0) {
            return;
        }
        Object object = this.mGlLock;
        // MONITORENTER : object
        this.mSurfaceWidth = n;
        this.mSurfaceHeight = n2;
        if (!this.mIsAlreadyInitialized) {
            this.mEglCon = new EGLController();
            this.mEglCon.initialize(this.mEglConfigChooser, this.mOpenGlVersion);
            this.mEglCon.onSurfaceTextureChanged(surfaceTexture);
            if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                this.mEglCon.enable();
                this.mStateCallback.onSurfaceCreated();
                this.mStateCallback.onSurfaceChanged(this.mSurfaceWidth, this.mSurfaceHeight);
                this.mEglCon.disable();
            }
        } else {
            this.mEglCon.onSurfaceTextureChanged(surfaceTexture);
            if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                this.mEglCon.enable();
                this.mStateCallback.onSurfaceChanged(n, n2);
                this.mEglCon.disable();
            }
        }
        this.mIsAlreadyInitialized = true;
        this.mIsAlreadyDestroyed = false;
        // MONITOREXIT : object
        if (this.mRenderSyncType != RenderSyncType.ON_BACK) return;
        this.mBackgroundThread = new BackgroundRenderingThread();
        this.mBackgroundThread.start();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture var1_1) {
        block20 : {
            var1_1 = this.mGlLock;
            // MONITORENTER : var1_1
            this.mIsAlreadyInitialized = false;
            this.mIsAlreadyDestroyed = true;
            this.mGlLock.notify();
            // MONITOREXIT : var1_1
            var1_1 = this.mGlLock;
            // MONITORENTER : var1_1
            if (this.mRenderSyncType != RenderSyncType.IN_SYNC) break block20;
            this.mEglCon.enable();
            this.mStateCallback.onSurfaceDestroyed();
            this.mEglCon.disable();
            {
                catch (Throwable var2_3) {
                    throw var2_3;
                }
            }
        }
        // MONITOREXIT : var1_1
        try {
            var1_1 = this.mBackgroundThread;
            if (var1_1 == null) ** GOTO lbl27
            try {
                this.mBackgroundThread.join();
            }
            catch (Exception var1_2) {
                var1_2.printStackTrace();
            }
lbl27: // 3 sources:
            this.mSurfaceWidth = 0;
            this.mSurfaceHeight = 0;
            return true;
        }
        finally {
            var1_1 = this.mGlLock;
            // MONITORENTER : var1_1
            this.mEglCon.release();
            // MONITOREXIT : var1_1
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int n, int n2) {
        if (n <= 0 || n2 <= 0) {
            return;
        }
        Object object = this.mGlLock;
        synchronized (object) {
            this.mSurfaceWidth = n;
            this.mSurfaceHeight = n2;
            this.mEglCon.onSurfaceTextureChanged(surfaceTexture);
            if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                this.mEglCon.enable();
                this.mStateCallback.onSurfaceChanged(this.mSurfaceWidth, this.mSurfaceHeight);
                this.mEglCon.disable();
            }
            return;
        }
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void recoverEglContext() {
        this.mEglCon.enable();
    }

    /*
     * Exception decompiling
     */
    public void requestAction(Runnable var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Exception decompiling
     */
    public void requestRender() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void requestSyncAction(Runnable runnable) {
        Object object = this.mGlLock;
        synchronized (object) {
            if (!this.mIsAlreadyInitialized) {
                throw new UnsupportedOperationException("GLTextureView not initialized");
            }
            this.mEglCon.enable();
            runnable.run();
            this.mEglCon.disable();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setRenderer(Renderer renderer) {
        Object object = this.mGlLock;
        synchronized (object) {
            this.mRenderer = renderer != null ? renderer : this.mDummyRenderer;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void setSurfaceStateCallback(SurfaceStateCallback surfaceStateCallback) {
        Object object = this.mGlLock;
        synchronized (object) {
            this.mStateCallback = surfaceStateCallback != null ? surfaceStateCallback : this.mDummyStateCallback;
            return;
        }
    }

    private class BackgroundRenderingThread
    extends Thread {
        private int mLocalHeight;
        private int mLocalWidth;

        private BackgroundRenderingThread() {
            this.mLocalWidth = 0;
            this.mLocalHeight = 0;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            Object object;
            this.setName("GL-RenderingThread");
            GLTextureView.this.mEglCon.enable();
            GLTextureView.this.mStateCallback.onSurfaceCreated();
            GLTextureView.this.mEglCon.disable();
            while (!(GLTextureView.this.mIsAlreadyDestroyed && GLTextureView.this.mActionQueue.isEmpty())) {
                if (!(GLTextureView.this.mIsSleep && GLTextureView.this.mActionQueue.isEmpty())) {
                    object = GLTextureView.this.mGlLock;
                    synchronized (object) {
                        boolean bl;
                        Runnable runnable;
                        GLTextureView.this.mEglCon.enable();
                        if (this.mLocalWidth != GLTextureView.this.mSurfaceWidth || this.mLocalHeight != GLTextureView.this.mSurfaceHeight) {
                            this.mLocalWidth = GLTextureView.this.mSurfaceWidth;
                            this.mLocalHeight = GLTextureView.this.mSurfaceHeight;
                            GLTextureView.this.mStateCallback.onSurfaceChanged(this.mLocalWidth, this.mLocalHeight);
                        }
                        if (GLTextureView.this.mIsRenderRequested) {
                            GLTextureView.this.mRenderer.onDrawFrame();
                            GLTextureView.this.mIsRenderRequested = false;
                            GLES20.glFlush();
                            GLES20.glFinish();
                            GLTextureView.this.mEglCon.onDrawFrameFinished();
                        }
                        if (!(GLTextureView.this.mActionQueue.isEmpty() || (runnable = (Runnable)GLTextureView.this.mActionQueue.poll()) == null)) {
                            runnable.run();
                        }
                        GLTextureView.this.mEglCon.disable();
                        if (!(!GLTextureView.this.mActionQueue.isEmpty() || GLTextureView.this.mIsRenderRequested || (bl = GLTextureView.this.mIsAlreadyDestroyed))) {
                            try {
                                GLTextureView.this.mGlLock.wait(1000);
                            }
                            catch (InterruptedException var3_5) {
                                var3_5.printStackTrace();
                            }
                        }
                        continue;
                    }
                }
                object = GLTextureView.this.mGlLock;
                synchronized (object) {
                    GLTextureView.this.mEglCon.enable();
                    GLTextureView.this.clearAll();
                    GLTextureView.this.mEglCon.onDrawFrameFinished();
                    GLTextureView.this.mEglCon.disable();
                }
                try {
                    Thread.sleep(100);
                }
                catch (Exception var2_3) {
                    var2_3.printStackTrace();
                }
            }
            if (!GLTextureView.this.mIsAlreadyScreenCleared) {
                object = GLTextureView.this.mGlLock;
                synchronized (object) {
                    GLTextureView.this.mEglCon.enable();
                    GLTextureView.this.mStateCallback.onSurfaceDestroyed();
                    GLTextureView.this.mEglCon.disable();
                    return;
                }
            }
        }
    }

    private static final class DummyRenderer
    implements Renderer {
        private DummyRenderer() {
        }

        @Override
        public void onDrawFrame() {
        }
    }

    private static final class DummySurfaceStateListener
    implements SurfaceStateCallback {
        private DummySurfaceStateListener() {
        }

        @Override
        public void onSurfaceChanged(int n, int n2) {
        }

        @Override
        public void onSurfaceCreated() {
        }

        @Override
        public void onSurfaceDestroyed() {
        }
    }

    public static interface EGLConfigChooser {
        public EGLConfig chooseConfig(EGL10 var1, EGLDisplay var2, OpenGLVersion var3);
    }

    public static enum OpenGLVersion {
        OPEN_GL_ES_11,
        OPEN_GL_ES_20;
        

        private OpenGLVersion() {
        }
    }

    private static enum RenderSyncType {
        IN_SYNC,
        ON_BACK;
        

        private RenderSyncType() {
        }
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

