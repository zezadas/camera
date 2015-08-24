/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.messagepopup;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.activity.TerminateListener;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopupStateListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import java.util.LinkedList;

/*
 * Exception performing whole class analysis.
 */
public class MessagePopup
implements BaseActivity.LayoutOrientationChangedListener,
RotatableDialog.StateListener {
    private static final float DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP = 14.0f;
    public static final int NO_RESOURCE_ID = -1;
    private static final String TAG = "MessagePopup";
    private static final int TERMINATE_WAIT_TIME = 4000;
    private Activity mActivity;
    private RotatableDialog mCurrentDialog;
    private RotatableDialog mDeviceErrorPopup;
    private RotatableDialog mDialogOk;
    private RotatableDialog mDialogOkMandatory;
    private RotatableDialog mDialogThermal;
    private RotatableDialog mDisclaimerDialog;
    private final DialogInterface.OnKeyListener mKeyEventKiller;
    private final Handler mMessageHandler;
    private RotatableDialog mOkAndCancelCustomViewPopup;
    private RotatableDialog mOkAndCancelPopup;
    private RotatableDialog mOkAndCustomViewPopup;
    private RotatableDialog mOkAndCustomViewPopupContinuouslyUsed;
    private final LinkedList<RotatableDialog> mPendingDialogQueue;
    private RotatableToast mRotatableToast;
    private int mSensorOrientation;
    private RotatableDialog mShareSelection;
    private MessagePopupStateListener mStateListener;
    private StorageController.StorageDialogStateListener mStorageDialogStateListener;
    private RotatableDialog mStorageErrorPopup;
    private boolean mStorageErrorPopupIsError;
    private int mStorageErrorPopupTextId;
    private AlertDialog mStoreProgressDialog;
    private AlertDialog mStoreProgressDialogMultiAngle;
    private TerminateListener mTerminateListener;

    public MessagePopup(Activity var1, TerminateListener var2);

    static /* synthetic */ RotatableDialog access$002(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ MessagePopupStateListener access$100(MessagePopup var0);

    static /* synthetic */ RotatableDialog access$1002(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ RotatableDialog access$1102(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ RotatableDialog access$1202(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ TerminateListener access$1300(MessagePopup var0);

    static /* synthetic */ RotatableDialog access$1400(MessagePopup var0);

    static /* synthetic */ RotatableDialog access$202(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ RotatableDialog access$302(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ RotatableDialog access$402(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ RotatableDialog access$502(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ RotatableDialog access$602(MessagePopup var0, RotatableDialog var1);

    static /* synthetic */ Activity access$700(MessagePopup var0);

    static /* synthetic */ void access$800(MessagePopup var0, DialogInterface var1);

    private void cancelMemoryErrorPopup();

    private RotatableDialog createDialogOkAndCancel(int var1, int var2, boolean var3, int var4, int var5, DialogInterface.OnClickListener var6, DialogInterface.OnClickListener var7, DialogInterface.OnCancelListener var8);

    private String getStringFieldNameForDebug(int var1);

    private int getThermalCriticalString();

    private void lazyAbort();

    private void onCancelMemoryErrorPopup(DialogInterface var1);

    private void onClose(RotatableDialog var1);

    private void sendGoogleAnalyticsCameraNotAvailableEvent();

    private void setDefaultDialogButtonFontSize(AlertDialog var1);

    private void setDefaultDialogButtonFontSize(AlertDialog var1, int var2);

    private RotatableDialog show(RotatableDialog.Builder var1);

    private RotatableDialog showDeviceError(RotatableDialog.Builder var1);

    private RotatableDialog showOkDialogImpl(int var1, int var2, boolean var3, int var4, ShowOkListenerBase var5);

    public void cancelMemoryErrorPopup(DialogInterface var1);

    public void cancelMemoryErrorPopup(boolean var1);

    public void closeMessage();

    public RotatableDialog.Builder createBuilder();

    public boolean isMemoryErrorPopupOpened();

    public boolean isMemoryErrorPopupOpened(DialogInterface var1);

    protected void notifyCloseDialog();

    protected void notifyOpenDialog();

    @Override
    public void onCancel(RotatableDialog var1);

    @Override
    public void onDismiss(RotatableDialog var1);

    @Override
    public void onHide(RotatableDialog var1);

    @Override
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation var1);

    @Override
    public void onShow(RotatableDialog var1);

    public void release();

    public void releaseContext();

    public void setMessagePopupStateListener(MessagePopupStateListener var1);

    public void setSensorOrientation(int var1);

    public void setStorageDialogStateListener(StorageController.StorageDialogStateListener var1);

    public void showCameraDisabledMessage();

    public void showCameraDisabledMessageOk();

    public void showCameraNotAvailableError(boolean var1, boolean var2);

    public void showConfirmLocationAccess(Activity var1, boolean var2, DialogInterface.OnClickListener var3, DialogInterface.OnClickListener var4, DialogInterface.OnCancelListener var5, CompoundButton.OnCheckedChangeListener var6);

    public void showDeviceErrorMessage();

    public void showDeviceErrorMessageOk();

    public void showDisclaimer(BaseActivity var1, DialogInterface.OnClickListener var2, DialogInterface.OnClickListener var3, DialogInterface.OnDismissListener var4);

    public RotatableDialog showErrorOkAndCancelExit(int var1, boolean var2, int var3, int var4, DialogInterface.OnClickListener var5, int var6, DialogInterface.OnClickListener var7, DialogInterface.OnDismissListener var8, DialogInterface.OnKeyListener var9);

    public RotatableDialog showErrorOkExit(int var1, boolean var2, int var3, int var4, DialogInterface.OnClickListener var5, DialogInterface.OnDismissListener var6, DialogInterface.OnKeyListener var7);

    public RotatableDialog showErrorUncancelable(int var1, int var2, boolean var3);

    public void showLaunchSettingAppDialog(Activity var1, GeotagSettingListener var2);

    public RotatableDialog showMemoryError(int var1, int var2, boolean var3);

    public void showMemoryErrorAndAbort(int var1, int var2);

    public void showMessageOnUiThread(int var1, int var2);

    public RotatableDialog showOk(int var1, int var2, boolean var3, int var4, DialogInterface.OnClickListener var5, DialogInterface.OnDismissListener var6);

    public RotatableDialog showOkAndCancel(int var1, int var2, boolean var3, int var4, int var5, DialogInterface.OnClickListener var6, DialogInterface.OnClickListener var7, DialogInterface.OnCancelListener var8);

    public RotatableDialog showOkAndCancelCustomView(View var1, int var2, boolean var3, int var4, int var5, DialogInterface.OnClickListener var6, DialogInterface.OnClickListener var7, DialogInterface.OnCancelListener var8);

    public RotatableDialog showOkAndCancelMsg(int var1, int var2, boolean var3, int var4, int var5, DialogInterface.OnClickListener var6, DialogInterface.OnClickListener var7, DialogInterface.OnCancelListener var8);

    public RotatableDialog showOkAndCancelStorage(int var1, int var2, boolean var3, int var4, int var5, DialogInterface.OnClickListener var6, DialogInterface.OnClickListener var7, DialogInterface.OnCancelListener var8, DialogInterface.OnDismissListener var9);

    public RotatableDialog showOkAndCustomView(View var1, int var2, boolean var3, int var4, DialogInterface.OnClickListener var5, DialogInterface.OnCancelListener var6);

    public RotatableDialog showOkAndCustomViewContinuouslyUsed(View var1, int var2, boolean var3, int var4, DialogInterface.OnClickListener var5, DialogInterface.OnCancelListener var6);

    public RotatableDialog showOkMandatory(int var1, int var2, boolean var3, int var4, DialogInterface.OnClickListener var5, DialogInterface.OnDismissListener var6);

    public RotatableDialog showRecordingSizeLimitError();

    public void showRotatableToastMessage(int var1, int var2, RotatableToast.ToastPosition var3);

    public void showRotatableToastMessageAndAbort(int var1, int var2, RotatableToast.ToastPosition var3);

    public RotatableDialog showShareSelection(int var1, DialogInterface.OnClickListener var2, DialogInterface.OnCancelListener var3, ListAdapter var4);

    public RotatableDialog showShareSelection(DialogInterface.OnClickListener var1, DialogInterface.OnCancelListener var2, ListAdapter var3);

    public AlertDialog showStoreProgressDialog(int var1);

    public AlertDialog showStoreProgressDialog(int var1, int var2, boolean var3, View var4);

    public void showTermsAndConditions(BaseActivity var1, DialogInterface.OnClickListener var2, DialogInterface.OnCancelListener var3);

    public RotatableDialog showThermalCritical();

    public void showThermalCriticalAndAbort();

    public RotatableDialog showThermalWarning(int var1, int var2, boolean var3, int var4, DialogInterface.OnClickListener var5, DialogInterface.OnDismissListener var6);

    public void showUnknownErrorMessage();

    public void showZoomHelpMessage(boolean var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Cancelable
    extends Enum<Cancelable> {
        private static final /* synthetic */ Cancelable[] $VALUES;
        public static final /* enum */ Cancelable False;
        public static final /* enum */ Cancelable True;
        public static final /* enum */ Cancelable UseDefault;

        static;

        private Cancelable();

        public static Cancelable valueOf(String var0);

        public static Cancelable[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class DialogDismissListener
    implements DialogInterface.OnDismissListener {
        private DialogInterface.OnDismissListener mDelegateOnDismissListener;
        final /* synthetic */ MessagePopup this$0;

        public DialogDismissListener(MessagePopup var1, DialogInterface.OnDismissListener var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class ErrorExitListener
    implements DialogInterface.OnCancelListener,
    DialogInterface.OnDismissListener {
        final /* synthetic */ MessagePopup this$0;

        public ErrorExitListener(MessagePopup var1);

        @Override
        public void onCancel(DialogInterface var1);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class ImmediatelyAbortListener
    extends KeyEventKiller
    implements DialogInterface.OnClickListener {
        final /* synthetic */ MessagePopup this$0;

        ImmediatelyAbortListener(MessagePopup var1);

        @Override
        public void onClick(DialogInterface var1, int var2);

        @Override
        public boolean onKey(DialogInterface var1, int var2, KeyEvent var3);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class KeyEventKiller
    implements DialogInterface.OnKeyListener {
        public KeyEventKiller();

        @Override
        public boolean onKey(DialogInterface var1, int var2, KeyEvent var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LaunchSettingAppDialogListener
    implements DialogInterface.OnClickListener,
    DialogInterface.OnDismissListener,
    DialogInterface.OnCancelListener {
        private GeotagSettingListener mListener;
        final /* synthetic */ MessagePopup this$0;

        public LaunchSettingAppDialogListener(MessagePopup var1, GeotagSettingListener var2);

        @Override
        public void onCancel(DialogInterface var1);

        @Override
        public void onClick(DialogInterface var1, int var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class LazyAbortListener
    implements DialogInterface.OnDismissListener {
        final /* synthetic */ MessagePopup this$0;

        LazyAbortListener(MessagePopup var1);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class OnCancelMemoryErrorOkListener
    implements DialogInterface.OnCancelListener {
        public OnCancelMemoryErrorOkListener();

        @Override
        public void onCancel(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnCancelOkAndCheckableContinuouslyUsedListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;
        final /* synthetic */ MessagePopup this$0;

        public OnCancelOkAndCheckableContinuouslyUsedListener(MessagePopup var1, DialogInterface.OnCancelListener var2);

        @Override
        public void onCancel(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnCancelOkAndCheckableListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;
        final /* synthetic */ MessagePopup this$0;

        public OnCancelOkAndCheckableListener(MessagePopup var1, DialogInterface.OnCancelListener var2);

        @Override
        public void onCancel(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnCancelWrapOkCancelListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;
        final /* synthetic */ MessagePopup this$0;

        public OnCancelWrapOkCancelListener(MessagePopup var1, DialogInterface.OnCancelListener var2);

        @Override
        public void onCancel(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnCancelWrapSelectionShareListener
    implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;
        final /* synthetic */ MessagePopup this$0;

        public OnCancelWrapSelectionShareListener(MessagePopup var1, DialogInterface.OnCancelListener var2);

        @Override
        public void onCancel(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class OnClickMemoryErrorOkListener
    implements DialogInterface.OnClickListener {
        final /* synthetic */ MessagePopup this$0;

        public OnClickMemoryErrorOkListener(MessagePopup var1);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnClickWrapOkAndCheckableContinuouslyUsedListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;
        final /* synthetic */ MessagePopup this$0;

        public OnClickWrapOkAndCheckableContinuouslyUsedListener(MessagePopup var1, DialogInterface.OnClickListener var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnClickWrapOkAndCheckableListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;
        final /* synthetic */ MessagePopup this$0;

        public OnClickWrapOkAndCheckableListener(MessagePopup var1, DialogInterface.OnClickListener var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnClickWrapOkCancelCustomViewListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;
        final /* synthetic */ MessagePopup this$0;

        public OnClickWrapOkCancelCustomViewListener(MessagePopup var1, DialogInterface.OnClickListener var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnClickWrapOkCancelListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;
        final /* synthetic */ MessagePopup this$0;

        public OnClickWrapOkCancelListener(MessagePopup var1, DialogInterface.OnClickListener var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnClickWrapSelectionShareListener
    implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;
        final /* synthetic */ MessagePopup this$0;

        public OnClickWrapSelectionShareListener(MessagePopup var1, DialogInterface.OnClickListener var2);

        @Override
        public void onClick(DialogInterface var1, int var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnDismissWrapErrorExitListener
    implements DialogInterface.OnDismissListener {
        private DialogInterface.OnDismissListener mDismissListener;
        final /* synthetic */ MessagePopup this$0;

        public OnDismissWrapErrorExitListener(MessagePopup var1, DialogInterface.OnDismissListener var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnKeyWrapSelectionShareListener
    extends KeyEventKiller {
        final /* synthetic */ MessagePopup this$0;

        private OnKeyWrapSelectionShareListener(MessagePopup var1);

        /* synthetic */ OnKeyWrapSelectionShareListener(MessagePopup var1,  var2);

        @Override
        public boolean onKey(DialogInterface var1, int var2, KeyEvent var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class ShowOkListener
    extends ShowOkListenerBase {
        final /* synthetic */ MessagePopup this$0;

        public ShowOkListener(MessagePopup var1, DialogInterface.OnClickListener var2, DialogInterface.OnDismissListener var3);

        @Override
        protected void removeReferenceToDialog();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class ShowOkListenerBase
    implements DialogInterface.OnClickListener,
    DialogInterface.OnDismissListener {
        private final DialogInterface.OnClickListener mOnClickListener;
        private final DialogInterface.OnDismissListener mOnDismissListener;
        final /* synthetic */ MessagePopup this$0;

        public ShowOkListenerBase(MessagePopup var1, DialogInterface.OnClickListener var2, DialogInterface.OnDismissListener var3);

        @Override
        public void onClick(DialogInterface var1, int var2);

        @Override
        public void onDismiss(DialogInterface var1);

        protected abstract void removeReferenceToDialog();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class ShowOkMandatoryListener
    extends ShowOkListenerBase {
        final /* synthetic */ MessagePopup this$0;

        public ShowOkMandatoryListener(MessagePopup var1, DialogInterface.OnClickListener var2, DialogInterface.OnDismissListener var3);

        @Override
        protected void removeReferenceToDialog();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class ShowThermalListener
    extends ShowOkListenerBase {
        final /* synthetic */ MessagePopup this$0;

        public ShowThermalListener(MessagePopup var1, DialogInterface.OnClickListener var2, DialogInterface.OnDismissListener var3);

        @Override
        protected void removeReferenceToDialog();
    }

}

