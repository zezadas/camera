/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.hardware.display;

import android.content.Context;
import android.os.Build;
import android.support.v4.hardware.display.DisplayManagerJellybeanMr1;
import android.view.Display;
import android.view.WindowManager;
import java.util.WeakHashMap;

public abstract class DisplayManagerCompat {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    private static final WeakHashMap<Context, DisplayManagerCompat> sInstances = new WeakHashMap();

    DisplayManagerCompat() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static DisplayManagerCompat getInstance(Context context) {
        WeakHashMap<Context, DisplayManagerCompat> weakHashMap = sInstances;
        synchronized (weakHashMap) {
            DisplayManagerCompat displayManagerCompat;
            DisplayManagerCompat displayManagerCompat2 = displayManagerCompat = sInstances.get(context);
            if (displayManagerCompat == null) {
                displayManagerCompat2 = Build.VERSION.SDK_INT >= 17 ? new JellybeanMr1Impl(context) : new LegacyImpl(context);
                sInstances.put(context, displayManagerCompat2);
            }
            return displayManagerCompat2;
        }
    }

    public abstract Display getDisplay(int var1);

    public abstract Display[] getDisplays();

    public abstract Display[] getDisplays(String var1);

    private static class JellybeanMr1Impl
    extends DisplayManagerCompat {
        private final Object mDisplayManagerObj;

        public JellybeanMr1Impl(Context context) {
            this.mDisplayManagerObj = DisplayManagerJellybeanMr1.getDisplayManager(context);
        }

        @Override
        public Display getDisplay(int n) {
            return DisplayManagerJellybeanMr1.getDisplay(this.mDisplayManagerObj, n);
        }

        @Override
        public Display[] getDisplays() {
            return DisplayManagerJellybeanMr1.getDisplays(this.mDisplayManagerObj);
        }

        @Override
        public Display[] getDisplays(String string) {
            return DisplayManagerJellybeanMr1.getDisplays(this.mDisplayManagerObj, string);
        }
    }

    private static class LegacyImpl
    extends DisplayManagerCompat {
        private final WindowManager mWindowManager;

        public LegacyImpl(Context context) {
            this.mWindowManager = (WindowManager)context.getSystemService("window");
        }

        @Override
        public Display getDisplay(int n) {
            Display display = this.mWindowManager.getDefaultDisplay();
            if (display.getDisplayId() == n) {
                return display;
            }
            return null;
        }

        @Override
        public Display[] getDisplays() {
            return new Display[]{this.mWindowManager.getDefaultDisplay()};
        }

        @Override
        public Display[] getDisplays(String string) {
            if (string == null) {
                return this.getDisplays();
            }
            return new Display[0];
        }
    }

}

