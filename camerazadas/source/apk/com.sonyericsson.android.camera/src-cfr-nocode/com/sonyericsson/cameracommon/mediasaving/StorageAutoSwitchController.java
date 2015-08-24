/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.DialogInterface;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class StorageAutoSwitchController
extends StorageController {
    static final String TAG;
    private RotatableDialog mDualStorageDialog;
    private StorageAutoSwitchListener mStorageAutoSwitchListener;

    static;

    public StorageAutoSwitchController(StorageAutoSwitchListener var1, ViewFinderInterface var2);

    static /* synthetic */ StorageAutoSwitchListener access$000(StorageAutoSwitchController var0);

    static /* synthetic */ RotatableDialog access$102(StorageAutoSwitchController var0, RotatableDialog var1);

    private boolean checkBetterStorage(String var1, boolean var2);

    private void switchStorage();

    @Override
    protected void checkAllState(String var1, CameraStorageManager.DetailStorageState var2, boolean var3, boolean var4);

    protected int getTextIdForForceChanged(StorageController.StorageState var1);

    protected boolean hasBetterStorage(String var1);

    @Override
    public boolean isToggledStorageReady();

    @Override
    public void setStorage(String var1, int var2);

    protected boolean showDialogForForceChanged(StorageController.StorageState var1);

    @Override
    protected boolean showOrClearStorageErrorPopup(StorageController.StorageState var1);

    protected boolean showPopupDualStorageAvailable();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DialogCancelClickListener
    implements DialogInterface.OnClickListener {
        final /* synthetic */ StorageAutoSwitchController this$0;

        private DialogCancelClickListener(StorageAutoSwitchController var1);

        /* synthetic */ DialogCancelClickListener(StorageAutoSwitchController var1,  var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DialogCancelListener
    implements DialogInterface.OnCancelListener {
        final /* synthetic */ StorageAutoSwitchController this$0;

        private DialogCancelListener(StorageAutoSwitchController var1);

        /* synthetic */ DialogCancelListener(StorageAutoSwitchController var1,  var2);

        @Override
        public void onCancel(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DialogDismissListener
    implements DialogInterface.OnDismissListener {
        final /* synthetic */ StorageAutoSwitchController this$0;

        private DialogDismissListener(StorageAutoSwitchController var1);

        /* synthetic */ DialogDismissListener(StorageAutoSwitchController var1,  var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DialogOkClickListener
    implements DialogInterface.OnClickListener {
        final /* synthetic */ StorageAutoSwitchController this$0;

        private DialogOkClickListener(StorageAutoSwitchController var1);

        /* synthetic */ DialogOkClickListener(StorageAutoSwitchController var1,  var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    public static interface StorageAutoSwitchListener {
        public boolean canSwitchStorage();

        public void onStorageAutoSwitch(String var1);

        public boolean shouldShowDialogOnStorageSettingChangedToInternal();
    }

}

