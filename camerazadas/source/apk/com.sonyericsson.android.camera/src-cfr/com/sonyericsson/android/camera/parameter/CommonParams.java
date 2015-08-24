/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.android.camera.parameter;

import android.content.Context;
import android.net.Uri;
import android.os.storage.StorageManager;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.TouchBlock;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.view.settings.SettingList;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CommonParams {
    private static final CommonParams sInstance = new CommonParams();
    public ParameterValueHolder<AutoUpload> mAutoUpload = new ParameterValueHolder<AutoUpload>(AutoUpload.getDefaultValue());
    public ParameterValueHolder<DestinationToSave> mDestinationToSave = new ParameterValueHolder<DestinationToSave>(DestinationToSave.getPrimaryStorage());
    public ParameterValueHolder<FastCapture> mFastCapture = new ParameterValueHolder<FastCapture>(FastCapture.getDefault());
    public ParameterValueHolder<Geotag> mGeotag = new ParameterValueHolder<Geotag>(Geotag.OFF);
    public ParameterValueHolder<ShutterSound> mShutterSound = new ParameterValueHolder<ShutterSound>(ShutterSound.SOUND1);
    public ParameterValueHolder<TouchBlock> mTouchBlock = new ParameterValueHolder<TouchBlock>(TouchBlock.getDefaultValue());
    public ParameterValueHolder<TouchCapture> mTouchCapture = new ParameterValueHolder<TouchCapture>(TouchCapture.OFF);
    public ParameterValueHolder<VolumeKey> mVolumeKey = new ParameterValueHolder<VolumeKey>(VolumeKey.getDefault());

    private CommonParams() {
    }

    public static CommonParams getInstance() {
        return sInstance;
    }

    public void init(CameraActivity object) {
        ParameterValue[] arrparameterValue = null;
        if (object.hasExtraOutputPath()) {
            arrparameterValue = StorageUtil.getPathFromUri((Context)object, object.getExtraOutput());
        }
        arrparameterValue = DestinationToSave.getOptions(object.getExtraOutput(), (String)arrparameterValue, (Context)object);
        this.mDestinationToSave.setOptions(arrparameterValue);
        this.mFastCapture.setOptions((ParameterValue[])FastCapture.getOptions());
        this.mGeotag.setOptions((ParameterValue[])Geotag.getOptions());
        this.mShutterSound.setOptions((ParameterValue[])ShutterSound.getOptions(StaticConfigurationUtil.isForceSound()));
        this.mTouchCapture.setOptions((ParameterValue[])TouchCapture.getOptions());
        this.mAutoUpload.setOptions((ParameterValue[])AutoUpload.getOptions());
        this.mVolumeKey.setOptions((ParameterValue[])VolumeKey.getOptions());
        this.mTouchBlock.setOptions((ParameterValue[])TouchBlock.getOptions((Context)object));
        object = this.values().iterator();
        while (object.hasNext()) {
            ParameterUtil.updateDefaultValue((ParameterValueHolder)object.next());
        }
    }

    public void update() {
        ParameterKey.DESTINATION_TO_SAVE.setSaved(true);
        this.mDestinationToSave.setOptions((ParameterValue[])DestinationToSave.getOptions());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void update(CameraActivity cameraActivity) {
        boolean bl;
        ParameterValue[] arrparameterValue;
        int n;
        if (cameraActivity.getExtraOutput() != null) {
            DestinationToSave destinationToSave;
            bl = false;
            StorageManager.StorageType storageType = StorageUtil.getStorageTypeFromPath(StorageUtil.getPathFromUri(cameraActivity, cameraActivity.getExtraOutput()), cameraActivity);
            switch (.$SwitchMap$android$os$storage$StorageManager$StorageType[storageType.ordinal()]) {
                default: {
                    destinationToSave = DestinationToSave.EMMC;
                    n = 0;
                    arrparameterValue = new DestinationToSave[]{};
                    break;
                }
                case 1: {
                    destinationToSave = DestinationToSave.EMMC;
                    n = 1;
                    arrparameterValue = new DestinationToSave[]{destinationToSave};
                    break;
                }
                case 2: {
                    destinationToSave = DestinationToSave.SDCARD;
                    n = 1;
                    arrparameterValue = new DestinationToSave[]{destinationToSave};
                }
            }
            this.mDestinationToSave.set(destinationToSave);
            cameraActivity.getStorageManager().setCurrentStorage(storageType);
        } else {
            bl = true;
            n = 1;
            arrparameterValue = DestinationToSave.getOptions();
        }
        ParameterKey.DESTINATION_TO_SAVE.setSaved(bl);
        SettingList.updateList(ParameterKey.DESTINATION_TO_SAVE, n);
        this.mDestinationToSave.setOptions(arrparameterValue);
    }

    public List<ParameterValueHolder<?>> values() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.mDestinationToSave);
        arrayList.add(this.mFastCapture);
        arrayList.add(this.mGeotag);
        arrayList.add(this.mShutterSound);
        arrayList.add(this.mTouchCapture);
        arrayList.add(this.mAutoUpload);
        arrayList.add(this.mVolumeKey);
        arrayList.add(this.mTouchBlock);
        return arrayList;
    }

}

