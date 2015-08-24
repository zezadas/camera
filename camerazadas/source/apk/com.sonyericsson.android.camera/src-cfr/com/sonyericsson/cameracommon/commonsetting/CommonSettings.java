/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.commonsetting;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.securesetting.SecureSettingWriter;
import com.sonyericsson.cameracommon.commonsetting.values.AutoUpload;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.commonsetting.values.TermOfUse;
import com.sonyericsson.cameracommon.commonsetting.values.TouchBlock;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class CommonSettings {
    private static final String TAG = CommonSettings.class.getSimpleName();
    private static final boolean loggable;
    private String mCachedFirmwareVersion = "";
    private final Context mContext;
    private ExecutorService mExecutor;
    private Future<?> mFuture;
    private final ContentResolver mResolver;
    private final HashMap<CommonSettingKey, Boolean> mSelectabilities = new HashMap();
    private final HashMap<CommonSettingKey, CommonSettingValue> mSettings = new HashMap();

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = CameraLogger.isEngBuild || CameraLogger.isUserdebugBuild;
        loggable = bl;
    }

    public CommonSettings(ContentResolver contentResolver, Context context) {
        this.mResolver = contentResolver;
        this.mContext = context;
    }

    private ContentProviderOperation createContentProviderUpdateOperation(String string, String string2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", string);
        contentValues.put("value", string2);
        return ContentProviderOperation.newUpdate(CommonSettingConstants.COMMONSETTING_CONTENT_URI).withValue("name", string).withValue("value", string2).build();
    }

    private boolean isFirmwareVersionUpdated() {
        String string = Build.FINGERPRINT;
        if (this.mCachedFirmwareVersion.equals(string)) {
            return false;
        }
        return true;
    }

    private boolean isUnSelectableSetting(CommonSettingKey commonSettingKey) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[commonSettingKey.ordinal()]) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
            case 3: 
        }
        return true;
    }

    private void joinStoreTask() {
        try {
            if (this.mFuture != null) {
                this.mFuture.get();
                this.mFuture = null;
            }
            return;
        }
        catch (InterruptedException var1_1) {
            CameraLogger.e(TAG, "joinStoreTask", var1_1);
            return;
        }
        catch (ExecutionException var1_2) {
            CameraLogger.e(TAG, "joinStoreTask", var1_2);
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void loadUnSelectableSettings() {
        block5 : for (CommonSettingKey var4_4 : CommonSettingKey.values()) {
            switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey[var4_4.ordinal()]) {
                case 1: {
                    this.putIntoMap(var4_4, AutoUpload.OFF);
                    ** break;
                }
                case 2: {
                    this.putIntoMap(var4_4, TermOfUse.NO_VALUE);
                }
lbl8: // 3 sources:
                default: {
                    continue block5;
                }
                case 3: 
            }
            this.putIntoMap(var4_4, TouchBlock.NO_VALUE);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void putIntoMap(CommonSettingKey commonSettingKey, CommonSettingValue commonSettingValue) {
        synchronized (this) {
            if (commonSettingKey != null) {
                if (commonSettingValue == null && loggable) {
                    throw new IllegalStateException(TAG + " > Value of " + commonSettingKey + " is set to NULL.");
                }
                this.mSettings.put(commonSettingKey, commonSettingValue);
            }
            return;
        }
    }

    private void saveFirmwareVersion() {
        this.mCachedFirmwareVersion = Build.FINGERPRINT;
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<ContentProviderOperation>();
        arrayList.add(this.createContentProviderUpdateOperation("android.os.Build.FINGERPRINT", this.mCachedFirmwareVersion));
        this.joinStoreTask();
        if (this.mExecutor == null) {
            this.mExecutor = Executors.newSingleThreadExecutor();
        }
        this.mFuture = this.mExecutor.submit(new StoreTask(this.mResolver, arrayList));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public CommonSettingValue get(CommonSettingKey commonSettingKey) {
        synchronized (this) {
            void var2_3;
            if (commonSettingKey == CommonSettingKey.SHUTTER_SOUND && StaticConfigurationUtil.isForceSound()) {
                ShutterSound shutterSound = ShutterSound.ON;
            } else {
                CommonSettingValue commonSettingValue;
                CommonSettingValue commonSettingValue2 = commonSettingValue = this.mSettings.get(commonSettingKey);
                if (commonSettingValue == null) {
                    throw new IllegalStateException("Value of " + commonSettingKey + " is NULL, CommonSettingProvider may not be loaded yet." + " Current cached settings: " + this.mSettings.entrySet().toString());
                }
            }
            return var2_3;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isSelectable(CommonSettingKey object) {
        synchronized (this) {
            object = this.mSelectabilities.get(object);
            Boolean bl = Boolean.FALSE;
            if (object == bl) return false;
            return true;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void load() {
        // MONITORENTER : this
        this.mSettings.clear();
        var3_1 = null;
        var2_2 = null;
        try {
            try {
                var4_4 = this.mResolver.query(CommonSettingConstants.COMMONSETTING_CONTENT_URI, new String[]{"name", "value"}, null, null, null);
                if (var4_4 == null) {
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                    if (CommonSettings.loggable) {
                        var2_2 = var4_4;
                        var3_1 = var4_4;
                        throw new IllegalStateException(CommonSettings.TAG + " > load: cursor is NULL.");
                    }
                } else {
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                    if (var4_4.getCount() == 0) {
                        var2_2 = var4_4;
                        var3_1 = var4_4;
                        if (CommonSettings.loggable) {
                            var2_2 = var4_4;
                            var3_1 = var4_4;
                            throw new IllegalStateException(CommonSettings.TAG + " > load: count is ZERO.");
                        }
                    }
                }
            }
            catch (Exception var4_5) {
                var3_1 = var2_2;
                if (CommonSettings.loggable) {
                    var3_1 = var2_2;
                    throw new IllegalStateException(CommonSettings.TAG + " > load: query data from database failed. " + var4_5);
                } else {
                    ** GOTO lbl63
                }
            }
        }
        catch (Throwable var2_3) {
            if (var3_1 == null) throw var2_3;
            var3_1.close();
            throw var2_3;
        }
        if (var4_4 != null) {
            var2_2 = var4_4;
            var3_1 = var4_4;
            if (var4_4.moveToFirst()) {
                do {
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                    var5_7 = var4_4.getString(0);
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                    var6_8 = var4_4.getString(1);
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                    var7_9 = CommonSettingKey.fromKey(var5_7);
                    if (var7_9 != null) {
                        var2_2 = var4_4;
                        var3_1 = var4_4;
                        this.putIntoMap(var7_9, CommonSettingKey.fromValue(var7_9, var6_8));
                    }
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                    if (var5_7.equals("android.os.Build.FINGERPRINT")) {
                        var2_2 = var4_4;
                        var3_1 = var4_4;
                        this.mCachedFirmwareVersion = var6_8;
                    }
                    var2_2 = var4_4;
                    var3_1 = var4_4;
                } while (var1_6 = var4_4.moveToNext());
            }
        }
        if (var4_4 != null) {
            var4_4.close();
        } else {
            ** GOTO lbl65
        }
        ** GOTO lbl65
lbl63: // 2 sources:
        if (var2_2 != null) {
            var2_2.close();
        }
lbl65: // 6 sources:
        this.loadUnSelectableSettings();
        if (CommonSettings.loggable) {
            Log.d(CommonSettings.TAG, "load: Current cached settings: " + this.mSettings.entrySet());
        }
        if (this.isFirmwareVersionUpdated()) {
            this.saveFirmwareVersion();
        }
        // MONITOREXIT : this
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void set(CommonSettingValue commonSettingValue) {
        synchronized (this) {
            CommonSettingKey commonSettingKey = commonSettingValue.getCommonSettingKey();
            if (commonSettingValue == null && loggable) {
                throw new IllegalStateException(TAG + " > Value of " + commonSettingKey + " is set to NULL.");
            }
            this.mSettings.put(commonSettingKey, commonSettingValue);
            if (commonSettingKey == CommonSettingKey.FAST_CAPTURE) {
                if (commonSettingValue == FastCapture.OFF) {
                    SecureSettingWriter.save(this.mContext, "fcc.status.off", ((FastCapture)commonSettingValue).getProviderValue());
                } else {
                    SecureSettingWriter.save(this.mContext, "fcc.status.on", ((FastCapture)commonSettingValue).getProviderValue());
                }
            }
            this.store();
            return;
        }
    }

    public void setSelectability(CommonSettingKey commonSettingKey, boolean bl) {
        synchronized (this) {
            this.mSelectabilities.put(commonSettingKey, bl);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void store() {
        synchronized (this) {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<ContentProviderOperation>();
            Iterator<Map.Entry<CommonSettingKey, CommonSettingValue>> iterator = this.mSettings.entrySet().iterator();
            while (iterator.hasNext()) {
                Object object = iterator.next();
                CommonSettingKey commonSettingKey = object.getKey();
                object = object.getValue();
                if (this.isUnSelectableSetting(commonSettingKey)) continue;
                arrayList.add(this.createContentProviderUpdateOperation(commonSettingKey.getKey(), object.toString()));
            }
            this.joinStoreTask();
            if (this.mExecutor == null) {
                this.mExecutor = Executors.newSingleThreadExecutor();
            }
            this.mFuture = this.mExecutor.submit(new StoreTask(this.mResolver, arrayList));
            return;
        }
    }

    public void suspend() {
        this.joinStoreTask();
        if (this.mExecutor != null) {
            this.mExecutor.shutdown();
            this.mExecutor = null;
        }
    }

    private static class StoreTask
    implements Runnable {
        private final ContentResolver mContentResolver;
        private final List<ContentProviderOperation> mOperations;

        public StoreTask(ContentResolver contentResolver, List<ContentProviderOperation> list) {
            this.mContentResolver = contentResolver;
            this.mOperations = list;
        }

        @Override
        public void run() {
            try {
                this.mContentResolver.applyBatch("com.sonymobile.cameracommon.provider", (ArrayList)this.mOperations);
                return;
            }
            catch (OperationApplicationException var1_1) {
                return;
            }
            catch (RemoteException var1_2) {
                return;
            }
        }
    }

}

