/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.opengl;

import com.sonymobile.cameracommon.opengl.AlphaBlendable;
import com.sonymobile.cameracommon.opengl.RenderBase;

public abstract class TransitionControllerUtil {

    public static class FrictionModel {
        private final float mFrictionRate;
        private final float mGravityAccel = 9.80665f;
        private final float mInitialVeloc;
        private boolean mIsStopped = false;
        private float mLastPosit = 0.0f;
        private float mLastVeloc = 3.4028235E38f;
        private final long mStartTimestamp = System.currentTimeMillis();

        public FrictionModel(float f, float f2) {
            this.mFrictionRate = f;
            this.mInitialVeloc = f2;
        }

        public float getCurrentDistance() {
            float f;
            float f2 = (float)(System.currentTimeMillis() - this.mStartTimestamp) / 1000.0f;
            float f3 = f = this.mFrictionRate * 9.80665f;
            if (0.0f < this.mInitialVeloc) {
                f3 = f * -1.0f;
            }
            f = this.mInitialVeloc + f3 * f2;
            if (Math.abs(this.mLastVeloc) < Math.abs(f)) {
                this.mIsStopped = true;
                return this.mLastPosit;
            }
            this.mLastVeloc = f;
            this.mLastPosit = this.mInitialVeloc * f2 + f3 * f2 * f2 / 2.0f;
            return this.mLastPosit;
        }

        public boolean isStopped() {
            return this.mIsStopped;
        }

        public void release() {
        }
    }

    public static class ServoControlAlphaBlendor {
        private float mActualAlpha;
        private final float mGainP;
        private final float mInitialAlpha;
        private AlphaBlendable mTarget = null;
        private float mTargetAlpha;

        public ServoControlAlphaBlendor(float f, float f2) {
            this.mInitialAlpha = f;
            this.resetActualAlpha();
            this.mTargetAlpha = this.mInitialAlpha;
            this.mGainP = f2;
        }

        public void resetActualAlpha() {
            this.mActualAlpha = this.mInitialAlpha;
        }

        public void setTargetElement(AlphaBlendable alphaBlendable) {
            this.mTarget = alphaBlendable;
        }

        public void update() {
            float f = this.mTargetAlpha;
            float f2 = this.mActualAlpha;
            this.mActualAlpha+=this.mGainP * (f - f2);
            this.mTarget.setAlpha(this.mActualAlpha);
        }

        public void updateTargetAlpha(float f) {
            this.mTargetAlpha = f;
        }
    }

    public static abstract class ServoControlBase {
        protected static final int CONDITION_LENGTH = 3;
        protected static final int INTEGRAL_SAMPLE_LENGTH = 6;
        protected final float[] mActualCondition = new float[3];
        protected ApplierStrategy mApplierStrategy = null;
        protected float mGainD;
        protected float mGainI;
        protected float mGainP;
        protected final float[] mInitialCondition = new float[3];
        protected final float[] mIntegratedDeltas = new float[3];
        protected float[] mLastDifferences = new float[2];
        private ServoControlListener mListener = null;
        protected final float[] mTargetCondition = new float[3];

        public ServoControlBase(float f, float f2, float f3) {
            this.mInitialCondition[0] = f;
            this.mInitialCondition[1] = f2;
            this.mInitialCondition[2] = f3;
            this.resetActualCondition();
            this.mTargetCondition[0] = this.mInitialCondition[0];
            this.mTargetCondition[1] = this.mInitialCondition[1];
            this.mTargetCondition[2] = this.mInitialCondition[2];
            for (int i = 0; i < 3; ++i) {
                this.mIntegratedDeltas[i] = 0.0f;
            }
            this.mLastDifferences[0] = 0.0f;
            this.mLastDifferences[1] = 0.0f;
        }

        /*
         * Enabled aggressive block sorting
         */
        private void checkTransitionComplete() {
            for (int i = 0; i < 3; ++i) {
                if (Math.abs(this.mTargetCondition[i] - this.mActualCondition[i]) > 0.001f) return;
                {
                    continue;
                }
            }
            if (this.mListener == null) {
                return;
            }
            this.mListener.onCompleted();
            this.mListener = null;
        }

        public Applier getCurrentConcreteApplier() {
            return new Applier(this.mActualCondition[0], this.mActualCondition[1], this.mActualCondition[2], this.mApplierStrategy);
        }

        public void resetActualCondition() {
            this.mActualCondition[0] = this.mInitialCondition[0];
            this.mActualCondition[1] = this.mInitialCondition[1];
            this.mActualCondition[2] = this.mInitialCondition[2];
            for (int i = 0; i < 3; ++i) {
                this.mIntegratedDeltas[i] = 0.0f;
            }
            this.mLastDifferences[0] = 0.0f;
            this.mLastDifferences[1] = 0.0f;
        }

        public void setGains(float f, float f2, float f3) {
            this.mGainP = f;
            this.mGainI = f2;
            this.mGainD = f3;
        }

        public void setListener(ServoControlListener servoControlListener) {
            this.mListener = servoControlListener;
        }

        public void update() {
            for (int i = 0; i < 3; ++i) {
                float f = this.mTargetCondition[i] - this.mActualCondition[i];
                float[] arrf = this.mActualCondition;
                arrf[i] = arrf[i] + this.mGainP * f;
                float f2 = this.mIntegratedDeltas[i] / 6.0f;
                this.mIntegratedDeltas[i] = this.mIntegratedDeltas[i] + f - f2;
                arrf = this.mActualCondition;
                arrf[i] = arrf[i] + this.mIntegratedDeltas[i] * this.mGainI;
                if (this.mLastDifferences[0] != 0.0f && this.mLastDifferences[1] != 0.0f) {
                    f2 = this.mLastDifferences[0];
                    float f3 = this.mLastDifferences[0];
                    float f4 = this.mLastDifferences[1];
                    arrf = this.mActualCondition;
                    arrf[i] = arrf[i] + this.mGainD * (f - f2 - (f3 - f4));
                }
                this.mLastDifferences[1] = this.mLastDifferences[0];
                this.mLastDifferences[0] = f;
            }
            this.checkTransitionComplete();
        }

        public void updateTargetCondition(float f, float f2, float f3) {
            this.mTargetCondition[0] = f;
            this.mTargetCondition[1] = f2;
            this.mTargetCondition[2] = f3;
        }

        public static class Applier {
            protected final float[] mActualCondition = new float[3];
            private final ApplierStrategy mApplierStrategy;

            public Applier(float f, float f2, float f3, ApplierStrategy applierStrategy) {
                this.mActualCondition[0] = f;
                this.mActualCondition[1] = f2;
                this.mActualCondition[2] = f3;
                this.mApplierStrategy = applierStrategy;
            }

            public void apply(RenderBase renderBase) {
                this.mApplierStrategy.apply(this.mActualCondition[0], this.mActualCondition[1], this.mActualCondition[2], renderBase);
            }
        }

        protected static interface ApplierStrategy {
            public void apply(float var1, float var2, float var3, RenderBase var4);
        }

        public static interface ServoControlListener {
            public void onCompleted();
        }

    }

    public static class ServoControlRotator
    extends ServoControlBase {
        public ServoControlRotator(float f, float f2, float f3) {
            super(f, f2, f3);
            this.mApplierStrategy = new ApplierStrategyImpl();
        }

        private static class ApplierStrategyImpl
        implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl() {
            }

            @Override
            public void apply(float f, float f2, float f3, RenderBase renderBase) {
                renderBase.rotate(f, f2, f3);
            }
        }

    }

    public static class ServoControlScalor
    extends ServoControlBase {
        public ServoControlScalor(float f, float f2, float f3) {
            super(f, f2, f3);
            this.mApplierStrategy = new ApplierStrategyImpl();
        }

        private static class ApplierStrategyImpl
        implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl() {
            }

            @Override
            public void apply(float f, float f2, float f3, RenderBase renderBase) {
                renderBase.scale(f, f2, f3);
            }
        }

    }

    public static class ServoControlTranslator
    extends ServoControlBase {
        public ServoControlTranslator(float f, float f2, float f3) {
            super(f, f2, f3);
            this.mApplierStrategy = new ApplierStrategyImpl();
        }

        private static class ApplierStrategyImpl
        implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl() {
            }

            @Override
            public void apply(float f, float f2, float f3, RenderBase renderBase) {
                renderBase.translate(f, f2, f3);
            }
        }

    }

    private static abstract class TimeControlBase {
        protected float mDifX;
        protected float mDifY;
        protected float mDifZ;
        protected float mFromX;
        protected float mFromY;
        protected float mFromZ;
        protected RenderBase mTarget = null;
        protected float mToX;
        protected float mToY;
        protected float mToZ;

        public TimeControlBase(float f, float f2, float f3, float f4, float f5, float f6) {
            this.mFromX = f;
            this.mFromY = f2;
            this.mFromZ = f3;
            this.mToX = f4;
            this.mToY = f5;
            this.mToZ = f6;
            this.mDifX = this.mToX - this.mFromX;
            this.mDifY = this.mToY - this.mFromY;
            this.mDifZ = this.mToZ - this.mFromZ;
        }

        public void setFromCondition(float f, float f2, float f3) {
            this.mFromX = f;
            this.mFromY = f2;
            this.mFromZ = f3;
            this.mDifX = this.mToX - this.mFromX;
            this.mDifY = this.mToY - this.mFromY;
            this.mDifZ = this.mToZ - this.mFromZ;
        }

        public void setTargetRenderBase(RenderBase renderBase) {
            this.mTarget = renderBase;
        }

        public void setToCondition(float f, float f2, float f3) {
            this.mToX = f;
            this.mToY = f2;
            this.mToZ = f3;
            this.mDifX = this.mToX - this.mFromX;
            this.mDifY = this.mToY - this.mFromY;
            this.mDifZ = this.mToZ - this.mFromZ;
        }

        abstract void update(float var1);
    }

    public static class TimeControlRotator
    extends TimeControlBase {
        public TimeControlRotator(float f, float f2, float f3, float f4, float f5, float f6) {
            super(f, f2, f3, f4, f5, f6);
        }

        @Override
        public void update(float f) {
            float f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
            f = f2;
            if (1.0f < f2) {
                f = 1.0f;
            }
            this.mTarget.rotate(this.mFromX + this.mDifX * f, this.mFromY + this.mDifY * f, this.mFromZ + this.mDifZ * f);
        }
    }

    public static class TimeControlScalor
    extends TimeControlBase {
        public TimeControlScalor(float f, float f2, float f3, float f4, float f5, float f6) {
            super(f, f2, f3, f4, f5, f6);
        }

        @Override
        public void update(float f) {
            float f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
            f = f2;
            if (1.0f < f2) {
                f = 1.0f;
            }
            this.mTarget.scale(this.mFromX + this.mDifX * f, this.mFromY + this.mDifY * f, this.mFromZ + this.mDifZ * f);
        }
    }

    public static class TimeControlTranslator
    extends TimeControlBase {
        public TimeControlTranslator(float f, float f2, float f3, float f4, float f5, float f6) {
            super(f, f2, f3, f4, f5, f6);
        }

        @Override
        public void update(float f) {
            float f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
            f = f2;
            if (1.0f < f2) {
                f = 1.0f;
            }
            this.mTarget.translate(this.mFromX + this.mDifX * f, this.mFromY + this.mDifY * f, this.mFromZ + this.mDifZ * f);
        }
    }

}

