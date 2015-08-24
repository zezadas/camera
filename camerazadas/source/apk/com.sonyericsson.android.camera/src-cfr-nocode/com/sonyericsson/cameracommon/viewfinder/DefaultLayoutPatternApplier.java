/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import com.sonyericsson.cameracommon.viewfinder.BaseViewFinderLayout;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.LayoutPatternApplier;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DefaultLayoutPatternApplier
implements LayoutPatternApplier {
    public static final int D = 3;
    public static final int H = 2;
    public static final int N = 0;
    public static final int S = 1;
    protected BaseViewFinderLayout mLayout;
    protected Map<LayoutPattern, Map<Component, Integer>> mPatternComponentMap;

    public DefaultLayoutPatternApplier();

    @Override
    public void apply(LayoutPattern var1);

    protected void set(LayoutPattern var1, int[] var2);

    @Override
    public void setup(BaseViewFinderLayout var1, boolean var2);

    protected void setupLayoutPattern();

    protected void setupVisibilities(boolean var1);

    protected static interface Component {
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected static final class DefaultComponent
    extends Enum<DefaultComponent>
    implements Component {
        private static final /* synthetic */ DefaultComponent[] $VALUES;
        public static final /* enum */ DefaultComponent BALLOON_TIPS;
        public static final /* enum */ DefaultComponent CAPTURE_BUTTON;
        public static final /* enum */ DefaultComponent CAPTURE_METHOD_INDICATORS;
        public static final /* enum */ DefaultComponent CONTENT_VIEW;
        public static final /* enum */ DefaultComponent GEOTAG_INDICATORS;
        public static final /* enum */ DefaultComponent MODE_INDICATORS;
        public static final /* enum */ DefaultComponent MODE_SELECTOR_BUTTON;
        public static final /* enum */ DefaultComponent RECORDING_PROGRESS;
        public static final /* enum */ DefaultComponent RIGHT_BOTTOM_CAPTURE_BUTTON;
        public static final /* enum */ DefaultComponent STORAGE_INDICATORS;
        public static final /* enum */ DefaultComponent THERMAL_INDICATORS;
        public static final /* enum */ DefaultComponent ZOOM_BAR;

        static;

        private DefaultComponent();

        public static DefaultComponent valueOf(String var0);

        public static DefaultComponent[] values();
    }

}

