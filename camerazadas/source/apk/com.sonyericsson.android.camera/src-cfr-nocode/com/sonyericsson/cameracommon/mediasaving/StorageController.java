/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.DialogInterface;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StorageController {
    static final String TAG;
    protected long mAvailableSize;
    protected String mCurrentStorage;
    private boolean mIsOneShot;
    protected final Map<String, StorageState> mLatestCheckedStorageState;
    private final List<StorageListener> mListeners;
    protected MessagePopup mMessagePopup;
    protected final Map<String, Integer> mStoragePriority;
    protected final Map<String, StorageState> mStorageStatus;
    protected ViewFinderInterface mViewFinder;

    static;

    public StorageController(ViewFinderInterface var1);

    private void notifyAvailableSize(long var1);

    private void notifyStateChanged(String var1);

    private void notifyStorageChanged();

    public void addStorageListener(StorageListener var1);

    protected void checkAllState(String var1, CameraStorageManager.DetailStorageState var2, boolean var3, boolean var4);

    protected void checkAndNotifyStateChanged(String var1, boolean var2);

    protected void closeDialog(DialogInterface var1);

    protected void closeDialog(boolean var1);

    public long getAvailableStorageSize();

    public StorageState getCurrentStorageState();

    public boolean isCurrentStorageExternal();

    protected boolean isOneShotMode();

    public boolean isStorageDialogOpen();

    public boolean isToggledStorageReady();

    public void pause();

    public void release();

    public void removeStorageListener(StorageListener var1);

    protected void requestErrorCheckLater(String var1);

    protected void setAvailableStorageSize(long var1);

    public void setCurrentStorage(String var1);

    public void setMessegePopup(MessagePopup var1);

    public void setOneShotMode(boolean var1);

    public void setStorage(String var1, int var2);

    protected boolean showOrClearStorageErrorPopup(StorageState var1);

    protected boolean showStoragePopup(int var1, int var2, boolean var3);

    public void updateStorageState(String var1, CameraStorageManager.DetailStorageState var2);

    public static interface StorageDialogStateListener {
        public void onCloseStorageDialog();

        public void onOpenStorageDialog();
    }

    public static interface StorageListener {
        public void onAvailableSizeUpdated(long var1);

        public void onDestinationToSaveChanged();

        public void onStorageStateChanged(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class StorageState
    extends Enum<StorageState> {
        private static final /* synthetic */ StorageState[] $VALUES;
        public static final /* enum */ StorageState AVAILABLE;
        public static final /* enum */ StorageState FULL;
        public static final /* enum */ StorageState REMOVED;
        static final String TAG;
        public static final /* enum */ StorageState UNAVAILABLE;
        private final List<CameraStorageManager.DetailStorageState> mDetailStateList;

        static;

        private /* varargs */ StorageState(CameraStorageManager.DetailStorageState ... var3);

        public static StorageState getState(CameraStorageManager.DetailStorageState var0);

        public static StorageState valueOf(String var0);

        public static StorageState[] values();
    }

}

