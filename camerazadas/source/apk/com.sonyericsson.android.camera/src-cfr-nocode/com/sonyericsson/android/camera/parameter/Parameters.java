/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.TouchBlock;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.util.SharedPreferencesUtil;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public abstract class Parameters
implements ParameterApplicable {
    public static final String TAG = "Parameters";
    public final CapturingMode capturingMode;
    public final boolean isOneShotVideo;
    protected CapturingModeParams mCapturingModeParams;
    protected Map<ParameterKey, ParameterValueHolder<?>> mHolders;
    protected StorageController mStorageController;

    public Parameters(CapturingMode var1, boolean var2, StorageController var3);

    public static Parameters create(CapturingMode var0, boolean var1, StorageController var2);

    public static Map<String, String> createStringMap(List<ParameterValueHolder<?>> var0);

    public static void parseStringMap(List<ParameterValueHolder<?>> var0, Map<String, String> var1);

    public void clearHolder();

    @Override
    public void commit();

    public AutoReview getAutoReview();

    public AutoUpload getAutoUpload();

    public BurstShot getBurstShot();

    public CaptureFrameShape getCaptureFrameShape();

    public List<ParameterValue> getChangedValues();

    public List<ParameterValue> getChangedValues(EnumMap<ParameterKey, ParameterValue> var1);

    public Ev getEv();

    public FaceIdentify getFaceIdentify();

    public Facing getFacing();

    public FastCapture getFastCapture();

    public Flash getFlash();

    public FocusMode getFocusMode();

    public Geotag getGeotag();

    public Hdr getHdr();

    public Iso getIso();

    public Metering getMetering();

    public Microphone getMicrophone();

    public ParameterValue[] getOptions(ParameterKey var1);

    public EnumMap<ParameterKey, ParameterValue> getParameters();

    public PhotoLight getPhotoLight();

    public Resolution getResolution();

    public Scene getScene();

    public SelfTimer getSelfTimer();

    public ShutterSound getShutterSound();

    public SmileCapture getSmileCapture();

    public SoftSkin getSoftSkin();

    public Stabilizer getStabilizer();

    public SuperResolution getSuperResolution();

    public abstract EnumMap<ParameterKey, ParameterValue> getTargetParameters();

    public TouchCapture getTouchCapture();

    public Resolution getUpdatedResolution(Hdr var1);

    public VideoAutoReview getVideoAutoReview();

    public VideoHdr getVideoHdr();

    public VideoSelfTimer getVideoSelfTimer();

    public VideoSize getVideoSize();

    public VideoSmileCapture getVideoSmileCapture();

    public VideoStabilizer getVideoStabilizer();

    public VolumeKey getVolumeKey();

    public WhiteBalance getWhiteBalance();

    protected abstract void prepare();

    public void prepareHolder(boolean var1, boolean var2, Configurations var3, SharedPreferencesUtil var4);

    protected void putHolders(List<ParameterValueHolder<?>> var1);

    public void readSharedPrefs(SharedPreferencesUtil var1);

    public void reset();

    @Override
    public void set(AutoReview var1);

    @Override
    public void set(AutoUpload var1);

    @Override
    public void set(BurstShot var1);

    @Override
    public void set(CaptureFrameShape var1);

    @Override
    public void set(CapturingMode var1);

    @Override
    public void set(DestinationToSave var1);

    @Override
    public void set(Ev var1);

    @Override
    public void set(FaceIdentify var1);

    @Override
    public void set(Facing var1);

    @Override
    public void set(FastCapture var1);

    @Override
    public void set(Flash var1);

    @Override
    public void set(FocusMode var1);

    @Override
    public void set(Geotag var1);

    @Override
    public void set(Hdr var1);

    @Override
    public void set(Iso var1);

    @Override
    public void set(Metering var1);

    @Override
    public void set(Microphone var1);

    @Override
    public void set(PhotoLight var1);

    @Override
    public void set(Resolution var1);

    @Override
    public void set(Scene var1);

    @Override
    public void set(SelfTimer var1);

    @Override
    public void set(ShutterSound var1);

    @Override
    public void set(SmileCapture var1);

    @Override
    public void set(SoftSkin var1);

    @Override
    public void set(Stabilizer var1);

    @Override
    public void set(SuperResolution var1);

    @Override
    public void set(TouchBlock var1);

    @Override
    public void set(TouchCapture var1);

    @Override
    public void set(VideoAutoReview var1);

    @Override
    public void set(VideoHdr var1);

    @Override
    public void set(VideoSelfTimer var1);

    @Override
    public void set(VideoSize var1);

    @Override
    public void set(VideoSmileCapture var1);

    @Override
    public void set(VideoStabilizer var1);

    @Override
    public void set(VolumeKey var1);

    @Override
    public void set(WhiteBalance var1);

    protected void updateHolder(ParameterValueHolder<?> var1);

    public void updateLocalResolution(Hdr var1, ParameterValueHolder<Resolution> var2);

    protected abstract void updatePhotoLight();

    protected abstract void updateSelectability();

    protected void writeSharedPrefs(SharedPreferencesUtil var1);

}

