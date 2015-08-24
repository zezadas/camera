/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.support.v4.widget.EdgeEffectCompatIcs;

public class EdgeEffectCompat {
    private static final EdgeEffectImpl IMPL;
    private Object mEdgeEffect;

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new EdgeEffectIcsImpl();
            return;
        }
        IMPL = new BaseEdgeEffectImpl();
    }

    public EdgeEffectCompat(Context context) {
        this.mEdgeEffect = IMPL.newEdgeEffect(context);
    }

    public boolean draw(Canvas canvas) {
        return IMPL.draw(this.mEdgeEffect, canvas);
    }

    public void finish() {
        IMPL.finish(this.mEdgeEffect);
    }

    public boolean isFinished() {
        return IMPL.isFinished(this.mEdgeEffect);
    }

    public boolean onAbsorb(int n) {
        return IMPL.onAbsorb(this.mEdgeEffect, n);
    }

    public boolean onPull(float f) {
        return IMPL.onPull(this.mEdgeEffect, f);
    }

    public boolean onRelease() {
        return IMPL.onRelease(this.mEdgeEffect);
    }

    public void setSize(int n, int n2) {
        IMPL.setSize(this.mEdgeEffect, n, n2);
    }

    static class BaseEdgeEffectImpl
    implements EdgeEffectImpl {
        BaseEdgeEffectImpl() {
        }

        @Override
        public boolean draw(Object object, Canvas canvas) {
            return false;
        }

        @Override
        public void finish(Object object) {
        }

        @Override
        public boolean isFinished(Object object) {
            return true;
        }

        @Override
        public Object newEdgeEffect(Context context) {
            return null;
        }

        @Override
        public boolean onAbsorb(Object object, int n) {
            return false;
        }

        @Override
        public boolean onPull(Object object, float f) {
            return false;
        }

        @Override
        public boolean onRelease(Object object) {
            return false;
        }

        @Override
        public void setSize(Object object, int n, int n2) {
        }
    }

    static class EdgeEffectIcsImpl
    implements EdgeEffectImpl {
        EdgeEffectIcsImpl() {
        }

        @Override
        public boolean draw(Object object, Canvas canvas) {
            return EdgeEffectCompatIcs.draw(object, canvas);
        }

        @Override
        public void finish(Object object) {
            EdgeEffectCompatIcs.finish(object);
        }

        @Override
        public boolean isFinished(Object object) {
            return EdgeEffectCompatIcs.isFinished(object);
        }

        @Override
        public Object newEdgeEffect(Context context) {
            return EdgeEffectCompatIcs.newEdgeEffect(context);
        }

        @Override
        public boolean onAbsorb(Object object, int n) {
            return EdgeEffectCompatIcs.onAbsorb(object, n);
        }

        @Override
        public boolean onPull(Object object, float f) {
            return EdgeEffectCompatIcs.onPull(object, f);
        }

        @Override
        public boolean onRelease(Object object) {
            return EdgeEffectCompatIcs.onRelease(object);
        }

        @Override
        public void setSize(Object object, int n, int n2) {
            EdgeEffectCompatIcs.setSize(object, n, n2);
        }
    }

    static interface EdgeEffectImpl {
        public boolean draw(Object var1, Canvas var2);

        public void finish(Object var1);

        public boolean isFinished(Object var1);

        public Object newEdgeEffect(Context var1);

        public boolean onAbsorb(Object var1, int var2);

        public boolean onPull(Object var1, float var2);

        public boolean onRelease(Object var1);

        public void setSize(Object var1, int var2, int var3);
    }

}

