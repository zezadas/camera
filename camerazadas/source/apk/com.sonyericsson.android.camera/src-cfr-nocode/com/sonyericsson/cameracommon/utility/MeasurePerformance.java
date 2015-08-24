/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MeasurePerformance {
    private static final String FILE = "camera_perform.csv";
    private static final String TAG = "MeasurePerformance";
    public static final String TAG_DEVICE = "[DEVICE]";
    public static final String TAG_SEQ = "[SEQ]";
    public static final String TAG_SHOT = "[SHOT]";
    public static final String TAG_STARTUP = "[START UP]";
    public static final String TAG_SURFACE = "[SURFACE]";
    public static final String TAG_TASK = "[TASK]";
    private static List<MeasureResource> mResourceList;
    private static List<MeasureTime> mTimeList;
    private static Map<String, FpsStatistics> sFpsStatisticsMap;
    private static MeasurePerformance sInstance;
    private static boolean sMemoryFlag;
    private static boolean sTimerFlag;
    private long originalTime;

    static;

    protected MeasurePerformance();

    public static void debugShowPreviewFPS(String var0);

    private static void init();

    private static final boolean isLastMeasuredTime(List<MeasureTime> var0, int var1);

    public static final void measureResource(int var0);

    public static final void measureResource(String var0);

    private static final void measureTime(PerformanceIds var0, MeasureKind var1, String var2);

    public static final void measureTime(PerformanceIds var0, boolean var1);

    public static final void measureTime(PerformanceIds var0, boolean var1, String var2);

    public static final void measureTimeOverwrite(PerformanceIds var0, boolean var1);

    public static final void outResult();

    public static final void outResultDelay(int var0);

    public static final void setMemoryFlag(boolean var0);

    private static String setResultResource(List<MeasureResource> var0);

    private static String setResultTime(List<MeasureTime> var0);

    public static final void setTimerFlag(boolean var0);

    private static void writeFile(String var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class FpsStatistics {
        private int mFrameCount;
        private long mLastFpsTime;
        private int mLastFrameCount;

        private FpsStatistics();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class MeasureAmountTime {
        public int count;
        public PerformanceIds id;
        public long total;

        private MeasureAmountTime();

        /* synthetic */ MeasureAmountTime( var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class MeasureKind
    extends Enum<MeasureKind> {
        private static final /* synthetic */ MeasureKind[] $VALUES;
        public static final /* enum */ MeasureKind MEASURE_END;
        public static final /* enum */ MeasureKind MEASURE_START;
        public static final /* enum */ MeasureKind MEASURE_START_OVERWRITE;

        static;

        private MeasureKind();

        public static MeasureKind valueOf(String var0);

        public static MeasureKind[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class MeasureResource {
        public long mFreeMemory;
        public String mTag;
        public long mTotalMemory;

        private MeasureResource();

        /* synthetic */ MeasureResource( var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class MeasureTime {
        public String additionalInfo;
        public PerformanceIds id;
        public MeasureKind kind;
        public long time;

        private MeasureTime();

        /* synthetic */ MeasureTime( var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class OutResultDelayTask
    implements Runnable {
        private OutResultDelayTask();

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class PerformanceIds
    extends Enum<PerformanceIds> {
        private static final /* synthetic */ PerformanceIds[] $VALUES;
        public static final /* enum */ PerformanceIds CREATE_EFFECT_RENDERER_PACK;
        public static final /* enum */ PerformanceIds HANDLE_EVENT;
        public static final /* enum */ PerformanceIds INFLATE_VIEWS;
        public static final /* enum */ PerformanceIds LAUNCH;
        public static final /* enum */ PerformanceIds LAUNCH_TO_DISPATCH_DRAW;
        public static final /* enum */ PerformanceIds LAZY_INITIALIZATION_TASK;
        public static final /* enum */ PerformanceIds MSG_ON_STORE_CALLBACK_END;
        public static final /* enum */ PerformanceIds MSG_ON_STORE_CALLBACK_START;
        public static final /* enum */ PerformanceIds NOTIFY_STORE_COMPLETE;
        public static final /* enum */ PerformanceIds ON_CREATE;
        public static final /* enum */ PerformanceIds ON_DESTROY;
        public static final /* enum */ PerformanceIds ON_NEW_INTENT;
        public static final /* enum */ PerformanceIds ON_PAUSE;
        public static final /* enum */ PerformanceIds ON_RESTART;
        public static final /* enum */ PerformanceIds ON_RESUME;
        public static final /* enum */ PerformanceIds ON_RESUME_TO_SURFACE_CHANGED;
        public static final /* enum */ PerformanceIds ON_START;
        public static final /* enum */ PerformanceIds ON_STOP;
        public static final /* enum */ PerformanceIds OPEN_CAMERA_DEVICE_TASK;
        public static final /* enum */ PerformanceIds RECORDING_START;
        public static final /* enum */ PerformanceIds RECORDING_STOP;
        public static final /* enum */ PerformanceIds RESUME_TO_LAUNCH;
        public static final /* enum */ PerformanceIds SETTUP_RELATED_TO_SURFACE_SIZE;
        public static final /* enum */ PerformanceIds SETUP_CAMERA_DEVICE_TASK;
        public static final /* enum */ PerformanceIds SET_CONTENT_VIEWS;
        public static final /* enum */ PerformanceIds STARTUP_TIME;
        public static final /* enum */ PerformanceIds STORE_DATA_INTO_SD_CARD;
        public static final /* enum */ PerformanceIds STOT_TO_ON_PICT_TAKEN;
        public static final /* enum */ PerformanceIds STOT_TO_SHOT;
        public static final /* enum */ PerformanceIds SURFACE_CHANGED;
        public static final /* enum */ PerformanceIds SURFACE_CHANGED_TO_LAUNCH;
        public static final /* enum */ PerformanceIds SWITCH_CAMERA_DEVICE;
        public static final /* enum */ PerformanceIds UPDATE_REMAIN;
        String tag;

        static;

        private PerformanceIds(String var3);

        public static PerformanceIds valueOf(String var0);

        public static PerformanceIds[] values();
    }

}

