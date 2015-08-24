/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.android.camera.configuration.parameters;

import android.content.Context;
import android.net.Uri;
import android.os.storage.StorageManager;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class DestinationToSave
extends Enum<DestinationToSave>
implements ParameterValue {
    private static final /* synthetic */ DestinationToSave[] $VALUES;
    public static final /* enum */ DestinationToSave EMMC;
    public static final /* enum */ DestinationToSave INTERNAL_MASS_STORAGE;
    public static final /* enum */ DestinationToSave MEMORY_CARD;
    public static final /* enum */ DestinationToSave SDCARD;
    private static final String TAG = "DestinationToSave";
    private static int sParameterTextId;
    private static DestinationToSave sPrimaryStorage;
    private final DestinationToSave mCompatibleValue;
    private int mIconId;
    private String mMountPoint;
    private int mTextId;
    private StorageManager.StorageType mType;

    static;

    private DestinationToSave(int var3, int var4, StorageManager.StorageType var5, DestinationToSave var6);

    public static DestinationToSave[] getOptions();

    public static DestinationToSave[] getOptions(Uri var0, String var1, Context var2);

    public static DestinationToSave getPrimaryStorage();

    public static DestinationToSave getValueFromPath(String var0);

    public static void setMountPoint(Context var0, String[] var1);

    private static void updatePrimaryStorage(Context var0);

    public static DestinationToSave valueOf(String var0);

    public static DestinationToSave[] values();

    @Override
    public void apply(ParameterApplicable var1);

    @Override
    public int getIconId();

    @Override
    public ParameterKey getParameterKey();

    @Override
    public int getParameterKeyTextId();

    @Override
    public String getParameterName();

    public String getPath();

    @Override
    public ParameterValue getRecommendedValue(ParameterValue[] var1, ParameterValue var2);

    @Override
    public int getTextId();

    public StorageManager.StorageType getType();

    @Override
    public String getValue();

}

