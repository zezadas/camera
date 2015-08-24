/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.DialogInterface;
import android.os.Environment;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class StorageController {
    static final String TAG = StorageController.class.getSimpleName();
    protected long mAvailableSize;
    protected String mCurrentStorage = Environment.getExternalStorageDirectory().getPath();
    private boolean mIsOneShot;
    protected final Map<String, StorageState> mLatestCheckedStorageState = new HashMap<String, StorageState>();
    private final List<StorageListener> mListeners = new ArrayList<StorageListener>();
    protected MessagePopup mMessagePopup = null;
    protected final Map<String, Integer> mStoragePriority = new HashMap<String, Integer>();
    protected final Map<String, StorageState> mStorageStatus = new HashMap<String, StorageState>();
    protected ViewFinderInterface mViewFinder;

    public StorageController(ViewFinderInterface viewFinderInterface) {
        this.mViewFinder = viewFinderInterface;
    }

    private void notifyAvailableSize(long l) {
        Iterator<StorageListener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onAvailableSizeUpdated(l);
        }
    }

    private void notifyStateChanged(String string) {
        Iterator<StorageListener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onStorageStateChanged(string);
        }
    }

    private void notifyStorageChanged() {
        Iterator<StorageListener> iterator = this.mListeners.iterator();
        while (iterator.hasNext()) {
            iterator.next().onDestinationToSaveChanged();
        }
    }

    public void addStorageListener(StorageListener storageListener) {
        if (!this.mListeners.contains(storageListener)) {
            this.mListeners.add(storageListener);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void checkAllState(String iterator, CameraStorageManager.DetailStorageState detailStorageState, boolean bl, boolean bl2) {
        if (this.mViewFinder.isHeadUpDesplayReady()) {
            for (String string : this.mStoragePriority.keySet()) {
                if (this.mCurrentStorage.equals(string)) {
                    this.showOrClearStorageErrorPopup(StorageState.getState(detailStorageState));
                }
                this.checkAndNotifyStateChanged(string, bl2);
            }
        }
    }

    protected void checkAndNotifyStateChanged(String string, boolean bl) {
        if (this.mLatestCheckedStorageState.get(string) != this.mStorageStatus.get(string) || bl) {
            this.mLatestCheckedStorageState.put(string, this.mStorageStatus.get(string));
            this.notifyStateChanged(string);
        }
        this.notifyAvailableSize(this.mAvailableSize);
    }

    protected void closeDialog(DialogInterface dialogInterface) {
        if (this.mMessagePopup != null && this.mMessagePopup.isMemoryErrorPopupOpened()) {
            this.mMessagePopup.cancelMemoryErrorPopup(dialogInterface);
        }
    }

    protected void closeDialog(boolean bl) {
        if (this.mMessagePopup != null && this.mMessagePopup.isMemoryErrorPopupOpened()) {
            this.mMessagePopup.cancelMemoryErrorPopup(bl);
        }
    }

    public long getAvailableStorageSize() {
        return this.mAvailableSize;
    }

    public StorageState getCurrentStorageState() {
        return this.mStorageStatus.get(this.mCurrentStorage);
    }

    public boolean isCurrentStorageExternal() {
        return this.mStoragePriority.get(this.mCurrentStorage).equals(0);
    }

    protected boolean isOneShotMode() {
        return this.mIsOneShot;
    }

    public boolean isStorageDialogOpen() {
        return this.mMessagePopup.isMemoryErrorPopupOpened();
    }

    public boolean isToggledStorageReady() {
        boolean bl = false;
        for (String string : this.mStoragePriority.keySet()) {
            if (string.equals(this.mCurrentStorage) || this.mStorageStatus.get(string) != StorageState.AVAILABLE) continue;
            bl = true;
        }
        return bl;
    }

    public void pause() {
        this.closeDialog(false);
    }

    public void release() {
        this.mListeners.clear();
    }

    public void removeStorageListener(StorageListener storageListener) {
        if (this.mListeners.contains(storageListener)) {
            this.mListeners.remove(storageListener);
        }
    }

    protected void requestErrorCheckLater(String string) {
        this.mLatestCheckedStorageState.put(string, StorageState.AVAILABLE);
    }

    protected void setAvailableStorageSize(long l) {
        this.mAvailableSize = l;
    }

    public void setCurrentStorage(String string) {
        this.mCurrentStorage = string;
        DcfPathBuilder.getInstance().resetStatus();
        this.notifyStorageChanged();
    }

    public void setMessegePopup(MessagePopup messagePopup) {
        this.mMessagePopup = messagePopup;
    }

    public void setOneShotMode(boolean bl) {
        this.mIsOneShot = bl;
    }

    public void setStorage(String string, int n) {
        this.mStoragePriority.put(string, n);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    protected boolean showOrClearStorageErrorPopup(StorageState var1_1) {
        var2_2 = -1;
        var3_3 = R.string.cam_strings_error_memory_title_txt;
        if (this.isCurrentStorageExternal()) {
            switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState[this.getCurrentStorageState().ordinal()]) {
                case 1: {
                    this.closeDialog(true);
                    ** break;
                }
                case 2: {
                    var2_2 = R.string.cam_strings_error_memory_full_txt;
                }
lbl10: // 3 sources:
                default: {
                    return this.showStoragePopup(var2_2, var3_3, true);
                }
                case 3: 
                case 4: 
            }
            var2_2 = R.string.cam_strings_error_memory_unavailable_txt;
            return this.showStoragePopup(var2_2, var3_3, true);
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState[this.getCurrentStorageState().ordinal()]) {
            default: {
                return this.showStoragePopup(var2_2, var3_3, true);
            }
            case 1: {
                this.closeDialog(true);
                return this.showStoragePopup(var2_2, var3_3, true);
            }
            case 2: {
                var2_2 = R.string.cam_strings_error_memory_ims_full_txt;
                return this.showStoragePopup(var2_2, var3_3, true);
            }
            case 3: 
            case 4: 
        }
        var2_2 = R.string.cam_strings_error_memory_ims_unavailable_txt;
        return this.showStoragePopup(var2_2, var3_3, true);
    }

    protected boolean showStoragePopup(int n, int n2, boolean bl) {
        boolean bl2;
        boolean bl3 = bl2 = false;
        if (n > 0) {
            bl3 = bl2;
            if (this.mMessagePopup.showMemoryError(n, n2, bl) != null) {
                bl3 = true;
            }
        }
        return bl3;
    }

    public void updateStorageState(String string, CameraStorageManager.DetailStorageState enum_) {
        if (!this.mStoragePriority.containsKey(string)) {
            return;
        }
        enum_ = StorageState.getState((CameraStorageManager.DetailStorageState)enum_);
        this.mStorageStatus.put(string, (StorageState)enum_);
    }

    public static interface StorageDialogStateListener {
        public void onCloseStorageDialog();

        public void onOpenStorageDialog();
    }

    public static interface StorageListener {
        public void onAvailableSizeUpdated(long var1);

        public void onDestinationToSaveChanged();

        public void onStorageStateChanged(String var1);
    }

    public static enum StorageState {
        REMOVED(CameraStorageManager.DetailStorageState.MEMORY_ERR_NO_MEMORY_CARD),
        AVAILABLE(CameraStorageManager.DetailStorageState.MEMORY_READY, CameraStorageManager.DetailStorageState.MEMORY_READY_LOW),
        UNAVAILABLE(CameraStorageManager.DetailStorageState.MEMORY_ERR_ACCESS, CameraStorageManager.DetailStorageState.MEMORY_ERR_FORMAT, CameraStorageManager.DetailStorageState.MEMORY_ERR_READ_ONLY, CameraStorageManager.DetailStorageState.MEMORY_ERR_SHARED, CameraStorageManager.DetailStorageState.MEMORY_NO_DCIM),
        FULL(CameraStorageManager.DetailStorageState.MEMORY_ERR_FULL);
        
        static final String TAG;
        private final List<CameraStorageManager.DetailStorageState> mDetailStateList;

        static {
            TAG = StorageState.class.getSimpleName();
        }

        private /* varargs */ StorageState(CameraStorageManager.DetailStorageState ... arrdetailStorageState) {
            this.mDetailStateList = Collections.unmodifiableList(Arrays.asList(arrdetailStorageState));
        }

        public static StorageState getState(CameraStorageManager.DetailStorageState detailStorageState) {
            for (StorageState storageState : StorageState.values()) {
                Iterator<CameraStorageManager.DetailStorageState> iterator = storageState.mDetailStateList.iterator();
                while (iterator.hasNext()) {
                    if (!detailStorageState.equals((Object)iterator.next())) continue;
                    return storageState;
                }
            }
            return UNAVAILABLE;
        }
    }

}

