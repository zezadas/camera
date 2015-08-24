/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.DialogInterface;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import java.util.Map;
import java.util.Set;

public class StorageAutoSwitchController
extends StorageController {
    static final String TAG = StorageAutoSwitchController.class.getSimpleName();
    private RotatableDialog mDualStorageDialog = null;
    private StorageAutoSwitchListener mStorageAutoSwitchListener;

    public StorageAutoSwitchController(StorageAutoSwitchListener storageAutoSwitchListener, ViewFinderInterface viewFinderInterface) {
        super(viewFinderInterface);
        this.mStorageAutoSwitchListener = storageAutoSwitchListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean checkBetterStorage(String string, boolean bl) {
        if (!(!this.isOneShotMode() && this.hasBetterStorage(string) && (bl || this.mStorageStatus.get(this.mCurrentStorage) != StorageController.StorageState.AVAILABLE))) {
            return false;
        }
        return true;
    }

    private void switchStorage() {
        if (this.getCurrentStorageState() == StorageController.StorageState.AVAILABLE) {
            this.closeDialog(false);
            this.showPopupDualStorageAvailable();
            return;
        }
        if (!this.isCurrentStorageExternal() || this.mStorageAutoSwitchListener.shouldShowDialogOnStorageSettingChangedToInternal()) {
            this.showDialogForForceChanged(this.getCurrentStorageState());
        }
        this.mStorageAutoSwitchListener.onStorageAutoSwitch(this.mCurrentStorage);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void checkAllState(String string, CameraStorageManager.DetailStorageState iterator, boolean bl, boolean bl2) {
        if (this.mViewFinder.isHeadUpDesplayReady()) {
            for (String string2 : this.mStoragePriority.keySet()) {
                this.checkAndNotifyStateChanged(string, bl2);
                if (!this.mCurrentStorage.equals(string2)) continue;
                if (this.checkBetterStorage(string, bl)) {
                    this.switchStorage();
                    continue;
                }
                this.showOrClearStorageErrorPopup(this.getCurrentStorageState());
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected int getTextIdForForceChanged(StorageController.StorageState storageState) {
        if (this.isCurrentStorageExternal()) {
            switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState[storageState.ordinal()]) {
                default: {
                    do {
                        return -1;
                        break;
                    } while (true);
                }
                case 2: {
                    return R.string.cam_strings_change_full_storage_to_internal_txt;
                }
                case 3: 
                case 4: 
            }
            return R.string.cam_strings_error_storage_changing_to_internal_txt;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState[storageState.ordinal()]) {
            case 1: {
                return -1;
            }
            default: {
                return -1;
            }
            case 2: {
                return R.string.cam_strings_error_internal_memory_full_txt;
            }
            case 3: 
            case 4: 
        }
        return R.string.cam_strings_error_internal_memory_unavailable_txt;
    }

    protected boolean hasBetterStorage(String object) {
        int n = (Integer)this.mStoragePriority.get(this.mCurrentStorage);
        if (!this.mStorageAutoSwitchListener.canSwitchStorage()) {
            this.requestErrorCheckLater((String)object);
            return false;
        }
        if (this.mStorageStatus.get(this.mCurrentStorage) != StorageController.StorageState.AVAILABLE) {
            n = 100;
        }
        for (String string : this.mStoragePriority.keySet()) {
            if ((Integer)this.mStoragePriority.get(string) >= n || this.mStorageStatus.get(string) != StorageController.StorageState.AVAILABLE) continue;
            return true;
        }
        return false;
    }

    @Override
    public boolean isToggledStorageReady() {
        boolean bl = false;
        for (String string : this.mStoragePriority.keySet()) {
            if (string.equals(this.mCurrentStorage) || this.mStorageStatus.get(string) != StorageController.StorageState.AVAILABLE) continue;
            bl = true;
        }
        return bl;
    }

    @Override
    public void setStorage(String string, int n) {
        this.mStoragePriority.put(string, n);
    }

    protected boolean showDialogForForceChanged(StorageController.StorageState storageState) {
        int n = this.getTextIdForForceChanged(storageState);
        int n2 = R.string.cam_strings_save_destination_title_txt;
        this.closeDialog(false);
        return this.showStoragePopup(n, n2, false);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected boolean showOrClearStorageErrorPopup(StorageController.StorageState var1_1) {
        var2_2 = -1;
        var3_3 = R.string.cam_strings_error_memory_title_txt;
        if (this.isCurrentStorageExternal()) {
            switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState[this.getCurrentStorageState().ordinal()]) {
                case 1: {
                    this.closeDialog(true);
                    ** break;
                }
                case 2: {
                    var2_2 = R.string.cam_strings_error_internal_sd_full_txt;
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
                var2_2 = R.string.cam_strings_error_internal_sd_full_txt;
                return this.showStoragePopup(var2_2, var3_3, true);
            }
            case 3: 
            case 4: 
        }
        var2_2 = R.string.cam_strings_error_memory_ims_unavailable_txt;
        return this.showStoragePopup(var2_2, var3_3, true);
    }

    protected boolean showPopupDualStorageAvailable() {
        boolean bl;
        int n = R.string.cam_strings_change_storage_to_sd_txt;
        boolean bl2 = bl = false;
        if (n > 0) {
            if (this.mDualStorageDialog != null) {
                return true;
            }
            this.mDualStorageDialog = this.mMessagePopup.showOkAndCancelStorage(n, R.string.cam_strings_save_destination_title_txt, false, R.string.cam_strings_change_txt, R.string.cam_strings_cancel_txt, new DialogOkClickListener(), new DialogCancelClickListener(), new DialogCancelListener(), new DialogDismissListener());
            bl2 = bl;
            if (this.mDualStorageDialog != null) {
                bl2 = true;
            }
        }
        return bl2;
    }

    private class DialogCancelClickListener
    implements DialogInterface.OnClickListener {
        private DialogCancelClickListener() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            StorageAutoSwitchController.this.closeDialog(dialogInterface);
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    private class DialogCancelListener
    implements DialogInterface.OnCancelListener {
        private DialogCancelListener() {
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            StorageAutoSwitchController.this.closeDialog(dialogInterface);
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    private class DialogDismissListener
    implements DialogInterface.OnDismissListener {
        private DialogDismissListener() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    private class DialogOkClickListener
    implements DialogInterface.OnClickListener {
        private DialogOkClickListener() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            StorageAutoSwitchController.this.mStorageAutoSwitchListener.onStorageAutoSwitch(StorageAutoSwitchController.this.mCurrentStorage);
            StorageAutoSwitchController.this.closeDialog(dialogInterface);
            StorageAutoSwitchController.this.mDualStorageDialog = null;
        }
    }

    public static interface StorageAutoSwitchListener {
        public boolean canSwitchStorage();

        public void onStorageAutoSwitch(String var1);

        public boolean shouldShowDialogOnStorageSettingChangedToInternal();
    }

}

