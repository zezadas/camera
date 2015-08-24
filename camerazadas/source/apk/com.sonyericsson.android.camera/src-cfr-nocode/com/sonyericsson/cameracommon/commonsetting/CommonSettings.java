/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CommonSettings {
    private static final String TAG;
    private static final boolean loggable;
    private String mCachedFirmwareVersion;
    private final Context mContext;
    private ExecutorService mExecutor;
    private Future<?> mFuture;
    private final ContentResolver mResolver;
    private final HashMap<CommonSettingKey, Boolean> mSelectabilities;
    private final HashMap<CommonSettingKey, CommonSettingValue> mSettings;

    static;

    public CommonSettings(ContentResolver var1, Context var2);

    private ContentProviderOperation createContentProviderUpdateOperation(String var1, String var2);

    private boolean isFirmwareVersionUpdated();

    private boolean isUnSelectableSetting(CommonSettingKey var1);

    private void joinStoreTask();

    private void loadUnSelectableSettings();

    private void putIntoMap(CommonSettingKey var1, CommonSettingValue var2);

    private void saveFirmwareVersion();

    public CommonSettingValue get(CommonSettingKey var1);

    public boolean isSelectable(CommonSettingKey var1);

    public void load();

    public void set(CommonSettingValue var1);

    public void setSelectability(CommonSettingKey var1, boolean var2);

    public void store();

    public void suspend();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class StoreTask
    implements Runnable {
        private final ContentResolver mContentResolver;
        private final List<ContentProviderOperation> mOperations;

        public StoreTask(ContentResolver var1, List<ContentProviderOperation> var2);

        @Override
        public void run();
    }

}

