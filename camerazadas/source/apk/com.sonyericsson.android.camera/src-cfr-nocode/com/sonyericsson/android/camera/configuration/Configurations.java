/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.Context;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ConversationReader;
import com.sonyericsson.android.camera.configuration.IntentReader;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Configurations {
    private static final String TAG = "Configurations";
    static final boolean sHasShutterKey;
    private static boolean sIsFaceIdentificationEnabled;
    private static boolean sIsLogForOperatorsEnabled;
    private ConversationReader mConversationReader;
    private ExecutorService mExecutor;
    private IntentReader mIntentReader;
    private Future<ConversationReader> mReadConversationProviderFuture;
    private SharedPreferencesUtil mSharedPrefs;

    static;

    public Configurations();

    public static boolean hasShutterKey();

    public static boolean isFaceIdentificationEnabled();

    public static boolean isLogForOperatorsEnabled();

    private void joinInitTask();

    public static void setLogForOperators(boolean var0);

    public void countUpFrontCameraLocationHelpShownTimes();

    public void countUpZoomHelpShownTimes();

    public Map<String, String> getCommonSettingsMap();

    public String getCropValue();

    public int getFrontCameraHelpShownTimes();

    public MmsOptions getMmsOptions();

    public Map<String, String> getParameterSetStringMap(boolean var1, int var2, int var3);

    public long getVideoMaxDurationInMillisecs();

    public long getVideoMaxFileSizeInBytes();

    public long getVideoQuality();

    public int getZoomHelpShownTimes();

    public boolean hasLimitForSizeOrDuration();

    public void init(CameraActivity var1);

    public boolean isFirstRun();

    public boolean isMmsSupported();

    public boolean isNeedToShowFrontCameraLocationHelp();

    public boolean isNeedToShowZoomHelp();

    public void onResume(CameraActivity var1);

    public void setCommonSettingsMap(Map<String, String> var1);

    public void setFirstRun(boolean var1);

    public void setParameterSetStringMap(boolean var1, int var2, int var3, Map<String, String> var4);

    public void shutdownInitTask();

    public void startInitTask(Context var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ReadConversationProviderTask
    implements Callable<ConversationReader> {
        private final Context mContext;

        public ReadConversationProviderTask(Context var1);

        @Override
        public ConversationReader call();
    }

}

