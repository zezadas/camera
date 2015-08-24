/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.smartcover;

import android.media.AudioManager;
import android.view.KeyEvent;
import com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity;
import com.sonyericsson.android.camera.fastcapturing.view.BaseFastViewFinder;
import com.sonyericsson.android.camera.smartcover.view.SmartCoverViewFinder;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClient;
import com.sonymobile.coversupport.CoverModeHandler;
import com.sonymobile.coversupport.OnCoverModeChangedListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SmartCoverActivity
extends FastCapturingActivity
implements OnCoverModeChangedListener {
    private static String TAG;
    private static final CameraDeviceHandler sCameraDeviceHandler;
    private AudioManager mAudioManager;
    private CoverModeHandler mCoverModeHandler;
    private CoverModeHandler.WindowInfo mCoverModeSizeInPixel;
    public boolean mShouldStartFastCapture;
    private SmartCoverViewFinder mSmartCoverViewFinder;

    static;

    public SmartCoverActivity();

    public static CameraDeviceHandler staticCameraDevice();

    @Override
    protected void confirmLocationService();

    @Override
    protected BaseFastViewFinder createViewFinder(FastCapturingActivity var1);

    @Override
    public CameraDeviceHandler getCameraDevice();

    @Override
    public WearableBridgeClient getWearableBridge();

    @Override
    protected boolean isVideoSupported();

    @Override
    protected void loadFastCapturingLaunchSetting();

    @Override
    public void onCoverModeChanged(boolean var1);

    @Override
    public void onDestroy();

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public void onPause();

    @Override
    public void onStart();

    @Override
    public void onStop();

    public void setShouldStartFastCapture(boolean var1);

    @Override
    public boolean shouldAddOnlyNewContent();

    @Override
    public void showCameraNotAvailableError();

}

