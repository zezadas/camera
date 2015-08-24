/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.messagepopup;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.activity.TerminateListener;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import com.sonyericsson.cameracommon.utility.RegionConfig;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;

public class MessagePopup
implements BaseActivity.LayoutOrientationChangedListener,
RotatableDialog.StateListener {
    private static final float DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP = 14.0f;
    public static final int NO_RESOURCE_ID = -1;
    private static final String TAG = "MessagePopup";
    private static final int TERMINATE_WAIT_TIME = 4000;
    private Activity mActivity;
    private RotatableDialog mCurrentDialog;
    private RotatableDialog mDeviceErrorPopup = null;
    private RotatableDialog mDialogOk = null;
    private RotatableDialog mDialogOkMandatory = null;
    private RotatableDialog mDialogThermal = null;
    private RotatableDialog mDisclaimerDialog = null;
    private final DialogInterface.OnKeyListener mKeyEventKiller = new KeyEventKiller();
    private final Handler mMessageHandler;
    private RotatableDialog mOkAndCancelCustomViewPopup = null;
    private RotatableDialog mOkAndCancelPopup = null;
    private RotatableDialog mOkAndCustomViewPopup;
    private RotatableDialog mOkAndCustomViewPopupContinuouslyUsed;
    private final LinkedList<RotatableDialog> mPendingDialogQueue = new LinkedList();
    private RotatableToast mRotatableToast = null;
    private int mSensorOrientation = 2;
    private RotatableDialog mShareSelection = null;
    private MessagePopupStateListener mStateListener = null;
    private StorageController.StorageDialogStateListener mStorageDialogStateListener;
    private RotatableDialog mStorageErrorPopup = null;
    private boolean mStorageErrorPopupIsError = false;
    private int mStorageErrorPopupTextId = -1;
    private AlertDialog mStoreProgressDialog;
    private AlertDialog mStoreProgressDialogMultiAngle;
    private TerminateListener mTerminateListener;

    public MessagePopup(Activity activity, TerminateListener terminateListener) {
        this.mActivity = activity;
        this.mTerminateListener = terminateListener;
        this.mMessageHandler = new Handler();
    }

    private void cancelMemoryErrorPopup() {
        if (this.mStorageErrorPopup != null) {
            this.mStorageErrorPopup.cancel();
        }
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.cancel();
        }
    }

    private RotatableDialog createDialogOkAndCancel(int n, int n2, boolean bl, int n3, int n4, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        RotatableDialog.Builder builder;
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.dismiss();
            this.mOkAndCancelPopup = null;
        }
        if ((builder = this.createBuilder()) == null) {
            return null;
        }
        if (n2 != -1) {
            builder.setTitle(n2);
        }
        if (bl) {
            builder.setAlertIcon();
        }
        if (n != -1) {
            builder.setMessage(n);
        }
        builder.setPositiveButton(n3, (DialogInterface.OnClickListener)new OnClickWrapOkCancelListener(onClickListener));
        builder.setNegativeButton(n4, (DialogInterface.OnClickListener)new OnClickWrapOkCancelListener(onClickListener2));
        builder.setOnCancelListener(new OnCancelWrapOkCancelListener(onCancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        this.mOkAndCancelPopup = this.show(builder);
        return this.mOkAndCancelPopup;
    }

    private String getStringFieldNameForDebug(int n) {
        return "";
    }

    private int getThermalCriticalString() {
        if (BrandConfig.isVerizonBrand()) {
            return R.string.cam_strings_error_high_temp_shutting_down_vzw_txt;
        }
        return R.string.cam_strings_error_high_temp_shutting_down_txt;
    }

    private void lazyAbort() {
        this.mMessageHandler.postDelayed(new Runnable(){

            @Override
            public void run() {
                MessagePopup.this.mTerminateListener.terminateApplication();
            }
        }, 4000);
    }

    private void onCancelMemoryErrorPopup(DialogInterface dialogInterface) {
        if (this.mStorageErrorPopup != null && (!this.mStorageErrorPopup.isShowing() || this.mStorageErrorPopup.isShown(dialogInterface))) {
            this.mStorageErrorPopup = null;
            this.mStorageErrorPopupIsError = false;
            this.mStorageErrorPopupTextId = -1;
        }
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup = null;
        }
        this.notifyCloseDialog();
    }

    private void onClose(RotatableDialog rotatableDialog) {
        Iterator<RotatableDialog> iterator = this.mPendingDialogQueue.iterator();
        while (iterator.hasNext()) {
            if (iterator.next() != rotatableDialog) continue;
            iterator.remove();
        }
        if (this.mCurrentDialog == rotatableDialog) {
            this.mCurrentDialog = null;
            rotatableDialog = this.mPendingDialogQueue.pollFirst();
            if (rotatableDialog != null) {
                this.mCurrentDialog = rotatableDialog;
                rotatableDialog.setOrientation(this.mSensorOrientation);
                rotatableDialog.show();
            }
        }
    }

    private void sendGoogleAnalyticsCameraNotAvailableEvent() {
        GoogleAnalyticsUtil.getInstance().setCameraNotAvailableFailedToOpen();
        GoogleAnalyticsUtil.getInstance().sendCameraNotAvailableEvent();
    }

    private void setDefaultDialogButtonFontSize(AlertDialog alertDialog) {
        this.setDefaultDialogButtonFontSize(alertDialog, -1);
        this.setDefaultDialogButtonFontSize(alertDialog, -2);
        this.setDefaultDialogButtonFontSize(alertDialog, -3);
    }

    private void setDefaultDialogButtonFontSize(AlertDialog callback, int n) {
        if ((callback = callback.getButton(n)) != null) {
            callback.setTextSize(1, 14.0f);
        }
    }

    private RotatableDialog show(RotatableDialog.Builder builder) {
        if (this.mCurrentDialog != null) {
            this.mCurrentDialog.hide();
            this.mPendingDialogQueue.push(this.mCurrentDialog);
        }
        builder.setOrientation(this.mSensorOrientation);
        this.mCurrentDialog = builder.createRotatableDialog();
        this.mCurrentDialog.setStateListener(this);
        this.mCurrentDialog.show();
        return this.mCurrentDialog;
    }

    private RotatableDialog showDeviceError(RotatableDialog.Builder builder) {
        if (this.mStorageErrorPopup != null) {
            this.cancelMemoryErrorPopup();
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.dismiss();
        }
        if (this.mDeviceErrorPopup == null) {
            ErrorExitListener errorExitListener = new ErrorExitListener();
            builder.setOnCancelListener(errorExitListener);
            builder.setOnDismissListener(errorExitListener);
            builder.setCancelable(Cancelable.True, Cancelable.False);
            this.mDeviceErrorPopup = this.show(builder);
        }
        return this.mDeviceErrorPopup;
    }

    private RotatableDialog showOkDialogImpl(int n, int n2, boolean bl, int n3, ShowOkListenerBase showOkListenerBase) {
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(n2);
        if (bl) {
            builder.setAlertIcon();
        }
        if (n != -1) {
            builder.setMessage(n);
        }
        builder.setPositiveButton(n3, (DialogInterface.OnClickListener)showOkListenerBase);
        builder.setOnDismissListener(showOkListenerBase);
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        return this.show(builder);
    }

    public void cancelMemoryErrorPopup(DialogInterface dialogInterface) {
        if (this.mStorageErrorPopup != null && this.mStorageErrorPopup.isShown(dialogInterface) || this.mOkAndCancelPopup != null && this.mOkAndCancelPopup.isShown(dialogInterface)) {
            this.cancelMemoryErrorPopup();
        }
    }

    public void cancelMemoryErrorPopup(boolean bl) {
        if (this.mStorageErrorPopup == null || bl && !this.mStorageErrorPopupIsError) {
            return;
        }
        this.cancelMemoryErrorPopup();
    }

    public void closeMessage() {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public RotatableDialog.Builder createBuilder() {
        if (this.mActivity == null || this.mActivity.isFinishing()) {
            return null;
        }
        RotatableDialog.Builder builder = new RotatableDialog.Builder(this.mActivity);
        builder.setOnKeyListener(this.mKeyEventKiller);
        return builder;
    }

    public boolean isMemoryErrorPopupOpened() {
        if (this.mStorageErrorPopup != null || this.mOkAndCancelPopup != null) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isMemoryErrorPopupOpened(DialogInterface dialogInterface) {
        if (this.mStorageErrorPopup != null && this.mStorageErrorPopup.isShown(dialogInterface) || this.mOkAndCancelPopup != null && this.mOkAndCancelPopup.isShown(dialogInterface)) {
            return true;
        }
        return false;
    }

    protected void notifyCloseDialog() {
        this.mStorageDialogStateListener.onCloseStorageDialog();
    }

    protected void notifyOpenDialog() {
        this.mStorageDialogStateListener.onOpenStorageDialog();
    }

    @Override
    public void onCancel(RotatableDialog rotatableDialog) {
        this.onClose(rotatableDialog);
    }

    @Override
    public void onDismiss(RotatableDialog rotatableDialog) {
        this.onClose(rotatableDialog);
    }

    @Override
    public void onHide(RotatableDialog rotatableDialog) {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation layoutOrientation) {
        int n;
        switch (.$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation[layoutOrientation.ordinal()]) {
            default: {
                n = 2;
                break;
            }
            case 1: {
                n = 1;
            }
        }
        this.setSensorOrientation(n);
    }

    @Override
    public void onShow(RotatableDialog rotatableDialog) {
    }

    public void release() {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
            this.mRotatableToast = null;
        }
        if (this.mStorageErrorPopup != null) {
            this.mStorageErrorPopup.setOnDismissListener(null);
            this.mStorageErrorPopup.dismiss();
            this.mStorageErrorPopup = null;
        }
        if (this.mDeviceErrorPopup != null) {
            this.mDeviceErrorPopup.setOnDismissListener(null);
            this.mDeviceErrorPopup.dismiss();
            this.mDeviceErrorPopup = null;
        }
        if (this.mOkAndCustomViewPopup != null) {
            this.mOkAndCustomViewPopup.dismiss();
            this.mOkAndCustomViewPopup = null;
        }
        if (this.mOkAndCustomViewPopupContinuouslyUsed != null) {
            this.mOkAndCustomViewPopupContinuouslyUsed.dismiss();
            this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.dismiss();
            this.mOkAndCancelPopup = null;
        }
        if (this.mShareSelection != null) {
            this.mShareSelection.dismiss();
            this.mShareSelection = null;
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.setOnDismissListener(null);
            this.mOkAndCancelCustomViewPopup.dismiss();
            this.mOkAndCancelCustomViewPopup = null;
        }
        if (this.mDialogOk != null) {
            this.mDialogOk.dismiss();
            this.mDialogOk = null;
        }
        if (this.mDialogOkMandatory != null) {
            this.mDialogOkMandatory.dismiss();
            this.mDialogOkMandatory = null;
        }
        if (this.mDialogThermal != null) {
            this.mDialogThermal.dismiss();
            this.mDialogThermal = null;
        }
        this.mMessageHandler.removeCallbacksAndMessages(null);
        this.mCurrentDialog = null;
        this.mPendingDialogQueue.clear();
    }

    public void releaseContext() {
        this.mActivity = null;
        this.release();
    }

    public void setMessagePopupStateListener(MessagePopupStateListener messagePopupStateListener) {
        this.mStateListener = messagePopupStateListener;
    }

    public void setSensorOrientation(int n) {
        this.mSensorOrientation = n;
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.setOrientation(n);
        }
        if (this.mOkAndCustomViewPopup != null) {
            this.mOkAndCustomViewPopup.setOrientation(n);
        }
        if (this.mOkAndCustomViewPopupContinuouslyUsed != null) {
            this.mOkAndCustomViewPopupContinuouslyUsed.setOrientation(n);
        }
        if (this.mStorageErrorPopup != null) {
            this.mStorageErrorPopup.setOrientation(n);
        }
        if (this.mDeviceErrorPopup != null) {
            this.mDeviceErrorPopup.setOrientation(n);
        }
        if (this.mShareSelection != null) {
            this.mShareSelection.setOrientation(n);
        }
        if (this.mRotatableToast != null) {
            this.mRotatableToast.setSensorOrientation(n);
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.setOrientation(n);
        }
        if (this.mDialogOk != null) {
            this.mDialogOk.setOrientation(n);
        }
        if (this.mDialogOkMandatory != null) {
            this.mDialogOkMandatory.setOrientation(n);
        }
        if (this.mDialogThermal != null) {
            this.mDialogThermal.setOrientation(n);
        }
        if (this.mCurrentDialog != null) {
            this.mCurrentDialog.setOrientation(n);
        }
    }

    public void setStorageDialogStateListener(StorageController.StorageDialogStateListener storageDialogStateListener) {
        this.mStorageDialogStateListener = storageDialogStateListener;
    }

    public void showCameraDisabledMessage() {
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return;
        }
        builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
        builder.setMessage(R.string.cam_strings_use_of_camera_not_authorized_txt);
        this.showDeviceError(builder);
    }

    public void showCameraDisabledMessageOk() {
        ErrorExitListener errorExitListener = new ErrorExitListener();
        this.showOk(R.string.cam_strings_use_of_camera_not_authorized_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, null, errorExitListener);
    }

    public void showCameraNotAvailableError(boolean bl, boolean bl2) {
        if (bl) {
            if (bl2) {
                this.showCameraDisabledMessageOk();
                return;
            }
            this.showCameraDisabledMessage();
            return;
        }
        if (bl2) {
            this.showDeviceErrorMessageOk();
            return;
        }
        this.showDeviceErrorMessage();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void showConfirmLocationAccess(Activity activity, boolean bl, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener, CompoundButton.OnCheckedChangeListener object) {
        int n;
        View view;
        Object object2;
        if (activity == null || (object2 = activity.getLayoutInflater()) == null) {
            return;
        }
        if (bl) {
            n = R.string.cam_strings_remember_geotag_title_txt;
            object2 = object2.inflate(R.layout.dialog_remember_geo_tag_content, null);
            view = (CheckBox)object2.findViewById(R.id.check_box_do_not_show_again);
            view.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)object);
            view.setChecked(true);
            object = object2;
        } else {
            n = R.string.cam_strings_cta_title_txt;
            object = object2.inflate(R.layout.dialog_confirm_location_access_content, null);
        }
        object2 = (TextView)object.findViewById(R.id.text_cta_dialog_subtitle);
        view = (TextView)object.findViewById(R.id.text_cta_location_info);
        if (RegionConfig.isChinaRegion(this.mActivity)) {
            object2.setText((CharSequence)String.format(Locale.US, activity.getResources().getString(R.string.cam_strings_dialog_cta_access_txt), activity.getResources().getString(R.string.cam_strings_application_name_txt)));
            object2.setVisibility(0);
            view.setVisibility(0);
        } else {
            object2.setVisibility(8);
            view.setVisibility(8);
        }
        this.showOkAndCancelCustomView((View)object, n, false, R.string.cam_strings_dialog_cta_allow_txt, R.string.cam_strings_dialog_cta_deny_txt, onClickListener, onClickListener2, onCancelListener);
    }

    public void showDeviceErrorMessage() {
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return;
        }
        builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
        builder.setMessage(R.string.cam_strings_error_device_not_available_txt);
        this.showDeviceError(builder);
        this.sendGoogleAnalyticsCameraNotAvailableEvent();
    }

    public void showDeviceErrorMessageOk() {
        ErrorExitListener errorExitListener = new ErrorExitListener();
        this.showOk(R.string.cam_strings_error_device_not_available_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, null, errorExitListener);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void showDisclaimer(BaseActivity baseActivity, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnDismissListener onDismissListener) {
        Object object = baseActivity.getLayoutInflater();
        if (object == null) {
            return;
        }
        object = object.inflate(R.layout.disclaimer_content, null);
        CheckBox checkBox = (CheckBox)object.findViewById(R.id.check_box);
        checkBox.setText(Html.fromHtml(baseActivity.getResources().getString(R.string.cam_strings_term_of_use_consent_txt)));
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){

            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean bl) {
                if (MessagePopup.this.mDisclaimerDialog != null) {
                    if (bl) {
                        MessagePopup.this.mDisclaimerDialog.setPositiveButtonEnabled(true);
                    }
                } else {
                    return;
                }
                MessagePopup.this.mDisclaimerDialog.setPositiveButtonEnabled(false);
            }
        });
        checkBox.setMovementMethod(LinkMovementMethod.getInstance());
        this.mDisclaimerDialog = this.showOkAndCancelCustomView((View)object, R.string.cam_strings_term_of_use_title_txt, false, R.string.cam_strings_term_of_use_accept_txt, R.string.cam_strings_term_of_use_decline_txt, onClickListener, onClickListener2, null);
        checkBox.setChecked(false);
        if (this.mDisclaimerDialog == null) return;
        this.mDisclaimerDialog.setPositiveButtonEnabled(false);
        this.mDisclaimerDialog.setOnDismissListener(onDismissListener);
    }

    public RotatableDialog showErrorOkAndCancelExit(int n, boolean bl, int n2, int n3, DialogInterface.OnClickListener onClickListener, int n4, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnDismissListener onDismissListener, DialogInterface.OnKeyListener onKeyListener) {
        if (this.mOkAndCancelPopup == null) {
            onDismissListener = new OnDismissWrapErrorExitListener(onDismissListener);
            RotatableDialog.Builder builder = this.createBuilder();
            if (builder == null) {
                return null;
            }
            if (n != -1) {
                builder.setTitle(n);
            }
            if (bl) {
                builder.setAlertIcon();
            }
            if (n2 != -1) {
                builder.setMessage(n2);
            }
            builder.setPositiveButton(n3, onClickListener);
            if (n4 != -1) {
                builder.setNegativeButton(n4, onClickListener2);
            }
            builder.setOnDismissListener(onDismissListener);
            builder.setCancelable(Cancelable.True, Cancelable.False);
            builder.setOnKeyListener(onKeyListener);
            this.mOkAndCancelPopup = this.show(builder);
        }
        return this.mOkAndCancelPopup;
    }

    public RotatableDialog showErrorOkExit(int n, boolean bl, int n2, int n3, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener, DialogInterface.OnKeyListener onKeyListener) {
        return this.showErrorOkAndCancelExit(n, bl, n2, n3, onClickListener, -1, null, onDismissListener, onKeyListener);
    }

    public RotatableDialog showErrorUncancelable(int n, int n2, boolean bl) {
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(n2);
        if (bl) {
            builder.setAlertIcon();
        }
        if (n != -1) {
            builder.setMessage(n);
        }
        builder.setOnCancelListener(new ErrorExitListener());
        builder.setCancelable(Cancelable.UseDefault, Cancelable.False);
        return this.show(builder);
    }

    public void showLaunchSettingAppDialog(Activity activity, GeotagSettingListener geotagSettingListener) {
        if (this.mActivity == null) {
            this.mActivity = activity;
        }
        this.showOkAndCancel(R.string.cam_strings_advanced_setting_geo_tag_both_off_txt, R.string.cam_strings_advanced_setting_geo_tag_title_txt, false, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, new LaunchSettingAppDialogListener(null), new LaunchSettingAppDialogListener(geotagSettingListener), new LaunchSettingAppDialogListener(geotagSettingListener));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public RotatableDialog showMemoryError(int n, int n2, boolean bl) {
        if (this.mDeviceErrorPopup != null) {
            return null;
        }
        if (this.mStorageErrorPopup != null) {
            if (this.mStorageErrorPopupTextId == n) {
                return this.mStorageErrorPopup;
            }
            this.cancelMemoryErrorPopup();
        }
        int n3 = R.string.cam_strings_ok_txt;
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) return null;
        builder.setTitle(n2);
        if (n != -1) {
            builder.setMessage(n);
        }
        builder.setPositiveButton(n3, (DialogInterface.OnClickListener)new OnClickMemoryErrorOkListener());
        builder.setOnCancelListener(new OnCancelMemoryErrorOkListener());
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        this.mStorageErrorPopup = this.show(builder);
        this.notifyOpenDialog();
        this.mStorageErrorPopup.setOnDismissListener(new DialogDismissListener(null));
        this.mStorageErrorPopupTextId = n;
        this.mStorageErrorPopupIsError = bl;
        return this.mStorageErrorPopup;
    }

    public void showMemoryErrorAndAbort(int n, int n2) {
        LazyAbortListener lazyAbortListener = new LazyAbortListener();
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return;
        }
        builder.setTitle(n2);
        builder.setMessage(n);
        builder.setOnDismissListener(lazyAbortListener);
        this.showDeviceError(builder);
    }

    public void showMessageOnUiThread(final int n, final int n2) {
        this.mActivity.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                MessagePopup.this.showRotatableToastMessage(n, n2, RotatableToast.ToastPosition.BOTTOM);
            }
        });
    }

    public RotatableDialog showOk(int n, int n2, boolean bl, int n3, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        if (this.mDialogOk == null) {
            this.mDialogOk = this.showOkDialogImpl(n, n2, bl, n3, new ShowOkListener(onClickListener, onDismissListener));
        }
        return this.mDialogOk;
    }

    public RotatableDialog showOkAndCancel(int n, int n2, boolean bl, int n3, int n4, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        this.mOkAndCancelPopup = this.createDialogOkAndCancel(n, n2, bl, n3, n4, onClickListener, onClickListener2, onCancelListener);
        return this.mOkAndCancelPopup;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public RotatableDialog showOkAndCancelCustomView(View view, int n, boolean bl, int n2, int n3, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        RotatableDialog.Builder builder;
        if (this.mDeviceErrorPopup != null) {
            return null;
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.dismiss();
        }
        if ((builder = this.createBuilder()) == null) return null;
        builder.setTitle(n);
        if (bl) {
            builder.setAlertIcon();
        }
        builder.setViewAsScrollable(view);
        builder.setPositiveButton(n2, (DialogInterface.OnClickListener)new OnClickWrapOkCancelCustomViewListener(onClickListener));
        builder.setNegativeButton(n3, (DialogInterface.OnClickListener)new OnClickWrapOkCancelCustomViewListener(onClickListener2));
        builder.setOnCancelListener(new OnCancelOkAndCheckableListener(onCancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.False);
        this.mOkAndCancelCustomViewPopup = this.show(builder);
        return this.mOkAndCancelCustomViewPopup;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public RotatableDialog showOkAndCancelMsg(int n, int n2, boolean bl, int n3, int n4, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener) {
        RotatableDialog.Builder builder;
        if (this.mDeviceErrorPopup != null) {
            return null;
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.dismiss();
        }
        if ((builder = this.createBuilder()) == null) return null;
        builder.setTitle(n2);
        if (bl) {
            builder.setAlertIcon();
        }
        if (n != -1) {
            builder.setMessage(n);
        }
        builder.setPositiveButton(n3, (DialogInterface.OnClickListener)new OnClickWrapOkCancelCustomViewListener(onClickListener));
        builder.setNegativeButton(n4, (DialogInterface.OnClickListener)new OnClickWrapOkCancelCustomViewListener(onClickListener2));
        builder.setOnCancelListener(new OnCancelOkAndCheckableListener(onCancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.False);
        this.mOkAndCancelCustomViewPopup = this.show(builder);
        return this.mOkAndCancelCustomViewPopup;
    }

    public RotatableDialog showOkAndCancelStorage(int n, int n2, boolean bl, int n3, int n4, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnDismissListener onDismissListener) {
        this.mOkAndCancelPopup = this.createDialogOkAndCancel(n, n2, bl, n3, n4, onClickListener, onClickListener2, onCancelListener);
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.setOnDismissListener(new DialogDismissListener(onDismissListener));
            this.notifyOpenDialog();
        }
        return this.mOkAndCancelPopup;
    }

    public RotatableDialog showOkAndCustomView(View view, int n, boolean bl, int n2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener) {
        if (this.mOkAndCustomViewPopup == null) {
            RotatableDialog.Builder builder = this.createBuilder();
            if (builder == null) {
                return null;
            }
            builder.setTitle(n);
            if (bl) {
                builder.setAlertIcon();
            }
            builder.setViewAsScrollable(view);
            builder.setPositiveButton(n2, (DialogInterface.OnClickListener)new OnClickWrapOkAndCheckableListener(onClickListener));
            builder.setOnCancelListener(new OnCancelOkAndCheckableListener(onCancelListener));
            builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
            this.mOkAndCustomViewPopup = this.show(builder);
        }
        return this.mOkAndCustomViewPopup;
    }

    public RotatableDialog showOkAndCustomViewContinuouslyUsed(View view, int n, boolean bl, int n2, DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener) {
        RotatableDialog.Builder builder;
        if (this.mOkAndCustomViewPopupContinuouslyUsed != null) {
            this.mOkAndCustomViewPopupContinuouslyUsed.dismiss();
            this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
        if ((builder = this.createBuilder()) == null) {
            return null;
        }
        builder.setTitle(n);
        if (bl) {
            builder.setAlertIcon();
        }
        builder.setViewAsScrollable(view);
        builder.setPositiveButton(n2, (DialogInterface.OnClickListener)new OnClickWrapOkAndCheckableContinuouslyUsedListener(onClickListener));
        builder.setOnCancelListener(new OnCancelOkAndCheckableContinuouslyUsedListener(onCancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        this.mOkAndCustomViewPopupContinuouslyUsed = this.show(builder);
        return this.mOkAndCustomViewPopupContinuouslyUsed;
    }

    public RotatableDialog showOkMandatory(int n, int n2, boolean bl, int n3, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        if (this.mDialogOkMandatory != null) {
            this.mDialogOkMandatory.dismiss();
            this.mDialogOkMandatory = null;
        }
        this.mDialogOkMandatory = this.showOkDialogImpl(n, n2, bl, n3, new ShowOkMandatoryListener(onClickListener, onDismissListener));
        return this.mDialogOkMandatory;
    }

    public RotatableDialog showRecordingSizeLimitError() {
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
        builder.setMessage(R.string.cam_strings_error_mms_rec_size_limit_txt);
        return this.showDeviceError(builder);
    }

    public void showRotatableToastMessage(int n, int n2, RotatableToast.ToastPosition toastPosition) {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
            this.mRotatableToast = null;
        }
        if (this.mActivity == null) {
            return;
        }
        this.mRotatableToast = RotatableToast.inflate(this.mActivity);
        this.mRotatableToast.setDuration(n2);
        this.mRotatableToast.setTextResId(n);
        this.mRotatableToast.setSensorOrientation(this.mSensorOrientation);
        this.mRotatableToast.setToastPosition(toastPosition);
        this.mRotatableToast.show();
    }

    public void showRotatableToastMessageAndAbort(int n, int n2, RotatableToast.ToastPosition toastPosition) {
        this.showRotatableToastMessage(n, n2, toastPosition);
        this.lazyAbort();
    }

    public RotatableDialog showShareSelection(int n, DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener, ListAdapter listAdapter) {
        if (this.mShareSelection != null) {
            this.mShareSelection.dismiss();
            this.mShareSelection = null;
        }
        RotatableDialog.Builder builder = new RotatableDialog.Builder(this.mActivity);
        builder.setTitle(n);
        builder.setAdapter(listAdapter, new OnClickWrapSelectionShareListener(onClickListener));
        builder.setOnCancelListener(new OnCancelWrapSelectionShareListener(onCancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        builder.setOnKeyListener(new OnKeyWrapSelectionShareListener());
        this.mShareSelection = this.show(builder);
        return this.mShareSelection;
    }

    public RotatableDialog showShareSelection(DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener, ListAdapter listAdapter) {
        this.mShareSelection = this.showShareSelection(R.string.cam_strings_file_share_title_txt, onClickListener, onCancelListener, listAdapter);
        return this.mShareSelection;
    }

    public AlertDialog showStoreProgressDialog(int n) {
        if (this.mStoreProgressDialog == null) {
            ProgressDialog progressDialog = new ProgressDialog(this.mActivity);
            progressDialog.setCancelable(false);
            progressDialog.setIndeterminate(true);
            this.mStoreProgressDialog = progressDialog;
        }
        this.mStoreProgressDialog.setOnKeyListener(this.mKeyEventKiller);
        this.mStoreProgressDialog.setMessage(this.mActivity.getResources().getText(n));
        this.mStoreProgressDialog.show();
        this.setDefaultDialogButtonFontSize(this.mStoreProgressDialog);
        return this.mStoreProgressDialog;
    }

    public AlertDialog showStoreProgressDialog(int n, int n2, boolean bl, View view) {
        if (view != null) {
            if (this.mStoreProgressDialogMultiAngle == null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
                builder.setCancelable(false);
                builder.setView(view);
                builder.setTitle(n2);
                if (bl) {
                    builder.setIcon(17301543);
                }
                this.mStoreProgressDialogMultiAngle = builder.create();
                this.mStoreProgressDialogMultiAngle.setOnKeyListener(this.mKeyEventKiller);
            }
            this.mStoreProgressDialogMultiAngle.show();
            this.setDefaultDialogButtonFontSize(this.mStoreProgressDialogMultiAngle);
            return this.mStoreProgressDialogMultiAngle;
        }
        return this.showStoreProgressDialog(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void showTermsAndConditions(BaseActivity baseActivity, DialogInterface.OnClickListener onClickListener, DialogInterface.OnCancelListener onCancelListener) {
        Object object;
        if (baseActivity == null || (object = baseActivity.getLayoutInflater()) == null) {
            return;
        }
        object = object.inflate(R.layout.terms_and_conditions_content, null);
        TextView textView = (TextView)object.findViewById(R.id.consent_text);
        textView.setText(Html.fromHtml(baseActivity.getResources().getString(R.string.cam_strings_term_of_use_txt)));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        this.showOkAndCustomView((View)object, R.string.cam_strings_term_of_use_title_txt, false, R.string.cam_strings_ok_txt, onClickListener, onCancelListener);
    }

    public RotatableDialog showThermalCritical() {
        LazyAbortListener lazyAbortListener = new LazyAbortListener();
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(R.string.cam_strings_dialog_high_temp_title_txt);
        builder.setMessage(this.getThermalCriticalString());
        builder.setPositiveButton(R.string.cam_strings_ok_txt, null);
        builder.setOnDismissListener(lazyAbortListener);
        builder.setCancelable(Cancelable.True, Cancelable.False);
        return this.showDeviceError(builder);
    }

    public void showThermalCriticalAndAbort() {
        this.showThermalCritical();
        this.lazyAbort();
    }

    public RotatableDialog showThermalWarning(int n, int n2, boolean bl, int n3, DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
        if (this.mDialogThermal == null) {
            this.mDialogThermal = this.showOkDialogImpl(n, n2, bl, n3, new ShowOkListener(onClickListener, onDismissListener));
        }
        return this.mDialogThermal;
    }

    public void showUnknownErrorMessage() {
        RotatableDialog.Builder builder = this.createBuilder();
        if (builder == null) {
            return;
        }
        builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
        builder.setMessage(R.string.cam_strings_error_fatal_txt);
        this.showDeviceError(builder);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void showZoomHelpMessage(boolean bl) {
        if (this.mActivity != null) {
            int n = bl ? R.string.cam_strings_zoom_help_txt : R.string.cam_strings_zoom_not_supported_txt;
            this.showRotatableToastMessage(n, 0, RotatableToast.ToastPosition.TOP);
        }
    }

    public static enum Cancelable {
        True,
        False,
        UseDefault;
        

        private Cancelable() {
        }
    }

    protected class DialogDismissListener
    implements DialogInterface.OnDismissListener {
        private DialogInterface.OnDismissListener mDelegateOnDismissListener;

        public DialogDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.mDelegateOnDismissListener = onDismissListener;
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (this.mDelegateOnDismissListener != null) {
                this.mDelegateOnDismissListener.onDismiss(dialogInterface);
            }
            MessagePopup.this.onCancelMemoryErrorPopup(dialogInterface);
        }
    }

    public class ErrorExitListener
    implements DialogInterface.OnCancelListener,
    DialogInterface.OnDismissListener {
        @Override
        public void onCancel(DialogInterface dialogInterface) {
            MessagePopup.this.mDeviceErrorPopup = null;
            if (MessagePopup.this.mActivity != null && MessagePopup.this.mActivity.isResumed()) {
                MessagePopup.this.mActivity.finish();
            }
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            this.onCancel(dialogInterface);
        }
    }

    class ImmediatelyAbortListener
    extends KeyEventKiller
    implements DialogInterface.OnClickListener {
        ImmediatelyAbortListener() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            MessagePopup.this.mTerminateListener.terminateApplication();
        }

        @Override
        public boolean onKey(DialogInterface dialogInterface, int n, KeyEvent keyEvent) {
            boolean bl;
            boolean bl2 = bl = super.onKey(dialogInterface, n, keyEvent);
            if (!bl) {
                bl2 = bl;
                if (n == 4) {
                    MessagePopup.this.mTerminateListener.terminateApplication();
                    bl2 = true;
                }
            }
            return bl2;
        }
    }

    public static class KeyEventKiller
    implements DialogInterface.OnKeyListener {
        @Override
        public boolean onKey(DialogInterface dialogInterface, int n, KeyEvent keyEvent) {
            switch (n) {
                default: {
                    return false;
                }
                case 27: 
                case 80: 
                case 82: 
            }
            return true;
        }
    }

    private class LaunchSettingAppDialogListener
    implements DialogInterface.OnClickListener,
    DialogInterface.OnDismissListener,
    DialogInterface.OnCancelListener {
        private GeotagSettingListener mListener;

        public LaunchSettingAppDialogListener(GeotagSettingListener geotagSettingListener) {
            this.mListener = null;
            this.mListener = geotagSettingListener;
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (this.mListener != null) {
                this.mListener.onSet(false);
            }
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            switch (n) {
                case -2: {
                    if (this.mListener != null) {
                        this.mListener.onSet(false);
                        return;
                    }
                }
                default: {
                    return;
                }
                case -1: 
            }
            ApplicationLauncher.launchLocationSourceSettings(MessagePopup.this.mActivity);
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (this.mListener != null) {
                this.mListener.onSet(false);
            }
        }
    }

    class LazyAbortListener
    implements DialogInterface.OnDismissListener {
        LazyAbortListener() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            MessagePopup.this.mTerminateListener.terminateApplication();
        }
    }

    public static class OnCancelMemoryErrorOkListener
    implements DialogInterface.OnCancelListener {
        @Override
        public void onCancel(DialogInterface dialogInterface) {
        }
    }

    private class OnCancelOkAndCheckableContinuouslyUsedListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelOkAndCheckableContinuouslyUsedListener(DialogInterface.OnCancelListener onCancelListener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = onCancelListener;
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialogInterface);
            }
            MessagePopup.this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
    }

    private class OnCancelOkAndCheckableListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelOkAndCheckableListener(DialogInterface.OnCancelListener onCancelListener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = onCancelListener;
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialogInterface);
            }
            MessagePopup.this.mOkAndCustomViewPopup = null;
        }
    }

    private class OnCancelWrapOkCancelListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelWrapOkCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = onCancelListener;
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialogInterface);
            }
            MessagePopup.this.mOkAndCancelPopup = null;
        }
    }

    private class OnCancelWrapSelectionShareListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelWrapSelectionShareListener(DialogInterface.OnCancelListener onCancelListener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = onCancelListener;
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialogInterface);
            }
            MessagePopup.this.mShareSelection = null;
        }
    }

    public class OnClickMemoryErrorOkListener
    implements DialogInterface.OnClickListener {
        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
        }
    }

    private class OnClickWrapOkAndCheckableContinuouslyUsedListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkAndCheckableContinuouslyUsedListener(DialogInterface.OnClickListener onClickListener) {
            this.mOnClickListener = null;
            this.mOnClickListener = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialogInterface, n);
            }
            MessagePopup.this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
    }

    private class OnClickWrapOkAndCheckableListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkAndCheckableListener(DialogInterface.OnClickListener onClickListener) {
            this.mOnClickListener = null;
            this.mOnClickListener = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialogInterface, n);
            }
            MessagePopup.this.mOkAndCustomViewPopup = null;
        }
    }

    private class OnClickWrapOkCancelCustomViewListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkCancelCustomViewListener(DialogInterface.OnClickListener onClickListener) {
            this.mOnClickListener = null;
            this.mOnClickListener = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            MessagePopup.this.mOkAndCancelCustomViewPopup = null;
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialogInterface, n);
            }
        }
    }

    private class OnClickWrapOkCancelListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkCancelListener(DialogInterface.OnClickListener onClickListener) {
            this.mOnClickListener = null;
            this.mOnClickListener = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            MessagePopup.this.mOkAndCancelPopup = null;
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialogInterface, n);
            }
        }
    }

    private class OnClickWrapSelectionShareListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapSelectionShareListener(DialogInterface.OnClickListener onClickListener) {
            this.mOnClickListener = null;
            this.mOnClickListener = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialogInterface, n);
            }
            MessagePopup.this.mShareSelection = null;
        }
    }

    private class OnDismissWrapErrorExitListener
    implements DialogInterface.OnDismissListener {
        private DialogInterface.OnDismissListener mDismissListener;

        public OnDismissWrapErrorExitListener(DialogInterface.OnDismissListener onDismissListener) {
            this.mDismissListener = null;
            this.mDismissListener = onDismissListener;
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (this.mDismissListener != null) {
                this.mDismissListener.onDismiss(dialogInterface);
            }
            MessagePopup.this.mDeviceErrorPopup = null;
        }
    }

    private class OnKeyWrapSelectionShareListener
    extends KeyEventKiller {
        private OnKeyWrapSelectionShareListener() {
        }

        @Override
        public boolean onKey(DialogInterface dialogInterface, int n, KeyEvent keyEvent) {
            if (n == 84 && keyEvent.getAction() == 1) {
                return true;
            }
            return super.onKey(dialogInterface, n, keyEvent);
        }
    }

    public class ShowOkListener
    extends ShowOkListenerBase {
        public ShowOkListener(DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
            super(onClickListener, onDismissListener);
        }

        @Override
        protected void removeReferenceToDialog() {
            MessagePopup.this.mDialogOk = null;
        }
    }

    private abstract class ShowOkListenerBase
    implements DialogInterface.OnClickListener,
    DialogInterface.OnDismissListener {
        private final DialogInterface.OnClickListener mOnClickListener;
        private final DialogInterface.OnDismissListener mOnDismissListener;

        public ShowOkListenerBase(DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
            this.mOnClickListener = onClickListener;
            this.mOnDismissListener = onDismissListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int n) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialogInterface, n);
            }
            this.removeReferenceToDialog();
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (this.mOnDismissListener != null) {
                this.mOnDismissListener.onDismiss(dialogInterface);
            }
            this.removeReferenceToDialog();
        }

        protected abstract void removeReferenceToDialog();
    }

    public class ShowOkMandatoryListener
    extends ShowOkListenerBase {
        public ShowOkMandatoryListener(DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
            super(onClickListener, onDismissListener);
        }

        @Override
        protected void removeReferenceToDialog() {
            MessagePopup.this.mDialogOkMandatory = null;
        }
    }

    public class ShowThermalListener
    extends ShowOkListenerBase {
        public ShowThermalListener(DialogInterface.OnClickListener onClickListener, DialogInterface.OnDismissListener onDismissListener) {
            super(onClickListener, onDismissListener);
        }

        @Override
        protected void removeReferenceToDialog() {
            MessagePopup.this.mDialogThermal = null;
        }
    }

}

