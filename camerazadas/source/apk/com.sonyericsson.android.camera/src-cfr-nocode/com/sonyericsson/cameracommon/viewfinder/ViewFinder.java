/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.camera.addon.capturingmode.CapturingModeSelector
 *  com.sonymobile.camera.addon.capturingmode.CapturingModeSelector$OnModeFinishListener
 *  com.sonymobile.camera.addon.capturingmode.CapturingModeSelector$OnModeSelectListener
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.viewfinder.BaseViewFinderLayout;
import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.LayoutPatternApplier;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;
import com.sonymobile.camera.addon.capturingmode.CapturingModeSelector;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class ViewFinder
implements ViewFinderInterface,
CapturingModeSelector.OnModeSelectListener,
CapturingModeSelector.OnModeFinishListener,
LocationAcquiredListener,
BaseActivity.LayoutOrientationChangedListener,
StorageController.StorageListener,
OnClickCapturingModeButtonListener,
StorageController.StorageDialogStateListener {
    public static final String SHARED_PREFS_KEY_THERMAL_DISABLED = "THERMAL_DISABLED";
    private static final String TAG;
    private final BaseActivity mActivity;
    private BaseViewFinderLayout mBaseLayout;
    private CapturingModeSelector mCapturingModeSelector;
    private Future<Map<InflateItem, List<View>>> mInflateFuture;
    private Map<InflateItem, List<View>> mInflateItemMap;
    private boolean mIsRequestedLaterSetup;
    private LayoutPattern mLayoutPattern;
    private LayoutPatternApplier mLayoutPatternApplier;
    private View mPreInflatedHeadUpDispay;
    protected ParamSharedPrefWrapper mPref;
    private Rect mTargetPreviewRect;
    private RotatableDialog mThermalDialog;

    static;

    public ViewFinder(BaseActivity var1, LayoutPatternApplier var2, ParamSharedPrefWrapper var3);

    static /* synthetic */ BaseActivity access$000(ViewFinder var0);

    static /* synthetic */ boolean access$200(ViewFinder var0);

    static /* synthetic */ void access$300(ViewFinder var0);

    private int getThermalString();

    private boolean isAcquired();

    private boolean isGeoTagEnabled();

    private boolean isSetupNeeded();

    private void setupCapturingModeSelectorLater();

    private void setupHeadUpDisplay();

    private void updateIndicatorState();

    private void updateLowMemoryIndicator();

    private void updateThermalIndicator();

    public void changeLayoutTo(LayoutPattern var1);

    protected void clearPreInflatedViews();

    public void closeCapturingModeSelector();

    protected Rect computePreviewRect(Activity var1, int var2, int var3);

    protected void disableAccessibilityTalkBack();

    protected BaseActivity getActivity();

    protected BaseViewFinderLayout getBaseLayout();

    public LayoutPattern getCurrentLayoutPattern();

    protected LayoutPatternApplier getLayoutPatternApplier();

    public List<View> getPreInflatedView(InflateItem var1);

    protected DialogInterface.OnCancelListener getThermalDialogOnCancelListener();

    protected DialogInterface.OnClickListener getThermalDialogOnClickListener();

    protected ContentPallet.ThumbnailClickListener getThumbnailClickListener();

    protected void invalidatePreviewSize();

    public boolean isCapturingModeSelectorOpened();

    public boolean isHeadUpDesplayReady();

    public boolean isInflated();

    protected boolean isInvalidatedPreviewSize();

    protected boolean isRequestingPreviewSizeChange();

    protected void joinInflateTask();

    public void onAcquired(boolean var1, boolean var2);

    public void onAvailableSizeUpdated(long var1);

    public void onCaptureDone();

    public void onClickCapturingModeButton(CapturingModeButton var1);

    protected abstract void onCloseCapturingModeSelector();

    public void onDestinationToSaveChanged();

    public void onDisabled();

    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation var1);

    public void onLost();

    protected void onNotifyThermalStatus(boolean var1);

    protected abstract void onOpenCapturingModeSelector();

    public void onShutterDone(boolean var1);

    public void onStorageStateChanged(String var1);

    public void onZoomChanged(int var1, int var2);

    public void onZoomChanged(int var1, int var2, int var3);

    public void openCapturingModeSelector(String var1);

    public void pause();

    public void release();

    public void releaseCapturingModeSelector();

    public void requestSetupHeadUpDisplay();

    protected void requestToDimSystemUi();

    protected void requestToRecoverSystemUi();

    protected void requestToRemoveSystemUi();

    protected void requestToRestoreSystemUi();

    public void requestUpdateSurfaceSize(int var1, int var2);

    public void resume();

    protected void setOrientation(int var1);

    protected void setOrientation(int var1, int var2);

    public void setPreInflatedHeadUpDisplay(View var1);

    protected void setup(View var1);

    public void setupCapturingModeSelector();

    protected void showThermalDialog();

    protected void showThermalDialog(int var1);

    protected void startInflateTask(LayoutInflater var1, List<InflateItem> var2);

    public void startSetupCapturingModeSelectorTask();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected static class CheckBoxListener
    implements CompoundButton.OnCheckedChangeListener {
        private final TextView mFooterView;
        private final CompoundButton.OnCheckedChangeListener mListener;
        private final int mMessage;

        public CheckBoxListener(CompoundButton.OnCheckedChangeListener var1, TextView var2, int var3);

        @Override
        public void onCheckedChanged(CompoundButton var1, boolean var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SetupCapturingModeSelectorTask
    implements Runnable {
        final /* synthetic */ ViewFinder this$0;

        private SetupCapturingModeSelectorTask(ViewFinder var1);

        /* synthetic */ SetupCapturingModeSelectorTask(ViewFinder var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    protected class StartupAlertDialogListener
    implements DialogInterface.OnDismissListener,
    CompoundButton.OnCheckedChangeListener {
        private final ParamSharedPrefWrapper mSharedPrefs;
        private final String mSharedPrefsKey;
        final /* synthetic */ ViewFinder this$0;

        public StartupAlertDialogListener(ViewFinder var1, ParamSharedPrefWrapper var2, String var3);

        @Override
        public void onCheckedChanged(CompoundButton var1, boolean var2);

        @Override
        public void onDismiss(DialogInterface var1);
    }

}

