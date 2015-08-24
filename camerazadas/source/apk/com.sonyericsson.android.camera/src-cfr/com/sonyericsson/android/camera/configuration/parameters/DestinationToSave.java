/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.storage.StorageManager;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import java.util.ArrayList;
import java.util.Locale;

public enum DestinationToSave implements ParameterValue
{
    EMMC(-1, 2131296361, StorageManager.StorageType.INTERNAL, null),
    SDCARD(-1, 2131296362, StorageManager.StorageType.EXTERNAL_CARD, null),
    INTERNAL_MASS_STORAGE(-1, 2131296361, StorageManager.StorageType.INTERNAL, EMMC),
    MEMORY_CARD(-1, 2131296362, StorageManager.StorageType.EXTERNAL_CARD, SDCARD);
    
    private static final String TAG = "DestinationToSave";
    private static int sParameterTextId;
    private static DestinationToSave sPrimaryStorage;
    private final DestinationToSave mCompatibleValue;
    private int mIconId;
    private String mMountPoint;
    private int mTextId;
    private StorageManager.StorageType mType;

    static {
        sParameterTextId = 2131296360;
        sPrimaryStorage = EMMC;
    }

    private DestinationToSave(int n2, int n3, StorageManager.StorageType storageType, DestinationToSave destinationToSave) {
        this.mIconId = n2;
        this.mTextId = n3;
        this.mType = storageType;
        this.mCompatibleValue = destinationToSave;
    }

    public static DestinationToSave[] getOptions() {
        ArrayList<DestinationToSave> arrayList = new ArrayList<DestinationToSave>();
        for (DestinationToSave destinationToSave : DestinationToSave.values()) {
            if (destinationToSave.getPath() == null) continue;
            arrayList.add(destinationToSave);
        }
        return arrayList.toArray(new DestinationToSave[0]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static DestinationToSave[] getOptions(Uri object, String string, Context context) {
        if (string != null) {
            string = StorageUtil.getStorageTypeFromPath(string, context);
            object = null;
            switch (.$SwitchMap$android$os$storage$StorageManager$StorageType[string.ordinal()]) {
                case 1: {
                    object = EMMC;
                }
                default: {
                    break;
                }
                case 2: {
                    object = SDCARD;
                }
            }
            if (object == null) return DestinationToSave.getOptions();
            return new DestinationToSave[]{object};
        } else {
            if (object == null) return DestinationToSave.getOptions();
            return new DestinationToSave[]{EMMC};
        }
    }

    public static DestinationToSave getPrimaryStorage() {
        return sPrimaryStorage;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static DestinationToSave getValueFromPath(String string) {
        if (string == null) {
            return null;
        }
        for (DestinationToSave destinationToSave : DestinationToSave.values()) {
            String string2 = destinationToSave.getPath();
            if (string2 == null) continue;
            if (string.equals(string2)) return destinationToSave;
        }
        return null;
    }

    public static void setMountPoint(Context context, String[] arrstring) {
        block0 : for (String string : arrstring) {
            StorageManager.StorageType storageType = StorageUtil.getStorageTypeFromPath(string, context);
            DestinationToSave[] arrdestinationToSave = DestinationToSave.values();
            int n = arrdestinationToSave.length;
            int n2 = 0;
            do {
                if (n2 >= n) continue block0;
                DestinationToSave destinationToSave = arrdestinationToSave[n2];
                if (destinationToSave.mCompatibleValue == null) {
                    if (storageType == destinationToSave.getType()) {
                        destinationToSave.mMountPoint = string;
                        continue block0;
                    }
                    if (storageType == StorageManager.StorageType.UNKNOWN) {
                        destinationToSave.mMountPoint = "/dev/null";
                    }
                }
                ++n2;
            } while (true);
        }
        DestinationToSave.updatePrimaryStorage(context);
    }

    private static void updatePrimaryStorage(Context object) {
        object = object.getResources().getString(2131296293).toLowerCase(Locale.US);
        String string = SDCARD.getType().name().toLowerCase(Locale.US);
        if ((EMMC.getPath() == null || object.equals(string)) && SDCARD.getPath() != null) {
            sPrimaryStorage = SDCARD;
        }
    }

    @Override
    public void apply(ParameterApplicable parameterApplicable) {
        parameterApplicable.set(this);
    }

    @Override
    public int getIconId() {
        return this.mIconId;
    }

    @Override
    public ParameterKey getParameterKey() {
        return ParameterKey.DESTINATION_TO_SAVE;
    }

    @Override
    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    @Override
    public String getParameterName() {
        return this.getClass().getName();
    }

    public String getPath() {
        return this.mMountPoint;
    }

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] arrparameterValue, ParameterValue parameterValue) {
        if (arrparameterValue != null) {
            parameterValue = (DestinationToSave)parameterValue;
            if (parameterValue.mCompatibleValue == null) {
                return parameterValue;
            }
            int n = arrparameterValue.length;
            for (int i = 0; i < n; ++i) {
                ParameterValue parameterValue2 = arrparameterValue[i];
                if (parameterValue2 != parameterValue.mCompatibleValue) continue;
                return parameterValue2;
            }
            if (arrparameterValue.length > 0) {
                return arrparameterValue[0];
            }
        }
        return DestinationToSave.getPrimaryStorage();
    }

    @Override
    public int getTextId() {
        return this.mTextId;
    }

    public StorageManager.StorageType getType() {
        return this.mType;
    }

    @Override
    public String getValue() {
        return this.getPath();
    }

}

