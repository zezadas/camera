/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.view;

import android.view.ViewConfiguration;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ViewConfigurationCompat {
    static final ViewConfigurationVersionImpl IMPL;

    static;

    public ViewConfigurationCompat();

    public static int getScaledPagingTouchSlop(ViewConfiguration var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    static class BaseViewConfigurationVersionImpl
    implements ViewConfigurationVersionImpl {
        BaseViewConfigurationVersionImpl();

        @Override
        public int getScaledPagingTouchSlop(ViewConfiguration var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class FroyoViewConfigurationVersionImpl
    implements ViewConfigurationVersionImpl {
        FroyoViewConfigurationVersionImpl();

        @Override
        public int getScaledPagingTouchSlop(ViewConfiguration var1);
    }

    static interface ViewConfigurationVersionImpl {
        public int getScaledPagingTouchSlop(ViewConfiguration var1);
    }

}

