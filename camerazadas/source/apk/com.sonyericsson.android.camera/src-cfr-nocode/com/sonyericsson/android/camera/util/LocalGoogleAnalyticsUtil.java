/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.util;

import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonymobile.cameracommon.googleanalytics.parameters.CustomDimension;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.googleanalytics.parameters.Screen;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LocalGoogleAnalyticsUtil {
    private static final String TAG;
    private static final LocalGoogleAnalyticsUtil sInstance;
    private final Map<ParameterKey, BasisAndChange<ParameterValue>> mSettingsPhoto;
    private final Map<ParameterKey, BasisAndChange<ParameterValue>> mSettingsVideo;

    static;

    private LocalGoogleAnalyticsUtil();

    public static LocalGoogleAnalyticsUtil getInstance();

    private Screen getScreen(CapturingMode var1, boolean var2);

    private Map<ParameterKey, BasisAndChange<ParameterValue>> getSettingsMap(Event.Category var1);

    private void sendEventSettings(Event.Category var1);

    private void setSettingsPhotoVideo(BasisAndChange<ParameterValue> var1, Event.Category var2);

    public void clear();

    public void sendEventSettings();

    public void sendView(BaseActivity var1, BaseActivity.LaunchedBy var2, CapturingMode var3, boolean var4);

    public void sendView(CustomDimension.GALaunchedBy var1, CapturingMode var2, boolean var3);

    public void setSettingsValue(ParameterValue var1, ParameterValue var2, CapturingMode var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class BasisAndChange<T> {
        private T mBasis;
        private T mChange;

        public BasisAndChange(T var1, T var2);

        static /* synthetic */ Object access$000(BasisAndChange var0);

        static /* synthetic */ Object access$002(BasisAndChange var0, Object var1);

        static /* synthetic */ Object access$100(BasisAndChange var0);

        boolean hasChange();
    }

}

