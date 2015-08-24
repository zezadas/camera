/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class CameraStorageManager
implements BaseActivity.StorageEventListener {
    private static final String SHARED_PREFERENCE_NAME = "storage_preferences";
    private static final String SP_KEY_CHECK_LAST_SDCARD_STATE = "is-sdcard-available-on-previous-onpause";
    private static final String SP_KEY_CHECK_SDCARD_STATE_AT_FIRST_LAUNCH_AFTER_DATA_CLEARED = "is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared";
    private static final String TAG = CameraStorageManager.class.getSimpleName();
    public static final int TIMEOUT_GET_STATFS = 3000;
    private Activity mActivity;
    private String mCurrentStorage = Environment.getExternalStorageDirectory().getPath();
    private final Map<String, DetailStorageState> mLastStorageStates;
    private final SharedPreferences mSharedPrefs;
    private StorageController mStorageController;

    public CameraStorageManager(Activity arrstring, StorageController storageController) {
        this.mActivity = arrstring;
        this.mStorageController = storageController;
        this.mSharedPrefs = arrstring.getSharedPreferences("storage_preferences", 0);
        this.mLastStorageStates = new HashMap<String, DetailStorageState>();
        arrstring = StorageUtil.getMountedPaths(this.mActivity);
        int n = arrstring.length;
        for (int i = 0; i < n; ++i) {
            this.updateStorageState(arrstring[i], 0, "");
        }
    }

    private boolean checkFsWritable(String object) {
        if (!((object = new File((String)object)).isDirectory() || object.mkdirs())) {
            return false;
        }
        return object.canWrite();
    }

    private DetailStorageState getLastStorageState() {
        return this.mLastStorageStates.get(this.mCurrentStorage);
    }

    private DetailStorageState getNextStateFromRemain(long l) {
        if (l > 153600) {
            return DetailStorageState.MEMORY_READY;
        }
        if (l > 61440) {
            return DetailStorageState.MEMORY_READY_LOW;
        }
        return DetailStorageState.MEMORY_ERR_FULL;
    }

    private DetailStorageState getNextStateFromVolume(String string) {
        if ("bad_removal".equals(string = StorageUtil.getVolumeState(string, this.mActivity))) {
            return DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("mounted_ro".equals(string)) {
            return DetailStorageState.MEMORY_ERR_READ_ONLY;
        }
        if ("removed".equals(string)) {
            return DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD;
        }
        if ("shared".equals(string)) {
            return DetailStorageState.MEMORY_ERR_SHARED;
        }
        if ("unmountable".equals(string)) {
            return DetailStorageState.MEMORY_ERR_FORMAT;
        }
        if ("unmounted".equals(string)) {
            return DetailStorageState.MEMORY_ERR_SHARED;
        }
        if ("checking".equals(string)) {
            return DetailStorageState.MEMORY_CHECKING;
        }
        if ("mounted".equals(string)) {
            return DetailStorageState.MEMORY_READY;
        }
        return DetailStorageState.MEMORY_ERR_ACCESS;
    }

    private DetailStorageState getNextStateFromWritable(String string) {
        if (this.checkFsWritable(string)) {
            if (DcfPathBuilder.getInstance().isAlreadyLastFileExist(DcfPathBuilder.getInstance().getDcimDirectory(string))) {
                return DetailStorageState.MEMORY_ERR_FULL;
            }
            if (DcfPathBuilder.getInstance().checkAndCreateDirectory(DcfPathBuilder.getInstance().getDcimDirectory(string), true)) {
                return DetailStorageState.MEMORY_READY;
            }
            return DetailStorageState.MEMORY_NO_DCIM;
        }
        return DetailStorageState.MEMORY_ERR_READ_ONLY;
    }

    private boolean isExternalStorageChangedToReadable() {
        boolean bl;
        boolean bl2 = bl = false;
        if (!this.mSharedPrefs.getBoolean("is-sdcard-available-on-previous-onpause", false)) {
            bl2 = bl;
            if (this.isReadable(StorageUtil.getPathFromType(StorageManager.StorageType.EXTERNAL_CARD, this.mActivity))) {
                this.saveExternalStorageStateInPrefs();
                bl2 = true;
            }
        }
        return bl2;
    }

    private boolean isReadable(DetailStorageState detailStorageState) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState[detailStorageState.ordinal()]) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
        }
        return true;
    }

    private boolean isReadable(String string) {
        return this.isReadable(this.mLastStorageStates.get(string));
    }

    private boolean isReady(DetailStorageState detailStorageState) {
        if (detailStorageState == null) {
            return false;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState[detailStorageState.ordinal()]) {
            default: {
                return false;
            }
            case 1: 
            case 2: 
        }
        return true;
    }

    private void logStorageState() {
    }

    private void saveExternalStorageStateAtFirstLaunchInPrefs() {
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        if (editor != null) {
            editor.putBoolean("is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared", true);
            editor.commit();
        }
    }

    private void setLastStorageState(String string, DetailStorageState detailStorageState) {
        this.mLastStorageStates.put(string, detailStorageState);
        this.mStorageController.updateStorageState(string, detailStorageState);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void updateAllStorageState(String string, long l, String string2) {
        for (String string3 : StorageUtil.getMountedPaths(this.mActivity)) {
            if (string3.equals(string)) {
                this.updateStorageState(string3, l, string2);
                continue;
            }
            this.updateStorageState(string3, 0, "");
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private DetailStorageState updateStorageState(String string, long l, String string2) {
        DetailStorageState detailStorageState;
        long l2 = 0;
        DetailStorageState detailStorageState2 = detailStorageState = this.getNextStateFromVolume(string);
        if (detailStorageState == DetailStorageState.MEMORY_READY) {
            detailStorageState2 = this.getNextStateFromWritable(string);
        }
        detailStorageState = detailStorageState2;
        if (detailStorageState2 == DetailStorageState.MEMORY_READY) {
            l2 = this.updateAvailableStorageSize(string, l);
            detailStorageState = this.getNextStateFromRemain(l2);
        }
        detailStorageState2 = detailStorageState;
        if (string2.equals("android.intent.action.MEDIA_EJECT")) {
            detailStorageState2 = detailStorageState.equals((Object)DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD) ? DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD : DetailStorageState.MEMORY_ERR_SHARED;
        }
        if (this.mCurrentStorage.equals(string)) {
            this.mStorageController.setAvailableStorageSize(l2);
        }
        this.setLastStorageState(string, detailStorageState2);
        return detailStorageState2;
    }

    public void addStorageListener(StorageController.StorageListener storageListener) {
        this.mStorageController.addStorageListener(storageListener);
    }

    public String getCurrentStorage() {
        return this.mCurrentStorage;
    }

    public List<String> getReadableStorage() {
        ArrayList<String> arrayList = new ArrayList<String>();
        for (String string : this.mLastStorageStates.keySet()) {
            if (!this.isReadable(string)) continue;
            arrayList.add(string);
        }
        return arrayList;
    }

    public StatFs getStatFs(String object) {
        ExecutorService executorService = Executors.newSingleThreadExecutor();
        object = executorService.submit(new StorageUtil.GetStatFsTask((String)object));
        try {
            StatFs statFs = (StatFs)object.get(3000, TimeUnit.MILLISECONDS);
            return statFs;
        }
        catch (InterruptedException var3_4) {
            CameraLogger.e(TAG, "GetStatFsTask has been interrupted.", var3_4);
            return null;
        }
        catch (ExecutionException var3_5) {
            CameraLogger.e(TAG, "GetStatFsTask failed.", var3_5);
            return null;
        }
        catch (TimeoutException var3_6) {
            CameraLogger.e(TAG, "GetStatFsTask failed.", var3_6);
            return null;
        }
        finally {
            object.cancel(true);
            executorService.shutdown();
        }
    }

    public boolean hasEnoughFreeSpace() {
        DetailStorageState detailStorageState = this.getLastStorageState();
        switch (detailStorageState) {
            default: {
                return false;
            }
            case MEMORY_READY: 
        }
        return true;
    }

    public boolean isCurrentStorageExternal() {
        if (StorageUtil.getStorageTypeFromPath(this.mCurrentStorage, this.mActivity) == StorageManager.StorageType.EXTERNAL_CARD) {
            return true;
        }
        return false;
    }

    public boolean isExternalStorageUnavailableWithExternalStorageSettingAtFirstLaunch() {
        if (this.mSharedPrefs.contains("is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared")) {
            return false;
        }
        this.saveExternalStorageStateAtFirstLaunchInPrefs();
        return true;
    }

    public boolean isReadable() {
        return this.isReadable(this.getLastStorageState());
    }

    public boolean isReady() {
        return this.isReady(this.getLastStorageState());
    }

    public boolean isStorageExternal(String string) {
        if (StorageUtil.getStorageTypeFromPath(string, this.mActivity) == StorageManager.StorageType.EXTERNAL_CARD) {
            return true;
        }
        return false;
    }

    public boolean isStorageInternal(String string) {
        if (StorageUtil.getStorageTypeFromPath(string, this.mActivity) == StorageManager.StorageType.INTERNAL) {
            return true;
        }
        return false;
    }

    public boolean isToggledStorageReady() {
        return this.mStorageController.isToggledStorageReady();
    }

    @Override
    public void onMediaScanFinished() {
        this.mStorageController.checkAndNotifyStateChanged(this.mCurrentStorage, true);
    }

    @Override
    public void onStorageCheckRequested(String string, String string2) {
        this.updateAllStorageState(string2, 0, string);
        this.saveExternalStorageStateAtFirstLaunchInPrefs();
        this.mStorageController.checkAllState(string2, this.mLastStorageStates.get(string2), true, false);
    }

    public void pause() {
        this.mStorageController.pause();
    }

    public void release() {
        this.mStorageController.release();
    }

    public void removeStorageListener(StorageController.StorageListener storageListener) {
        this.mStorageController.removeStorageListener(storageListener);
    }

    public void requestCheckAll() {
        this.mStorageController.checkAllState(this.mCurrentStorage, this.mLastStorageStates.get(this.mCurrentStorage), this.isExternalStorageChangedToReadable(), false);
    }

    public void resume() {
        this.updateAllStorageState("", 0, "");
    }

    public void saveExternalStorageStateInPrefs() {
        String string = StorageUtil.getPathFromType(StorageManager.StorageType.EXTERNAL_CARD, this.mActivity);
        SharedPreferences.Editor editor = this.mSharedPrefs.edit();
        if (editor != null) {
            editor.putBoolean("is-sdcard-available-on-previous-onpause", this.isReadable(string));
            editor.commit();
        }
    }

    public void setCurrentStorage(StorageManager.StorageType storageType) {
        if (storageType == null) {
            return;
        }
        this.mCurrentStorage = StorageUtil.getPathFromType(storageType, this.mActivity);
        DcfPathBuilder.getInstance().setDestinationToSave(this.mCurrentStorage);
        this.mStorageController.setCurrentStorage(this.mCurrentStorage);
        this.updateStorageState(this.mCurrentStorage, 0, "");
    }

    /*
     * Enabled aggressive block sorting
     */
    public long updateAvailableStorageSize(String string, long l) {
        long l2;
        long l3;
        StatFs statFs = this.getStatFs(string);
        if (statFs == null) {
            CameraLogger.e(TAG, "Failed to get StatFs: " + string);
            return 0;
        }
        if (!StorageUtil.getVolumeState(string, this.mActivity).equals("mounted")) return 0;
        if (Build.VERSION.SDK_INT <= 17) {
            l3 = statFs.getBlockSize();
            l2 = statFs.getAvailableBlocks();
            return Math.max(0, (l3 * l2 - l) / 1024);
        }
        l3 = statFs.getBlockSizeLong();
        l2 = statFs.getAvailableBlocksLong();
        return Math.max(0, (l3 * l2 - l) / 1024);
    }

    public long updateRemain(long l, boolean bl) {
        this.updateAllStorageState(this.mCurrentStorage, l, "");
        this.mStorageController.checkAllState(this.mCurrentStorage, this.mLastStorageStates.get(this.mCurrentStorage), this.isExternalStorageChangedToReadable(), bl);
        return this.mStorageController.getAvailableStorageSize();
    }

    public static enum DetailStorageState {
        MEMORY_READY,
        MEMORY_ERR_NO_MEMORY_CARD,
        MEMORY_ERR_READ_ONLY,
        MEMORY_ERR_ACCESS,
        MEMORY_ERR_FORMAT,
        MEMORY_ERR_FULL,
        MEMORY_ERR_SHARED,
        MEMORY_READY_LOW,
        MEMORY_CHECKING,
        MEMORY_NO_DCIM;
        

        private DetailStorageState() {
        }
    }

    public static interface ExternalMemoryListener {
        public void onExternalMemoryStatusChanged(DetailStorageState var1);
    }

}

