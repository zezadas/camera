/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EdgeEffectCompat {
    private static final EdgeEffectImpl IMPL;
    private Object mEdgeEffect;

    static;

    public EdgeEffectCompat(Context var1);

    public boolean draw(Canvas var1);

    public void finish();

    public boolean isFinished();

    public boolean onAbsorb(int var1);

    public boolean onPull(float var1);

    public boolean onRelease();

    public void setSize(int var1, int var2);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseEdgeEffectImpl
    implements EdgeEffectImpl {
        BaseEdgeEffectImpl();

        @Override
        public boolean draw(Object var1, Canvas var2);

        @Override
        public void finish(Object var1);

        @Override
        public boolean isFinished(Object var1);

        @Override
        public Object newEdgeEffect(Context var1);

        @Override
        public boolean onAbsorb(Object var1, int var2);

        @Override
        public boolean onPull(Object var1, float var2);

        @Override
        public boolean onRelease(Object var1);

        @Override
        public void setSize(Object var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class EdgeEffectIcsImpl
    implements EdgeEffectImpl {
        EdgeEffectIcsImpl();

        @Override
        public boolean draw(Object var1, Canvas var2);

        @Override
        public void finish(Object var1);

        @Override
        public boolean isFinished(Object var1);

        @Override
        public Object newEdgeEffect(Context var1);

        @Override
        public boolean onAbsorb(Object var1, int var2);

        @Override
        public boolean onPull(Object var1, float var2);

        @Override
        public boolean onRelease(Object var1);

        @Override
        public void setSize(Object var1, int var2, int var3);
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

