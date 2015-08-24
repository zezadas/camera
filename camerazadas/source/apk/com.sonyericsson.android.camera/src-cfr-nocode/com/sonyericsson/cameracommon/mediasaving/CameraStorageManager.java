/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.StatFs;
import android.os.storage.StorageManager;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraStorageManager
implements BaseActivity.StorageEventListener {
    private static final String SHARED_PREFERENCE_NAME = "storage_preferences";
    private static final String SP_KEY_CHECK_LAST_SDCARD_STATE = "is-sdcard-available-on-previous-onpause";
    private static final String SP_KEY_CHECK_SDCARD_STATE_AT_FIRST_LAUNCH_AFTER_DATA_CLEARED = "is-sdcard-unavailable-while-storage-setting-is-sdcard-at-first-launch-after-data-cleared";
    private static final String TAG;
    public static final int TIMEOUT_GET_STATFS = 3000;
    private Activity mActivity;
    private String mCurrentStorage;
    private final Map<String, DetailStorageState> mLastStorageStates;
    private final SharedPreferences mSharedPrefs;
    private StorageController mStorageController;

    static;

    public CameraStorageManager(Activity var1, StorageController var2);

    private boolean checkFsWritable(String var1);

    private DetailStorageState getLastStorageState();

    private DetailStorageState getNextStateFromRemain(long var1);

    private DetailStorageState getNextStateFromVolume(String var1);

    private DetailStorageState getNextStateFromWritable(String var1);

    private boolean isExternalStorageChangedToReadable();

    private boolean isReadable(DetailStorageState var1);

    private boolean isReadable(String var1);

    private boolean isReady(DetailStorageState var1);

    private void logStorageState();

    private void saveExternalStorageStateAtFirstLaunchInPrefs();

    private void setLastStorageState(String var1, DetailStorageState var2);

    private void updateAllStorageState(String var1, long var2, String var4);

    private DetailStorageState updateStorageState(String var1, long var2, String var4);

    public void addStorageListener(StorageController.StorageListener var1);

    public String getCurrentStorage();

    public List<String> getReadableStorage();

    public StatFs getStatFs(String var1);

    public boolean hasEnoughFreeSpace();

    public boolean isCurrentStorageExternal();

    public boolean isExternalStorageUnavailableWithExternalStorageSettingAtFirstLaunch();

    public boolean isReadable();

    public boolean isReady();

    public boolean isStorageExternal(String var1);

    public boolean isStorageInternal(String var1);

    public boolean isToggledStorageReady();

    @Override
    public void onMediaScanFinished();

    @Override
    public void onStorageCheckRequested(String var1, String var2);

    public void pause();

    public void release();

    public void removeStorageListener(StorageController.StorageListener var1);

    public void requestCheckAll();

    public void resume();

    public void saveExternalStorageStateInPrefs();

    public void setCurrentStorage(StorageManager.StorageType var1);

    public long updateAvailableStorageSize(String var1, long var2);

    public long updateRemain(long var1, boolean var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class DetailStorageState
    extends Enum<DetailStorageState> {
        private static final /* synthetic */ DetailStorageState[] $VALUES;
        public static final /* enum */ DetailStorageState MEMORY_CHECKING;
        public static final /* enum */ DetailStorageState MEMORY_ERR_ACCESS;
        public static final /* enum */ DetailStorageState MEMORY_ERR_FORMAT;
        public static final /* enum */ DetailStorageState MEMORY_ERR_FULL;
        public static final /* enum */ DetailStorageState MEMORY_ERR_NO_MEMORY_CARD;
        public static final /* enum */ DetailStorageState MEMORY_ERR_READ_ONLY;
        public static final /* enum */ DetailStorageState MEMORY_ERR_SHARED;
        public static final /* enum */ DetailStorageState MEMORY_NO_DCIM;
        public static final /* enum */ DetailStorageState MEMORY_READY;
        public static final /* enum */ DetailStorageState MEMORY_READY_LOW;

        static;

        private DetailStorageState();

        public static DetailStorageState valueOf(String var0);

        public static DetailStorageState[] values();
    }

    public static interface ExternalMemoryListener {
        public void onExternalMemoryStatusChanged(DetailStorageState var1);
    }

}

