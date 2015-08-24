/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 *  android.os.storage.StorageVolume
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import android.content.Context;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public enum SaveDestination implements CommonSettingValue
{
    EMMC(-1, R.string.cam_strings_save_destination_ims_txt, null, "emmc", StorageManager.StorageType.INTERNAL),
    SDCARD(-1, R.string.cam_strings_save_destination_sd_txt, null, "sdcard", StorageManager.StorageType.EXTERNAL_CARD);
    
    private static final String TAG;
    private static int sParameterTextId;
    private static SaveDestination sPrimaryStorage;
    private final SaveDestination mCompatibleValue;
    private int mIconId;
    private final String mProviderValue;
    private int mTextId;
    private final StorageManager.StorageType mType;

    static {
        TAG = SaveDestination.class.getSimpleName();
        sParameterTextId = R.string.cam_strings_save_destination_txt;
        sPrimaryStorage = EMMC;
    }

    private SaveDestination(int n2, int n3, SaveDestination saveDestination, String string2, StorageManager.StorageType storageType) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mCompatibleValue = saveDestination;
        this.mProviderValue = string2;
        this.mType = storageType;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static List<SaveDestination> getOptions(Context object) {
        object = (StorageManager)object.getSystemService("storage");
        ArrayList<SaveDestination> arrayList = new ArrayList<SaveDestination>();
        StorageVolume[] arrstorageVolume = object.getVolumeList();
        int n = arrstorageVolume.length;
        block3 : for (int i = 0; i < n; ++i) {
            String string = arrstorageVolume[i].getPath();
            StorageManager.StorageType storageType = object.getVolumeType(string);
            for (SaveDestination saveDestination : SaveDestination.values()) {
                try {
                    if (storageType != saveDestination.mType) continue;
                    arrayList.add(saveDestination);
                    continue block3;
                }
                catch (FileNotFoundException var8_9) {
                    CameraLogger.e(TAG, "No StorageType found for the path: " + string, var8_9);
                }
            }
        }
        return arrayList;
    }

    public static SaveDestination getPrimaryStorage() {
        return sPrimaryStorage;
    }

    @Override
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.SAVE_DESTINATION;
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public String getParameterName() {
        return this.getClass().getName();
    }

    @Override
    public String getProviderValue() {
        return this.mProviderValue;
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    public SaveDestination isCompatibleValue() {
        return this.mCompatibleValue;
    }
}

