/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.hardware.display;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;
import java.util.WeakHashMap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, DisplayManagerCompat> sInstances;

    static;

    DisplayManagerCompat();

    public static DisplayManagerCompat getInstance(Context var0);

    public abstract Display getDisplay(int var1);

    public abstract Display[] getDisplays();

    public abstract Display[] getDisplays(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class JellybeanMr1Impl
    extends DisplayManagerCompat {
        private final Object mDisplayManagerObj;

        public JellybeanMr1Impl(Context var1);

        @Override
        public Display getDisplay(int var1);

        @Override
        public Display[] getDisplays();

        @Override
        public Display[] getDisplays(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class LegacyImpl
    extends DisplayManagerCompat {
        private final WindowManager mWindowManager;

        public LegacyImpl(Context var1);

        @Override
        public Display getDisplay(int var1);

        @Override
        public Display[] getDisplays();

        @Override
        public Display[] getDisplays(String var1);
    }

}

