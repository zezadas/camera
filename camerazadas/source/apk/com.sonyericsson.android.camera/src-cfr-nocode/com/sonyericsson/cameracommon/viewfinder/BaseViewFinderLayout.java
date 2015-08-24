/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.viewfinder.AllEventListener;
import com.sonyericsson.cameracommon.viewfinder.balloontips.BalloonTips;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import com.sonyericsson.cameracommon.zoombar.Zoombar;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BaseViewFinderLayout {
    private static final String TAG;
    private BaseActivity mActivity;
    private AllEventListener mAllEventListener;
    private BalloonTips mBalloonTips;
    private RelativeLayout mCaptureButtonGroup;
    private OnScreenButton mCaptureButtonIcon;
    private CapturingModeButton mCapturingModeButton;
    private ContentsViewController mContentsViewController;
    private int mCurrentOrientation;
    private GeotagIndicator mGeoTag;
    private ViewGroup mHeadUpDisplay;
    private FrameLayout mLazyInflatedUiComponentContainerFront;
    private FrameLayout mLazyInflatedUiComponentContainerFullScreen;
    private Indicator mLowMemory;
    private NavigationBarVisibility mNavigationBarVisibility;
    private OnScreenButtonGroup mOnScreenButtonGroup;
    private View mPreInflatedHeadUpDisplay;
    private View mPreview;
    private ViewGroup mPreviewContainer;
    private RecordingIndicator mRecordingIndicator;
    private ViewGroup mRootView;
    private Indicator mThermal;
    private Rect mViewFinderRect;
    private View mWindowCover;
    private Zoombar mZoombar;

    static;

    public BaseViewFinderLayout(BaseActivity var1);

    private NavigationBarVisibility getPreviousNavigationBarVisibility();

    private void inflate();

    private void releaseBalloonTips();

    private void releaseHeadUpDesplay();

    private void setupBalloonTips();

    private void setupCaptureButton();

    private void setupCaptureButtonGroup();

    private void setupCapturingModeButton();

    private void setupContentsView(ContentPallet.ThumbnailClickListener var1);

    private void setupRecordingIndicator();

    private void setupSettingIndicators();

    private void setupZoombar();

    public void addLazyInflatedUiComponent(View var1);

    public void addLazyInflatedUiComponentFullScreen(View var1);

    public void attachToWindow(View var1);

    public BaseActivity getActivity();

    public AllEventListener getAllEventListener();

    public BalloonTips getBalloonTips();

    public RelativeLayout getCaptureButtonGroup();

    public OnScreenButton getCaptureButtonIcon();

    public FrameLayout getCaptureMethodIndicatorContainer();

    public CapturingModeButton getCapturingModeButton();

    public FrameLayout getCenterContainer();

    public ContentsViewController getContentsViewController();

    public int getCurrentOrientation();

    public GeotagIndicator getGeoTagIndicator();

    public FrameLayout getLazyInflatedUiComponentContainerBack();

    public FrameLayout getLazyInflatedUiComponentContainerFront();

    public Indicator getLowMemoryIndicator();

    public FrameLayout getModeIndicatorContainer();

    public OnScreenButtonGroup getOnScreenButtonGroup();

    public View getPreview();

    public ViewGroup getPreviewContainer();

    public FrameLayout getPreviewOverlayContainer();

    public Rect getPreviewRect(Activity var1, int var2, int var3);

    public RecordingIndicator getRecordingIndicator();

    public ViewGroup getRootView();

    public FrameLayout getSettingIndicatorContainer();

    public Indicator getThermalIndicator();

    public Rect getViewFinderRect();

    public Zoombar getZoomBar();

    public void hideBlankScreen();

    public void hideContentsViewController();

    public void hideIcons();

    public void hideLeftIconContainer();

    public void hideRightIconContainer();

    public boolean isHeadUpDesplayReady();

    public void pause();

    public void refresh();

    void release();

    public void releaseBlankScreen();

    public void releaseContentsViewController();

    public void releaseUiComponentContainer();

    public void reloadContentsViewController(ContentPallet.ThumbnailClickListener var1);

    void requestToDimSystemUi();

    void requestToRecoverSystemUi();

    void requestToRemoveSystemUi();

    void requestToRestoreSystemUi();

    void setCurrentNavigationBarVisibility(NavigationBarVisibility var1);

    public void setOnKeyEventListener(View.OnKeyListener var1);

    public void setOnTouchListener(View.OnTouchListener var1);

    void setOrientation(int var1);

    void setOrientation(int var1, int var2);

    public void setPreInflatedHeadUpDisplay(View var1);

    void setup(OnClickCapturingModeButtonListener var1, ContentPallet.ThumbnailClickListener var2);

    public void setupBlankScreen();

    public void showBlankScreen();

    public void showContentsViewController();

    public void showIcons();

    public void showLeftIconContainer();

    public void showRightIconContainer();

    public void tearDownBlankScreen();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class NavigationBarVisibility
    extends Enum<NavigationBarVisibility> {
        private static final /* synthetic */ NavigationBarVisibility[] $VALUES;
        public static final /* enum */ NavigationBarVisibility HIDE;
        public static final /* enum */ NavigationBarVisibility LOW_PROFILE;
        public static final /* enum */ NavigationBarVisibility VISIBLE;

        static;

        private NavigationBarVisibility();

        public static NavigationBarVisibility valueOf(String var0);

        public static NavigationBarVisibility[] values();
    }

}

