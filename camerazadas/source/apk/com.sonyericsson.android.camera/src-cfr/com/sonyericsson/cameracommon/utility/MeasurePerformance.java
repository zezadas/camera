/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.os.Environment;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    static {
        sTimerFlag = false;
        sMemoryFlag = false;
        mTimeList = Collections.synchronizedList(new ArrayList());
        mResourceList = Collections.synchronizedList(new ArrayList());
        sInstance = new MeasurePerformance();
        sFpsStatisticsMap = new HashMap<String, FpsStatistics>();
    }

    protected MeasurePerformance() {
        MeasurePerformance.init();
        this.originalTime = System.currentTimeMillis();
    }

    public static void debugShowPreviewFPS(String string) {
    }

    private static void init() {
        mTimeList.clear();
        mResourceList.clear();
    }

    private static final boolean isLastMeasuredTime(List<MeasureTime> list, int n) {
        MeasureTime measureTime = list.get(n);
        ++n;
        for (; n < list.size(); ++n) {
            MeasureTime measureTime2 = list.get(n);
            if (measureTime2.kind != measureTime.kind || measureTime2.id != measureTime.id) continue;
            return false;
        }
        return true;
    }

    public static final void measureResource(int n) {
        if (!sMemoryFlag) {
            return;
        }
        MeasureResource measureResource = new MeasureResource();
        Runtime runtime = Runtime.getRuntime();
        long l = runtime.totalMemory();
        long l2 = runtime.freeMemory();
        measureResource.mTotalMemory = l;
        measureResource.mFreeMemory = l2;
        mResourceList.add(measureResource);
    }

    public static final void measureResource(String string) {
        if (!sMemoryFlag) {
            return;
        }
        MeasureResource measureResource = new MeasureResource();
        Runtime runtime = Runtime.getRuntime();
        long l = runtime.totalMemory();
        long l2 = runtime.freeMemory();
        measureResource.mTag = string;
        measureResource.mTotalMemory = l;
        measureResource.mFreeMemory = l2;
        mResourceList.add(measureResource);
    }

    private static final void measureTime(PerformanceIds performanceIds, MeasureKind measureKind, String string) {
        if (!sTimerFlag) {
            return;
        }
        long l = System.currentTimeMillis();
        MeasureTime measureTime = new MeasureTime();
        measureTime.id = performanceIds;
        measureTime.additionalInfo = string;
        measureTime.time = l;
        measureTime.kind = measureKind;
        mTimeList.add(measureTime);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static final void measureTime(PerformanceIds performanceIds, boolean bl) {
        MeasureKind measureKind = bl ? MeasureKind.MEASURE_START : MeasureKind.MEASURE_END;
        MeasurePerformance.measureTime(performanceIds, measureKind, "");
    }

    /*
     * Enabled aggressive block sorting
     */
    public static final void measureTime(PerformanceIds performanceIds, boolean bl, String string) {
        MeasureKind measureKind = bl ? MeasureKind.MEASURE_START : MeasureKind.MEASURE_END;
        MeasurePerformance.measureTime(performanceIds, measureKind, string);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static final void measureTimeOverwrite(PerformanceIds performanceIds, boolean bl) {
        MeasureKind measureKind = bl ? MeasureKind.MEASURE_START_OVERWRITE : MeasureKind.MEASURE_END;
        MeasurePerformance.measureTime(performanceIds, measureKind, "");
    }

    public static final void outResult() {
        if (!(sTimerFlag || sMemoryFlag)) {
            return;
        }
        Object object = new ArrayList<MeasureTime>(mTimeList);
        ArrayList<MeasureResource> arrayList = new ArrayList<MeasureResource>(mResourceList);
        String string = "";
        MeasurePerformance.init();
        if (sTimerFlag) {
            string = "" + MeasurePerformance.setResultTime(object);
        }
        object = string;
        if (sMemoryFlag) {
            object = string + MeasurePerformance.setResultResource(arrayList);
        }
        MeasurePerformance.writeFile((String)object);
    }

    public static final void outResultDelay(int n) {
    }

    public static final void setMemoryFlag(boolean bl) {
        sMemoryFlag = bl;
    }

    private static String setResultResource(List<MeasureResource> list) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("---Measure Resource Start---\n");
        stringBuilder.append("ID,Total,Used,free\n");
        for (int i = 0; list.size() > i; ++i) {
            String string = list.get((int)i).mTag;
            long l = list.get((int)i).mTotalMemory;
            long l2 = list.get((int)i).mFreeMemory;
            stringBuilder.append(string + "," + l + "," + (l - l2) + "," + l2 + "\n");
        }
        stringBuilder.append("---Measure Resource End---\n");
        return stringBuilder.toString();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String setResultTime(List<MeasureTime> object) {
        int n;
        Object object2 = new MeasureTime[PerformanceIds.values().length];
        MeasureAmountTime[] arrmeasureAmountTime = new MeasureAmountTime[PerformanceIds.values().length];
        for (n = 0; n < PerformanceIds.values().length; ++n) {
            arrmeasureAmountTime[n] = new MeasureAmountTime();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("---Measure Time Start---\n");
        stringBuilder.append("[PERFORMANCE]ID,Time[ms],Comment\n");
        for (n = 0; n < object.size(); ++n) {
            MeasureTime measureTime = (MeasureTime)object.get(n);
            if (measureTime.kind == MeasureKind.MEASURE_START) {
                if (object2[measureTime.id.ordinal()] != null) continue;
                object2[measureTime.id.ordinal()] = measureTime;
                continue;
            }
            if (measureTime.kind == MeasureKind.MEASURE_START_OVERWRITE) {
                object2[measureTime.id.ordinal()] = measureTime;
                continue;
            }
            if (object2[measureTime.id.ordinal()] == null) continue;
            arrmeasureAmountTime[measureTime.id.ordinal()].id = measureTime.id;
            MeasureAmountTime measureAmountTime = arrmeasureAmountTime[measureTime.id.ordinal()];
            measureAmountTime.total+=measureTime.time - object2[measureTime.id.ordinal()].time;
            measureAmountTime = arrmeasureAmountTime[measureTime.id.ordinal()];
            ++measureAmountTime.count;
            if (!MeasurePerformance.isLastMeasuredTime(object, n)) continue;
            stringBuilder.append("[PERFORMANCE]");
            stringBuilder.append(measureTime.id.tag);
            stringBuilder.append(measureTime.id.name());
            stringBuilder.append(", ");
            stringBuilder.append(Long.toString(measureTime.time - object2[measureTime.id.ordinal()].time));
            stringBuilder.append(", ");
            stringBuilder.append(measureTime.additionalInfo);
            stringBuilder.append(object2[measureTime.id.ordinal()].additionalInfo);
            stringBuilder.append("\n");
            object2[measureTime.id.ordinal()] = null;
        }
        stringBuilder.append("[PERFORMANCE]---Measure Time End---\n\n");
        stringBuilder.append("---Measure Time Dump Start---\n");
        stringBuilder.append("ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n");
        for (n = 0; n < object.size(); ++n) {
            object2 = (MeasureTime)object.get(n);
            stringBuilder.append(object2.id.name());
            stringBuilder.append(", ");
            stringBuilder.append((Object)object2.kind);
            stringBuilder.append(", ");
            stringBuilder.append(Long.toString(object2.time));
            stringBuilder.append(", ");
            stringBuilder.append(Long.toString(object2.time - MeasurePerformance.sInstance.originalTime));
            stringBuilder.append(", ");
            stringBuilder.append(object2.additionalInfo);
            stringBuilder.append("\n");
        }
        n = 0;
        do {
            if (n >= PerformanceIds.values().length) {
                stringBuilder.append("---Measure Time Dump End---\n");
                return stringBuilder.toString();
            }
            object = arrmeasureAmountTime[n];
            if (object.id != null) {
                stringBuilder.append("AmountTime: ");
                stringBuilder.append(object.id.name());
                stringBuilder.append(" total: ");
                stringBuilder.append(Long.toString(object.total));
                stringBuilder.append(", count: ");
                stringBuilder.append(Long.toString(object.count));
                stringBuilder.append(", avalage: ");
                stringBuilder.append(Long.toString(object.total / (long)object.count));
                stringBuilder.append("\n");
            }
            ++n;
        } while (true);
    }

    public static final void setTimerFlag(boolean bl) {
        sTimerFlag = bl;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private static void writeFile(String var0) {
        var1_8 = new File(Environment.getExternalStorageDirectory() + "/" + "camera_perform.csv");
        if (!var1_8.exists()) {
            var1_8.createNewFile();
        }
        var4_12 = null;
        var1_8 = null;
        var3_13 = null;
        var2_14 = new OutputStreamWriter(new FileOutputStream(Environment.getExternalStorageDirectory() + "/" + "camera_perform.csv"));
        var2_14.write((String)var0);
        if (var2_14 == null) return;
        try {
            var2_14.flush();
            var2_14.close();
            return;
        }
        catch (Exception var0_2) {
            CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + var0_2);
            return;
        }
        catch (IOException var0_1) {
            CameraLogger.e("MeasurePerformance", "Create output file failed");
            return;
        }
        catch (FileNotFoundException var2_15) {
            var0 = var3_13;
            ** GOTO lbl58
            catch (IOException var2_16) {
                var0 = var4_12;
                ** GOTO lbl35
                catch (Throwable var0_7) {
                    var1_8 = var2_14;
                    ** GOTO lbl-1000
                }
                catch (IOException var1_10) {
                    var0 = var2_14;
                    var2_14 = var1_10;
                }
lbl35: // 2 sources:
                var1_8 = var0;
                try {
                    CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + var2_14);
                    if (var0 == null) return;
                }
                catch (Throwable var0_5) lbl-1000: // 2 sources:
                {
                    if (var1_8 == null) throw var0_6;
                    try {
                        var1_8.flush();
                        var1_8.close();
                    }
                    catch (Exception var1_9) {
                        CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + var1_9);
                        throw var0_6;
                    }
                    throw var0_6;
                }
                try {
                    var0.flush();
                    var0.close();
                    return;
                }
                catch (Exception var0_4) {
                    CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + var0_4);
                    return;
                }
                catch (FileNotFoundException var1_11) {
                    var0 = var2_14;
                    var2_14 = var1_11;
                }
lbl58: // 2 sources:
                var1_8 = var0;
                CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + var2_14);
                if (var0 == null) return;
                try {
                    var0.flush();
                    var0.close();
                    return;
                }
                catch (Exception var0_3) {
                    CameraLogger.e("MeasurePerformance", "[MeasurePerformance::writeFile]:Error = " + var0_3);
                    return;
                }
            }
        }
    }

    private static class FpsStatistics {
        private int mFrameCount = 0;
        private long mLastFpsTime = 0;
        private int mLastFrameCount = 0;

        private FpsStatistics() {
        }
    }

    private static class MeasureAmountTime {
        public int count;
        public PerformanceIds id;
        public long total;

        private MeasureAmountTime() {
        }
    }

    static enum MeasureKind {
        MEASURE_START,
        MEASURE_START_OVERWRITE,
        MEASURE_END;
        

        private MeasureKind() {
        }
    }

    private static class MeasureResource {
        public long mFreeMemory;
        public String mTag;
        public long mTotalMemory;

        private MeasureResource() {
        }
    }

    private static class MeasureTime {
        public String additionalInfo;
        public PerformanceIds id;
        public MeasureKind kind;
        public long time;

        private MeasureTime() {
        }
    }

    private static class OutResultDelayTask
    implements Runnable {
        private OutResultDelayTask() {
        }

        @Override
        public void run() {
            MeasurePerformance.outResult();
        }
    }

    public static enum PerformanceIds {
        ON_CREATE("[SEQ][START UP]"),
        ON_NEW_INTENT("[START UP]"),
        ON_START("[START UP]"),
        ON_RESTART("[START UP]"),
        ON_RESUME("[SEQ][START UP]"),
        ON_PAUSE("[START UP]"),
        ON_STOP("[START UP]"),
        ON_DESTROY("[START UP]"),
        NOTIFY_STORE_COMPLETE(""),
        MSG_ON_STORE_CALLBACK_START(""),
        MSG_ON_STORE_CALLBACK_END(""),
        HANDLE_EVENT(""),
        SET_CONTENT_VIEWS(""),
        INFLATE_VIEWS("[TASK]"),
        STARTUP_TIME("[SEQ]"),
        ON_RESUME_TO_SURFACE_CHANGED("[SURFACE]"),
        SURFACE_CHANGED("[SURFACE]"),
        SURFACE_CHANGED_TO_LAUNCH("[SURFACE]"),
        RESUME_TO_LAUNCH("[SEQ]"),
        LAUNCH("[SEQ]"),
        LAUNCH_TO_DISPATCH_DRAW("[SEQ]"),
        OPEN_CAMERA_DEVICE_TASK("[TASK][DEVICE]"),
        SWITCH_CAMERA_DEVICE("[DEVICE]"),
        SETUP_CAMERA_DEVICE_TASK("[TASK]"),
        CREATE_EFFECT_RENDERER_PACK("[TASK]"),
        LAZY_INITIALIZATION_TASK("[TASK]"),
        SETTUP_RELATED_TO_SURFACE_SIZE("[TASK]"),
        STOT_TO_SHOT("[SHOT]"),
        STOT_TO_ON_PICT_TAKEN("[SHOT]"),
        RECORDING_START("[SHOT]"),
        RECORDING_STOP("[SHOT]"),
        STORE_DATA_INTO_SD_CARD(""),
        UPDATE_REMAIN("");
        
        String tag;

        private PerformanceIds(String string2) {
            this.tag = string2;
        }
    }

}

