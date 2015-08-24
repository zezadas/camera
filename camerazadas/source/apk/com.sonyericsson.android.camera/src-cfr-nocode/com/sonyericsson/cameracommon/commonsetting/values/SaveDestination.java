/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.cameracommon.commonsetting.values;

import android.content.Context;
import android.os.storage.StorageManager;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SaveDestination
extends Enum<SaveDestination>
implements CommonSettingValue {
    private static final /* synthetic */ SaveDestination[] $VALUES;
    public static final /* enum */ SaveDestination EMMC;
    public static final /* enum */ SaveDestination SDCARD;
    private static final String TAG;
    private static int sParameterTextId;
    private static SaveDestination sPrimaryStorage;
    private final SaveDestination mCompatibleValue;
    private int mIconId;
    private final String mProviderValue;
    private int mTextId;
    private final StorageManager.StorageType mType;

    static;

    private SaveDestination(int var3, int var4, SaveDestination var5, String var6, StorageManager.StorageType var7);

    public static List<SaveDestination> getOptions(Context var0);

    public static SaveDestination getPrimaryStorage();

    public static SaveDestination valueOf(String var0);

    public static SaveDestination[] values();

    @Override
    public CommonSettingKey getCommonSettingKey();

    @Override
    public int getIconId();

    public int getParameterKeyTextId();

    public String getParameterName();

    @Override
    public String getProviderValue();

    @Override
    public int getTextId();

    public SaveDestination isCompatibleValue();
}

