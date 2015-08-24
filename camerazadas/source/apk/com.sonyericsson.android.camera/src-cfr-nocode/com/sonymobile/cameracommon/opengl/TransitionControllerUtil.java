/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import com.sonymobile.cameracommon.opengl.AlphaBlendable;
import com.sonymobile.cameracommon.opengl.RenderBase;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class TransitionControllerUtil {
    public TransitionControllerUtil();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class FrictionModel {
        private final float mFrictionRate;
        private final float mGravityAccel;
        private final float mInitialVeloc;
        private boolean mIsStopped;
        private float mLastPosit;
        private float mLastVeloc;
        private final long mStartTimestamp;

        public FrictionModel(float var1, float var2);

        public float getCurrentDistance();

        public boolean isStopped();

        public void release();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class ServoControlAlphaBlendor {
        private float mActualAlpha;
        private final float mGainP;
        private final float mInitialAlpha;
        private AlphaBlendable mTarget;
        private float mTargetAlpha;

        public ServoControlAlphaBlendor(float var1, float var2);

        public void resetActualAlpha();

        public void setTargetElement(AlphaBlendable var1);

        public void update();

        public void updateTargetAlpha(float var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static abstract class ServoControlBase {
        protected static final int CONDITION_LENGTH = 3;
        protected static final int INTEGRAL_SAMPLE_LENGTH = 6;
        protected final float[] mActualCondition;
        protected ApplierStrategy mApplierStrategy;
        protected float mGainD;
        protected float mGainI;
        protected float mGainP;
        protected final float[] mInitialCondition;
        protected final float[] mIntegratedDeltas;
        protected float[] mLastDifferences;
        private ServoControlListener mListener;
        protected final float[] mTargetCondition;

        public ServoControlBase(float var1, float var2, float var3);

        private void checkTransitionComplete();

        public Applier getCurrentConcreteApplier();

        public void resetActualCondition();

        public void setGains(float var1, float var2, float var3);

        public void setListener(ServoControlListener var1);

        public void update();

        public void updateTargetCondition(float var1, float var2, float var3);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        public static class Applier {
            protected final float[] mActualCondition;
            private final ApplierStrategy mApplierStrategy;

            public Applier(float var1, float var2, float var3, ApplierStrategy var4);

            public void apply(RenderBase var1);
        }

        protected static interface ApplierStrategy {
            public void apply(float var1, float var2, float var3, RenderBase var4);
        }

        public static interface ServoControlListener {
            public void onCompleted();
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ServoControlRotator
    extends ServoControlBase {
        public ServoControlRotator(float var1, float var2, float var3);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class ApplierStrategyImpl
        implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl();

            /* synthetic */ ApplierStrategyImpl( var1);

            @Override
            public void apply(float var1, float var2, float var3, RenderBase var4);
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ServoControlScalor
    extends ServoControlBase {
        public ServoControlScalor(float var1, float var2, float var3);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class ApplierStrategyImpl
        implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl();

            /* synthetic */ ApplierStrategyImpl( var1);

            @Override
            public void apply(float var1, float var2, float var3, RenderBase var4);
        }

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class ServoControlTranslator
    extends ServoControlBase {
        public ServoControlTranslator(float var1, float var2, float var3);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private static class ApplierStrategyImpl
        implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl();

            /* synthetic */ ApplierStrategyImpl( var1);

            @Override
            public void apply(float var1, float var2, float var3, RenderBase var4);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class TimeControlBase {
        protected float mDifX;
        protected float mDifY;
        protected float mDifZ;
        protected float mFromX;
        protected float mFromY;
        protected float mFromZ;
        protected RenderBase mTarget;
        protected float mToX;
        protected float mToY;
        protected float mToZ;

        public TimeControlBase(float var1, float var2, float var3, float var4, float var5, float var6);

        public void setFromCondition(float var1, float var2, float var3);

        public void setTargetRenderBase(RenderBase var1);

        public void setToCondition(float var1, float var2, float var3);

        abstract void update(float var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class TimeControlRotator
    extends TimeControlBase {
        public TimeControlRotator(float var1, float var2, float var3, float var4, float var5, float var6);

        @Override
        public void update(float var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class TimeControlScalor
    extends TimeControlBase {
        public TimeControlScalor(float var1, float var2, float var3, float var4, float var5, float var6);

        @Override
        public void update(float var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class TimeControlTranslator
    extends TimeControlBase {
        public TimeControlTranslator(float var1, float var2, float var3, float var4, float var5, float var6);

        @Override
        public void update(float var1);
    }

}

