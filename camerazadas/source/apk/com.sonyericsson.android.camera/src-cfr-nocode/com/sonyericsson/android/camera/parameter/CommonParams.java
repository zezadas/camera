/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.TouchBlock;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CommonParams {
    private static final CommonParams sInstance;
    public ParameterValueHolder<AutoUpload> mAutoUpload;
    public ParameterValueHolder<DestinationToSave> mDestinationToSave;
    public ParameterValueHolder<FastCapture> mFastCapture;
    public ParameterValueHolder<Geotag> mGeotag;
    public ParameterValueHolder<ShutterSound> mShutterSound;
    public ParameterValueHolder<TouchBlock> mTouchBlock;
    public ParameterValueHolder<TouchCapture> mTouchCapture;
    public ParameterValueHolder<VolumeKey> mVolumeKey;

    static;

    private CommonParams();

    public static CommonParams getInstance();

    public void init(CameraActivity var1);

    public void update();

    public void update(CameraActivity var1);

    public List<ParameterValueHolder<?>> values();

}

