/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ParameterManager {
    private static final String TAG;
    private final CameraActivity mCameraActivity;
    private Parameters mCurrentParameters;
    private Map<CapturingMode, Parameters> mMap;
    protected boolean mSettingsApplied;
    private SharedPreferencesUtil mSharedPrefs;

    static;

    public ParameterManager(CameraActivity var1, CapturingMode var2, StorageController var3);

    private void applyChangedValues(List<ParameterValue> var1);

    private void changeParameters(CapturingMode var1);

    public static ParameterValueHolder<DestinationToSave> getDestinationToSave();

    private void setCommonParams(ParameterValue var1);

    public void applyCapturingMode(boolean var1, CapturingMode var2);

    public void changeCapturingMode(CapturingMode var1);

    public ParameterValue get(ParameterKey var1);

    public ParameterValue[] getOptions(ParameterKey var1);

    public Parameters getParameters();

    public Parameters getParameters(CapturingMode var1);

    public int getSelfTimerType(ControllerEventSource var1);

    public boolean isSelfTimerOn();

    public boolean isVideoSelfTimerOn();

    public void release();

    public void reset();

    public void set(ParameterValue var1);

    public void suspend();

    public void update(CapturingMode var1);

    public void updateAutoUpload();

    public void updateVideoOption();

}

