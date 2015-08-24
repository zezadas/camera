/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;
import android.view.animation.Interpolator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ViewPropertyAnimatorCompat {
    static final ViewPropertyAnimatorCompatImpl IMPL;
    private static final String TAG = "ViewAnimatorCompat";
    private WeakReference<View> mView;

    static;

    ViewPropertyAnimatorCompat(View var1);

    public ViewPropertyAnimatorCompat alpha(float var1);

    public ViewPropertyAnimatorCompat alphaBy(float var1);

    public void cancel();

    public long getDuration();

    public Interpolator getInterpolator();

    public long getStartDelay();

    public ViewPropertyAnimatorCompat rotation(float var1);

    public ViewPropertyAnimatorCompat rotationBy(float var1);

    public ViewPropertyAnimatorCompat rotationX(float var1);

    public ViewPropertyAnimatorCompat rotationXBy(float var1);

    public ViewPropertyAnimatorCompat rotationY(float var1);

    public ViewPropertyAnimatorCompat rotationYBy(float var1);

    public ViewPropertyAnimatorCompat scaleX(float var1);

    public ViewPropertyAnimatorCompat scaleXBy(float var1);

    public ViewPropertyAnimatorCompat scaleY(float var1);

    public ViewPropertyAnimatorCompat scaleYBy(float var1);

    public ViewPropertyAnimatorCompat setDuration(long var1);

    public ViewPropertyAnimatorCompat setInterpolator(Interpolator var1);

    public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener var1);

    public ViewPropertyAnimatorCompat setStartDelay(long var1);

    public void start();

    public ViewPropertyAnimatorCompat translationX(float var1);

    public ViewPropertyAnimatorCompat translationXBy(float var1);

    public ViewPropertyAnimatorCompat translationY(float var1);

    public ViewPropertyAnimatorCompat translationYBy(float var1);

    public ViewPropertyAnimatorCompat withEndAction(Runnable var1);

    public ViewPropertyAnimatorCompat withLayer();

    public ViewPropertyAnimatorCompat withStartAction(Runnable var1);

    public ViewPropertyAnimatorCompat x(float var1);

    public ViewPropertyAnimatorCompat xBy(float var1);

    public ViewPropertyAnimatorCompat y(float var1);

    public ViewPropertyAnimatorCompat yBy(float var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseViewPropertyAnimatorCompatImpl
    implements ViewPropertyAnimatorCompatImpl {
        BaseViewPropertyAnimatorCompatImpl();

        @Override
        public void alpha(View var1, float var2);

        @Override
        public void alphaBy(View var1, float var2);

        @Override
        public void cancel(View var1);

        @Override
        public long getDuration(View var1);

        @Override
        public Interpolator getInterpolator(View var1);

        @Override
        public long getStartDelay(View var1);

        @Override
        public void rotation(View var1, float var2);

        @Override
        public void rotationBy(View var1, float var2);

        @Override
        public void rotationX(View var1, float var2);

        @Override
        public void rotationXBy(View var1, float var2);

        @Override
        public void rotationY(View var1, float var2);

        @Override
        public void rotationYBy(View var1, float var2);

        @Override
        public void scaleX(View var1, float var2);

        @Override
        public void scaleXBy(View var1, float var2);

        @Override
        public void scaleY(View var1, float var2);

        @Override
        public void scaleYBy(View var1, float var2);

        @Override
        public void setDuration(View var1, long var2);

        @Override
        public void setInterpolator(View var1, Interpolator var2);

        @Override
        public void setListener(View var1, ViewPropertyAnimatorListener var2);

        @Override
        public void setStartDelay(View var1, long var2);

        @Override
        public void start(View var1);

        @Override
        public void translationX(View var1, float var2);

        @Override
        public void translationXBy(View var1, float var2);

        @Override
        public void translationY(View var1, float var2);

        @Override
        public void translationYBy(View var1, float var2);

        @Override
        public void withEndAction(View var1, Runnable var2);

        @Override
        public void withLayer(View var1);

        @Override
        public void withStartAction(View var1, Runnable var2);

        @Override
        public void x(View var1, float var2);

        @Override
        public void xBy(View var1, float var2);

        @Override
        public void y(View var1, float var2);

        @Override
        public void yBy(View var1, float var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ICSViewPropertyAnimatorCompatImpl
    extends BaseViewPropertyAnimatorCompatImpl {
        ICSViewPropertyAnimatorCompatImpl();

        @Override
        public void alpha(View var1, float var2);

        @Override
        public void alphaBy(View var1, float var2);

        @Override
        public void cancel(View var1);

        @Override
        public long getDuration(View var1);

        @Override
        public long getStartDelay(View var1);

        @Override
        public void rotation(View var1, float var2);

        @Override
        public void rotationBy(View var1, float var2);

        @Override
        public void rotationX(View var1, float var2);

        @Override
        public void rotationXBy(View var1, float var2);

        @Override
        public void rotationY(View var1, float var2);

        @Override
        public void rotationYBy(View var1, float var2);

        @Override
        public void scaleX(View var1, float var2);

        @Override
        public void scaleXBy(View var1, float var2);

        @Override
        public void scaleY(View var1, float var2);

        @Override
        public void scaleYBy(View var1, float var2);

        @Override
        public void setDuration(View var1, long var2);

        @Override
        public void setInterpolator(View var1, Interpolator var2);

        @Override
        public void setListener(View var1, ViewPropertyAnimatorListener var2);

        @Override
        public void setStartDelay(View var1, long var2);

        @Override
        public void start(View var1);

        @Override
        public void translationX(View var1, float var2);

        @Override
        public void translationXBy(View var1, float var2);

        @Override
        public void translationY(View var1, float var2);

        @Override
        public void translationYBy(View var1, float var2);

        @Override
        public void withEndAction(View var1, Runnable var2);

        @Override
        public void withLayer(View var1);

        @Override
        public void withStartAction(View var1, Runnable var2);

        @Override
        public void x(View var1, float var2);

        @Override
        public void xBy(View var1, float var2);

        @Override
        public void y(View var1, float var2);

        @Override
        public void yBy(View var1, float var2);

    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class JBMr2ViewPropertyAnimatorCompatImpl
    extends JBViewPropertyAnimatorCompatImpl {
        JBMr2ViewPropertyAnimatorCompatImpl();

        @Override
        public Interpolator getInterpolator(View var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class JBViewPropertyAnimatorCompatImpl
    extends ICSViewPropertyAnimatorCompatImpl {
        JBViewPropertyAnimatorCompatImpl();

        @Override
        public void withEndAction(View var1, Runnable var2);

        @Override
        public void withLayer(View var1);

        @Override
        public void withStartAction(View var1, Runnable var2);
    }

    static interface ViewPropertyAnimatorCompatImpl {
        public void alpha(View var1, float var2);

        public void alphaBy(View var1, float var2);

        public void cancel(View var1);

        public long getDuration(View var1);

        public Interpolator getInterpolator(View var1);

        public long getStartDelay(View var1);

        public void rotation(View var1, float var2);

        public void rotationBy(View var1, float var2);

        public void rotationX(View var1, float var2);

        public void rotationXBy(View var1, float var2);

        public void rotationY(View var1, float var2);

        public void rotationYBy(View var1, float var2);

        public void scaleX(View var1, float var2);

        public void scaleXBy(View var1, float var2);

        public void scaleY(View var1, float var2);

        public void scaleYBy(View var1, float var2);

        public void setDuration(View var1, long var2);

        public void setInterpolator(View var1, Interpolator var2);

        public void setListener(View var1, ViewPropertyAnimatorListener var2);

        public void setStartDelay(View var1, long var2);

        public void start(View var1);

        public void translationX(View var1, float var2);

        public void translationXBy(View var1, float var2);

        public void translationY(View var1, float var2);

        public void translationYBy(View var1, float var2);

        public void withEndAction(View var1, Runnable var2);

        public void withLayer(View var1);

        public void withStartAction(View var1, Runnable var2);

        public void x(View var1, float var2);

        public void xBy(View var1, float var2);

        public void y(View var1, float var2);

        public void yBy(View var1, float var2);
    }

}

