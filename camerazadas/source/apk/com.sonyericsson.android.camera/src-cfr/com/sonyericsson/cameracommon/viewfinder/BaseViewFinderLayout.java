/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.contentsview.ContentLoader;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.utility.AccessibilityHelper;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.viewfinder.AllEventListener;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.viewfinder.balloontips.BalloonTips;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import com.sonyericsson.cameracommon.zoombar.Zoombar;

public class BaseViewFinderLayout {
    private static final String TAG = BaseViewFinderLayout.class.getSimpleName();
    private BaseActivity mActivity;
    private AllEventListener mAllEventListener = null;
    private BalloonTips mBalloonTips;
    private RelativeLayout mCaptureButtonGroup;
    private OnScreenButton mCaptureButtonIcon;
    private CapturingModeButton mCapturingModeButton;
    private ContentsViewController mContentsViewController;
    private int mCurrentOrientation = 2;
    private GeotagIndicator mGeoTag;
    private ViewGroup mHeadUpDisplay;
    private FrameLayout mLazyInflatedUiComponentContainerFront = null;
    private FrameLayout mLazyInflatedUiComponentContainerFullScreen = null;
    private Indicator mLowMemory;
    private NavigationBarVisibility mNavigationBarVisibility = null;
    private OnScreenButtonGroup mOnScreenButtonGroup;
    private View mPreInflatedHeadUpDisplay;
    private View mPreview;
    private ViewGroup mPreviewContainer;
    private RecordingIndicator mRecordingIndicator;
    private ViewGroup mRootView;
    private Indicator mThermal;
    private Rect mViewFinderRect = null;
    private View mWindowCover;
    private Zoombar mZoombar;

    public BaseViewFinderLayout(BaseActivity object) {
        this.mActivity = object;
        this.mRootView = new AccessibilityHelper.HoverEventInterceptView(this.mActivity);
        this.mRootView.setBackgroundColor(-16777216);
        this.mViewFinderRect = LayoutDependencyResolver.getViewFinderSize((Context)object);
        object = (ViewGroup)LayoutInflater.from(this.mActivity).inflate(R.layout.preview_container_layout, null);
        this.mRootView.addView((View)object);
        object = (FrameLayout.LayoutParams)object.getLayoutParams();
        object.width = this.mViewFinderRect.width();
        object.height = this.mViewFinderRect.height();
        object.gravity = 80;
        this.mAllEventListener = new AllEventListener(this.mActivity);
        LayoutDependencyResolver.requestToDimSystemUi(this.mRootView);
    }

    private NavigationBarVisibility getPreviousNavigationBarVisibility() {
        return this.mNavigationBarVisibility;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void inflate() {
        Object object = LayoutInflater.from(this.mActivity);
        if (this.mPreInflatedHeadUpDisplay != null) {
            this.mHeadUpDisplay = (ViewGroup)this.mPreInflatedHeadUpDisplay;
            this.mPreInflatedHeadUpDisplay = null;
        } else {
            this.mHeadUpDisplay = (ViewGroup)object.inflate(R.layout.viewfinder_layout, null);
        }
        object = new FrameLayout(this.mActivity);
        this.mRootView.addView((View)object);
        object.addView(this.mHeadUpDisplay);
        this.mHeadUpDisplay.getLayoutParams().width = this.mViewFinderRect.width();
        this.mHeadUpDisplay.getLayoutParams().height = this.mViewFinderRect.height();
        this.mLazyInflatedUiComponentContainerFront = (FrameLayout)this.mActivity.findViewById(R.id.lazy_inflated_ui_component_container);
        this.mLazyInflatedUiComponentContainerFullScreen = (FrameLayout)this.mActivity.findViewById(R.id.lazy_inflated_ui_component_container_fullscreen);
    }

    private void releaseBalloonTips() {
        if (this.mBalloonTips != null) {
            this.mBalloonTips.releaseBalloonTips();
            this.mBalloonTips = null;
        }
    }

    private void releaseHeadUpDesplay() {
        this.mHeadUpDisplay = null;
    }

    private void setupBalloonTips() {
        this.mBalloonTips = (BalloonTips)this.mActivity.findViewById(R.id.balloon_tips_for_mode_selector_base);
        int n = this.mActivity.findViewById(R.id.right_container).getPaddingBottom();
        int n2 = this.mActivity.getResources().getDimensionPixelSize(R.dimen.capturing_mode_selector_button_item_height) / 2;
        this.mBalloonTips.setupBalloonTips(this.mActivity.getCommonSettings(), n + n2, false);
    }

    private void setupCaptureButton() {
        this.mCaptureButtonIcon = (OnScreenButton)this.mActivity.findViewById(R.id.capture_right_bottom_button);
        this.mCaptureButtonGroup = (RelativeLayout)this.mActivity.findViewById(R.id.capture_right_bottom);
    }

    private void setupCaptureButtonGroup() {
        this.mOnScreenButtonGroup = (OnScreenButtonGroup)this.mActivity.findViewById(R.id.capture_button_group);
    }

    private void setupCapturingModeButton() {
        this.mCapturingModeButton = (CapturingModeButton)this.mHeadUpDisplay.findViewById(R.id.mode_selector_button);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupContentsView(ContentPallet.ThumbnailClickListener thumbnailClickListener) {
        ContentLoader.SecurityLevel securityLevel = this.mActivity.isDeviceInSecurityLock() || this.mActivity.shouldAddOnlyNewContent() ? ContentLoader.SecurityLevel.NEWLY_ADDED_CONTENT_ONLY : ContentLoader.SecurityLevel.NORMAL;
        if (this.mContentsViewController != null) {
            this.mContentsViewController.release();
        }
        this.mContentsViewController = new ContentsViewController(this.mActivity, securityLevel, this.mActivity.getStorageManager(), thumbnailClickListener);
        this.mContentsViewController.setSensorOrientation(this.mCurrentOrientation);
        this.mContentsViewController.reload();
    }

    private void setupRecordingIndicator() {
        if (this.mRecordingIndicator == null) {
            this.mRecordingIndicator = (RecordingIndicator)this.mActivity.findViewById(R.id.recording_progress_indicator);
            this.mRecordingIndicator.setOrientation(this.mCurrentOrientation);
            this.mRecordingIndicator.setVisibility(8);
            this.mRecordingIndicator.prepareBeforeRecording(0, false);
        }
    }

    private void setupSettingIndicators() {
        this.mGeoTag = new GeotagIndicator((ImageView)this.mActivity.findViewById(R.id.geo_tag_indicator));
        this.mGeoTag.setSensorOrientation(this.mCurrentOrientation);
        this.mLowMemory = new Indicator((ImageView)this.mActivity.findViewById(R.id.low_memory_indicator));
        this.mLowMemory.setSensorOrientation(this.mCurrentOrientation);
        this.mThermal = new Indicator((ImageView)this.mActivity.findViewById(R.id.thermal_indicator));
        this.mThermal.setSensorOrientation(this.mCurrentOrientation);
    }

    private void setupZoombar() {
        this.mZoombar = (Zoombar)this.mActivity.findViewById(R.id.zoombar);
        this.mZoombar.setSensorOrientation(this.mCurrentOrientation);
        this.mZoombar.initZoom();
        this.mZoombar.setVisibility(4);
    }

    public void addLazyInflatedUiComponent(View view) {
        this.mLazyInflatedUiComponentContainerFront.addView(view);
    }

    public void addLazyInflatedUiComponentFullScreen(View view) {
        this.mLazyInflatedUiComponentContainerFullScreen.addView(view);
    }

    public void attachToWindow(View view) {
        this.mActivity.getWindow().addContentView(this.mRootView, new WindowManager.LayoutParams(-1, -1));
        this.mPreview = view;
        this.mPreviewContainer = (FrameLayout)this.mActivity.findViewById(R.id.preview_container);
        this.mPreviewContainer.addView(this.mPreview);
        this.mActivity.getWindow().addContentView(this.mAllEventListener, new FrameLayout.LayoutParams(-1, -1));
        this.mAllEventListener.setActivity(this.mActivity);
        this.mAllEventListener.enableTouchEvent();
    }

    public BaseActivity getActivity() {
        return this.mActivity;
    }

    public AllEventListener getAllEventListener() {
        return this.mAllEventListener;
    }

    public BalloonTips getBalloonTips() {
        return this.mBalloonTips;
    }

    public RelativeLayout getCaptureButtonGroup() {
        return this.mCaptureButtonGroup;
    }

    public OnScreenButton getCaptureButtonIcon() {
        return this.mCaptureButtonIcon;
    }

    public FrameLayout getCaptureMethodIndicatorContainer() {
        return (FrameLayout)this.mActivity.findViewById(R.id.capture_method_indicator_container);
    }

    public CapturingModeButton getCapturingModeButton() {
        return this.mCapturingModeButton;
    }

    public FrameLayout getCenterContainer() {
        return (FrameLayout)this.mActivity.findViewById(R.id.center_container);
    }

    public ContentsViewController getContentsViewController() {
        return this.mContentsViewController;
    }

    public int getCurrentOrientation() {
        return this.mCurrentOrientation;
    }

    public GeotagIndicator getGeoTagIndicator() {
        return this.mGeoTag;
    }

    public FrameLayout getLazyInflatedUiComponentContainerBack() {
        return (FrameLayout)this.mActivity.findViewById(R.id.lazy_inflated_ui_component_container_back);
    }

    public FrameLayout getLazyInflatedUiComponentContainerFront() {
        return this.mLazyInflatedUiComponentContainerFront;
    }

    public Indicator getLowMemoryIndicator() {
        return this.mLowMemory;
    }

    public FrameLayout getModeIndicatorContainer() {
        return (FrameLayout)this.mActivity.findViewById(R.id.mode_indicator_container);
    }

    public OnScreenButtonGroup getOnScreenButtonGroup() {
        return this.mOnScreenButtonGroup;
    }

    public View getPreview() {
        return this.mPreview;
    }

    public ViewGroup getPreviewContainer() {
        return this.mPreviewContainer;
    }

    public FrameLayout getPreviewOverlayContainer() {
        return (FrameLayout)this.mActivity.findViewById(R.id.preview_overlay_container);
    }

    public Rect getPreviewRect(Activity activity, int n, int n2) {
        if (n == 0 && n2 == 0) {
            CameraLogger.e(TAG, "Preview size is not set.");
            return new Rect(0, 0, 0, 0);
        }
        return LayoutDependencyResolver.getSurfaceRect(activity, (float)n / (float)n2);
    }

    public RecordingIndicator getRecordingIndicator() {
        return this.mRecordingIndicator;
    }

    public ViewGroup getRootView() {
        return this.mRootView;
    }

    public FrameLayout getSettingIndicatorContainer() {
        return (FrameLayout)this.mActivity.findViewById(R.id.setting_indicator_container);
    }

    public Indicator getThermalIndicator() {
        return this.mThermal;
    }

    public Rect getViewFinderRect() {
        return this.mViewFinderRect;
    }

    public Zoombar getZoomBar() {
        return this.mZoombar;
    }

    public void hideBlankScreen() {
        if (this.mWindowCover != null) {
            this.mWindowCover.setVisibility(4);
        }
    }

    public void hideContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.hide();
        }
    }

    public void hideIcons() {
        View view = this.mActivity.findViewById(R.id.left_container);
        View view2 = this.mActivity.findViewById(R.id.right_container);
        view.setVisibility(4);
        view2.setVisibility(4);
    }

    public void hideLeftIconContainer() {
        this.mActivity.findViewById(R.id.left_container).setVisibility(4);
    }

    public void hideRightIconContainer() {
        this.mActivity.findViewById(R.id.right_container).setVisibility(4);
    }

    public boolean isHeadUpDesplayReady() {
        if (this.mHeadUpDisplay == null) {
            return false;
        }
        return true;
    }

    public void pause() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.pause();
        }
        if (this.mRecordingIndicator != null) {
            this.mRecordingIndicator.setConstraint(false);
            this.mRecordingIndicator.prepareBeforeRecording(0, false);
            this.mRecordingIndicator.setVisibility(8);
        }
        if (this.mLazyInflatedUiComponentContainerFront != null) {
            this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(null);
        }
    }

    public void refresh() {
        this.mHeadUpDisplay.requestLayout();
        this.mHeadUpDisplay.invalidate();
    }

    void release() {
        this.releaseContentsViewController();
        this.releaseBalloonTips();
        this.releaseUiComponentContainer();
        this.releaseBlankScreen();
        this.releaseHeadUpDesplay();
    }

    public void releaseBlankScreen() {
        this.mWindowCover = null;
    }

    public void releaseContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.release();
        }
        this.mContentsViewController = null;
    }

    public void releaseUiComponentContainer() {
        if (this.mLazyInflatedUiComponentContainerFront != null) {
            this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(null);
        }
        this.mLazyInflatedUiComponentContainerFront = null;
        if (this.mLazyInflatedUiComponentContainerFullScreen != null) {
            this.mLazyInflatedUiComponentContainerFullScreen.setOnTouchListener(null);
        }
        this.mLazyInflatedUiComponentContainerFullScreen = null;
    }

    public void reloadContentsViewController(ContentPallet.ThumbnailClickListener thumbnailClickListener) {
        if (this.mContentsViewController == null) {
            this.setupContentsView(thumbnailClickListener);
            return;
        }
        this.mContentsViewController.reload();
    }

    void requestToDimSystemUi() {
        LayoutDependencyResolver.requestToDimSystemUi(this.mRootView);
        this.setCurrentNavigationBarVisibility(NavigationBarVisibility.LOW_PROFILE);
    }

    void requestToRecoverSystemUi() {
        LayoutDependencyResolver.requestToRecoverSystemUi(this.mRootView);
        this.setCurrentNavigationBarVisibility(NavigationBarVisibility.VISIBLE);
    }

    void requestToRemoveSystemUi() {
        LayoutDependencyResolver.requestToRemoveSystemUi(this.mRootView);
        this.setCurrentNavigationBarVisibility(NavigationBarVisibility.HIDE);
    }

    void requestToRestoreSystemUi() {
        if (this.mNavigationBarVisibility == null) {
            return;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$viewfinder$BaseViewFinderLayout$NavigationBarVisibility[this.getPreviousNavigationBarVisibility().ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.requestToRecoverSystemUi();
                return;
            }
            case 2: {
                this.requestToDimSystemUi();
                return;
            }
            case 3: 
        }
        this.requestToRemoveSystemUi();
    }

    void setCurrentNavigationBarVisibility(NavigationBarVisibility navigationBarVisibility) {
        this.mNavigationBarVisibility = navigationBarVisibility;
    }

    public void setOnKeyEventListener(View.OnKeyListener onKeyListener) {
        this.mLazyInflatedUiComponentContainerFront.setOnKeyListener(onKeyListener);
        if (onKeyListener == null) {
            this.mLazyInflatedUiComponentContainerFront.setFocusable(false);
            this.mLazyInflatedUiComponentContainerFront.setFocusableInTouchMode(false);
            return;
        }
        this.mLazyInflatedUiComponentContainerFront.setFocusable(true);
        this.mLazyInflatedUiComponentContainerFront.setFocusableInTouchMode(true);
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(onTouchListener);
    }

    void setOrientation(int n) {
        this.setOrientation(n, n);
    }

    void setOrientation(int n, int n2) {
        this.mCurrentOrientation = n;
        if (this.mHeadUpDisplay != null) {
            this.mOnScreenButtonGroup.setUiOrientation(n);
            this.mCaptureButtonIcon.setUiOrientation(n);
            this.mContentsViewController.setSensorOrientation(n);
            this.mCapturingModeButton.setSensorOrientation(n);
            this.mBalloonTips.setBalloonTipsOrientation(n);
            this.mGeoTag.setSensorOrientation(n2);
            this.mLowMemory.setSensorOrientation(n2);
            this.mThermal.setSensorOrientation(n2);
            this.mZoombar.setSensorOrientation(n2);
            this.mRecordingIndicator.setOrientation(n2);
        }
    }

    public void setPreInflatedHeadUpDisplay(View view) {
        this.mPreInflatedHeadUpDisplay = view;
    }

    void setup(OnClickCapturingModeButtonListener onClickCapturingModeButtonListener, ContentPallet.ThumbnailClickListener thumbnailClickListener) {
        boolean bl = false;
        if (!this.isHeadUpDesplayReady()) {
            this.inflate();
            bl = true;
        }
        if (this.mHeadUpDisplay != null) {
            LayoutDependencyResolver.resolveLayoutDependencyOnDevice(this.mActivity, this.mHeadUpDisplay);
            this.setupCapturingModeButton();
        }
        this.setupCaptureButtonGroup();
        this.setupCaptureButton();
        if (bl || !this.mContentsViewController.isLoading()) {
            this.setupContentsView(thumbnailClickListener);
        }
        this.setupSettingIndicators();
        this.setupZoombar();
        this.setupRecordingIndicator();
        this.setupBalloonTips();
        if (bl) {
            this.getCapturingModeButton().setup(onClickCapturingModeButtonListener);
        }
        this.setOrientation(this.mCurrentOrientation);
    }

    public void setupBlankScreen() {
        Object object;
        if (this.mWindowCover != null || (object = this.mActivity.getLayoutInflater()) == null) {
            return;
        }
        this.mWindowCover = object.inflate(R.layout.camera_window_cover, null);
        object = this.mActivity.getWindow();
        WindowManager.LayoutParams layoutParams = object.getAttributes();
        object.addContentView(this.mWindowCover, layoutParams);
    }

    public void showBlankScreen() {
        if (this.mWindowCover != null) {
            this.mWindowCover.setVisibility(0);
        }
    }

    public void showContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.show();
        }
    }

    public void showIcons() {
        View view = this.mActivity.findViewById(R.id.left_container);
        View view2 = this.mActivity.findViewById(R.id.right_container);
        view.setVisibility(0);
        view2.setVisibility(0);
    }

    public void showLeftIconContainer() {
        this.mActivity.findViewById(R.id.left_container).setVisibility(0);
    }

    public void showRightIconContainer() {
        this.mActivity.findViewById(R.id.right_container).setVisibility(0);
    }

    public void tearDownBlankScreen() {
        if (this.mWindowCover != null) {
            this.hideBlankScreen();
            this.mWindowCover = null;
        }
    }

    public static enum NavigationBarVisibility {
        VISIBLE,
        LOW_PROFILE,
        HIDE;
        

        private NavigationBarVisibility() {
        }
    }

}

