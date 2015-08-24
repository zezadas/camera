/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ScaleGestureDetectorCompat {
    static final ScaleGestureDetectorImpl IMPL;

    static;

    private ScaleGestureDetectorCompat();

    public static boolean isQuickScaleEnabled(Object var0);

    public static void setQuickScaleEnabled(Object var0, boolean var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class BaseScaleGestureDetectorImpl
    implements ScaleGestureDetectorImpl {
        private BaseScaleGestureDetectorImpl();

        /* synthetic */ BaseScaleGestureDetectorImpl( var1);

        @Override
        public boolean isQuickScaleEnabled(Object var1);

        @Override
        public void setQuickScaleEnabled(Object var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ScaleGestureDetectorCompatKitKatImpl
    implements ScaleGestureDetectorImpl {
        private ScaleGestureDetectorCompatKitKatImpl();

        /* synthetic */ ScaleGestureDetectorCompatKitKatImpl( var1);

        @Override
        public boolean isQuickScaleEnabled(Object var1);

        @Override
        public void setQuickScaleEnabled(Object var1, boolean var2);
    }

    static interface ScaleGestureDetectorImpl {
        public boolean isQuickScaleEnabled(Object var1);

        public void setQuickScaleEnabled(Object var1, boolean var2);
    }

}

