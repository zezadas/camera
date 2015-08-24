/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ListView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogAnimation;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogFactory;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogListener;
import com.sonyericsson.cameracommon.setting.controller.SettingLayoutCoordinatorFactory;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingControlDialog;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingDialogInterface;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabDialogBasic;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.layoutcoordinator.LayoutCoordinator;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut;
import java.util.Collection;
import java.util.HashMap;
import java.util.Stack;

public class SettingDialogStack {
    private static final View.OnKeyListener DUMMY_ON_INTERCEPT_KEY_LISTENER;
    private static final String TAG;
    private final Context mContext;
    private SettingControlDialog mControlDialog;
    private final ViewGroup mDialogBackground;
    private final HashMap<SettingDialogInterface, Object> mDialogTags;
    private boolean mIsMenuDialogOpened;
    private SettingTabDialogBasic mMenuDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mMenuDialogCoordinateData;
    private int mMenuDialogRowCount = 0;
    private View.OnKeyListener mOnInterceptKeyListener;
    private int mOrientation;
    private SettingDialogBasic mSecondLayerDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mSecondLayerDialogCoordinateData;
    private SettingDialogAnimation mSettingAnimation;
    private final SettingDialogListener mSettingDialogListener;
    private SettingDialogBasic mShortcutDialog;
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData mShortcutDialogCoordinateData;
    private int mShortcutDialotTitleId;
    private final SettingShortcut mShortcutTray;
    private Stack<Rect> mTargetAreaList = new Stack();

    static {
        TAG = SettingDialogStack.class.getSimpleName();
        DUMMY_ON_INTERCEPT_KEY_LISTENER = new View.OnKeyListener(){

            @Override
            public boolean onKey(View view, int n, KeyEvent keyEvent) {
                return false;
            }
        };
    }

    public SettingDialogStack(Context context, SettingDialogListener settingDialogListener, ViewGroup viewGroup, ViewGroup viewGroup2) {
        this(context, settingDialogListener, viewGroup, viewGroup2, null);
    }

    public SettingDialogStack(Context context, SettingDialogListener settingDialogListener, ViewGroup viewGroup, ViewGroup viewGroup2, ListView listView) {
        this.mContext = context;
        this.setOnInterceptKeyListener(null);
        this.mSettingDialogListener = settingDialogListener;
        this.mDialogBackground = new Background(this.mContext);
        viewGroup2.addView(this.mDialogBackground);
        this.mDialogBackground.getLayoutParams().width = -1;
        this.mDialogBackground.getLayoutParams().height = -1;
        this.mShortcutTray = new SettingShortcut(context, viewGroup, listView);
        this.mShortcutDialog = null;
        this.mControlDialog = null;
        this.mMenuDialog = null;
        this.mSecondLayerDialog = null;
        this.mDialogBackground.setClickable(true);
        this.mDialogBackground.setFocusable(false);
        this.mIsMenuDialogOpened = false;
        this.mSettingAnimation = new SettingDialogAnimation(context);
        this.mDialogTags = new HashMap();
    }

    static /* synthetic */ SettingDialogInterface access$000(SettingDialogStack settingDialogStack) {
        return settingDialogStack.getCurrentDialog();
    }

    private boolean closeControlDialog(boolean bl) {
        if (this.mControlDialog != null) {
            this.mDialogTags.remove(this.mControlDialog);
            if (bl) {
                this.mSettingAnimation.setCloseDialogAnimation(this.mControlDialog, this.mOrientation);
            }
            this.mControlDialog.close();
            this.mControlDialog = null;
            this.removeLastRectList();
            return true;
        }
        return false;
    }

    private boolean closeMenuDialog(boolean bl) {
        boolean bl2 = false;
        if (this.mMenuDialog != null) {
            this.mDialogTags.remove(this.mMenuDialog);
            if (bl) {
                this.mSettingAnimation.setCloseDialogAnimation(this.mMenuDialog, this.mOrientation);
            }
            this.mMenuDialog.close();
            this.mMenuDialog = null;
            this.mIsMenuDialogOpened = false;
            this.removeLastRectList();
            bl2 = true;
        }
        return bl2;
    }

    private boolean closeSecondLayerDialog(boolean bl) {
        if (this.mSecondLayerDialog != null) {
            this.mDialogTags.remove(this.mSecondLayerDialog);
            if (bl) {
                this.mSettingAnimation.setCloseDialogAnimation(this.mSecondLayerDialog, this.mOrientation);
            }
            this.mSecondLayerDialog.close();
            this.mSecondLayerDialog = null;
            this.removeLastRectList();
            this.resetEnabledOfDialogs();
            return true;
        }
        return false;
    }

    private boolean closeShortcutDialog(boolean bl) {
        if (this.mShortcutDialog != null) {
            this.mDialogTags.remove(this.mShortcutDialog);
            if (bl) {
                this.mSettingAnimation.setCloseDialogAnimation(this.mShortcutDialog, this.mOrientation);
            }
            this.mShortcutDialog.close();
            this.mShortcutDialog = null;
            this.removeLastRectList();
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateMenuDialogLayoutCoordinateData() {
        Rect rect = this.getContainerRect();
        if (rect == null) {
            return null;
        }
        Rect rect2 = new Rect();
        if (this.mShortcutTray == null) return null;
        if (!this.mShortcutTray.getSelectedItemIconVisibleRect(rect2)) return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(rect, null);
        return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(rect, rect2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateSecondLayerDialogLayoutCoordinateData() {
        Rect rect = this.getContainerRect();
        if (rect == null) return null;
        Rect rect2 = new Rect();
        if (this.mMenuDialog != null) {
            if (!this.mMenuDialog.getSelectedItemRect(rect2)) return null;
            return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(rect, rect2);
        }
        if (this.mShortcutDialog == null) {
            return null;
        }
        if (!this.mShortcutDialog.getSelectedItemRect(rect2)) return null;
        return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(rect, rect2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private SettingLayoutCoordinatorFactory.LayoutCoordinateData generateShortcutLayoutCoordinateData() {
        Rect rect = this.getContainerRect();
        if (rect == null) {
            return null;
        }
        Rect rect2 = new Rect();
        if (this.mShortcutTray == null) return null;
        if (!this.mShortcutTray.getSelectedItemIconVisibleRect(rect2)) return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(rect, null);
        return new SettingLayoutCoordinatorFactory.LayoutCoordinateData(rect, rect2);
    }

    private Rect getContainerRect() {
        Rect rect = new Rect();
        if (!this.mDialogBackground.getGlobalVisibleRect(rect)) {
            return null;
        }
        Resources resources = this.mContext.getResources();
        int n = resources.getDimensionPixelSize(R.dimen.left_container_width);
        int n2 = resources.getDimensionPixelSize(R.dimen.right_container_width);
        rect.set(n, 0, rect.width() - n - n2, rect.height());
        return rect;
    }

    private SettingDialogInterface getCurrentDialog() {
        for (SettingDialogInterface settingDialogInterface : this.getDialogList()) {
            if (settingDialogInterface == null) continue;
            return settingDialogInterface;
        }
        return null;
    }

    private SettingDialogInterface[] getDialogList() {
        return new SettingDialogInterface[]{this.mSecondLayerDialog, this.mShortcutDialog, this.mControlDialog, this.mMenuDialog};
    }

    private void removeLastRectList() {
        if (!this.mTargetAreaList.empty()) {
            this.mTargetAreaList.pop();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void resetEnabledOfDialogs() {
        SettingDialogInterface[] arrsettingDialogInterface = new SettingDialogInterface[]{this.mSecondLayerDialog, this.mShortcutDialog, this.mControlDialog, this.mMenuDialog};
        SettingDialogInterface settingDialogInterface = this.getCurrentDialog();
        for (SettingDialogInterface settingDialogInterface2 : arrsettingDialogInterface) {
            if (settingDialogInterface2 == null) continue;
            boolean bl = settingDialogInterface2 == settingDialogInterface;
            settingDialogInterface2.setEnabled(bl);
        }
    }

    public void clearShortcutSelected() {
        this.mShortcutTray.clearSelected();
    }

    public boolean closeCurrentDialog() {
        boolean bl = false;
        if (!false) {
            bl = this.closeSecondLayerDialog(true);
        }
        boolean bl2 = bl;
        if (!bl) {
            bl2 = this.closeShortcutDialog(true);
        }
        bl = bl2;
        if (!bl2) {
            bl = this.closeControlDialog(true);
        }
        bl2 = bl;
        if (!bl) {
            bl2 = this.closeMenuDialog(true);
        }
        this.resetEnabledOfDialogs();
        if (bl2) {
            if (!this.isDialogOpened()) {
                this.mShortcutTray.show();
                this.mShortcutTray.clearSelected();
                this.mDialogBackground.clearFocus();
                this.mSettingDialogListener.onCloseSettingDialog(this, true);
            }
        } else {
            return bl2;
        }
        this.mSettingDialogListener.onCloseSettingDialog(this, false);
        return bl2;
    }

    public void closeDialogs() {
        this.closeDialogs(false);
    }

    public void closeDialogs(boolean bl) {
        boolean bl2 = this.closeSecondLayerDialog(bl);
        boolean bl3 = this.closeShortcutDialog(bl);
        boolean bl4 = this.closeControlDialog(bl);
        bl = this.closeMenuDialog(bl);
        this.resetEnabledOfDialogs();
        if (false | bl2 | bl3 | bl4 | bl && !this.isDialogOpened()) {
            this.mShortcutTray.show();
            this.mDialogBackground.clearFocus();
            this.mSettingDialogListener.onCloseSettingDialog(this, true);
        }
    }

    public Stack<Rect> getBlurTargetAreaList() {
        this.mTargetAreaList.clear();
        SettingDialogInterface[] arrsettingDialogInterface = new SettingDialogInterface[]();
        if (this.mShortcutTray.getSelectedItemIconVisibleRect((Rect)arrsettingDialogInterface)) {
            this.mTargetAreaList.push((Rect)arrsettingDialogInterface);
        }
        arrsettingDialogInterface = this.getDialogList();
        for (int i = arrsettingDialogInterface.length - 1; i >= 0; --i) {
            SettingDialogInterface settingDialogInterface = arrsettingDialogInterface[i];
            if (settingDialogInterface == null) continue;
            settingDialogInterface.getLayoutCoordinator().coordinatePosition(this.mOrientation);
            this.mTargetAreaList.push(settingDialogInterface.getLayoutCoordinator().getDialogRect());
        }
        return this.mTargetAreaList;
    }

    public SettingTabDialogBasic getMenuDialog() {
        return this.mMenuDialog;
    }

    public SettingDialogBasic getSecondLayerDialog() {
        return this.mSecondLayerDialog;
    }

    public void hideShortcutTray() {
        this.mShortcutTray.hide();
    }

    public boolean isControlDialogOpened() {
        if (this.mControlDialog != null) {
            return true;
        }
        return false;
    }

    public boolean isDialogOpened() {
        if (this.mMenuDialog != null || this.mShortcutDialog != null || this.mControlDialog != null || this.mSecondLayerDialog != null) {
            return true;
        }
        return false;
    }

    public boolean isMenuDialogOpened() {
        if (this.mMenuDialog != null) {
            return true;
        }
        return false;
    }

    public boolean isOpened(Object object) {
        for (Object object2 : this.mDialogTags.values()) {
            if (object2 == null || !object2.equals(object)) continue;
            return true;
        }
        return false;
    }

    public boolean openControlDialog(SettingAdapter settingAdapter) {
        return this.openControlDialog(settingAdapter, null);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean openControlDialog(SettingAdapter settingAdapter, Object object) {
        if (this.mControlDialog != null) {
            return false;
        }
        if (!this.mShortcutTray.isShown()) return false;
        boolean bl = this.isDialogOpened();
        this.closeMenuDialog(false);
        this.closeShortcutDialog(false);
        this.closeControlDialog(false);
        this.closeSecondLayerDialog(false);
        SettingLayoutCoordinatorFactory.LayoutCoordinateData layoutCoordinateData = this.generateShortcutLayoutCoordinateData();
        if (layoutCoordinateData == null) return false;
        this.mControlDialog = SettingDialogFactory.createControl(this.mContext, layoutCoordinateData);
        this.mControlDialog.setAdapter(settingAdapter);
        this.mSettingAnimation.setOpenDialogAnimation(this.mDialogBackground, this.mOrientation);
        this.mControlDialog.open(this.mDialogBackground);
        this.mControlDialog.setSensorOrientation(this.mOrientation);
        this.mDialogTags.put(this.mControlDialog, object);
        this.resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, bl, true);
        return true;
    }

    public boolean openMenuDialog(SettingAdapter settingAdapter, boolean bl) {
        return this.openMenuDialog(settingAdapter, new SettingTabs.Tab[0], null, null, 0);
    }

    public boolean openMenuDialog(SettingAdapter settingAdapter, SettingTabs.Tab[] arrtab, SettingTabs.OnTabSelectedListener onTabSelectedListener, Object object, int n) {
        this.mMenuDialogRowCount = n;
        if (this.mMenuDialog != null) {
            return false;
        }
        if (!this.mShortcutTray.isShown()) {
            this.clearShortcutSelected();
            return false;
        }
        boolean bl = this.isDialogOpened();
        boolean bl2 = false;
        if (!this.mIsMenuDialogOpened) {
            bl2 = true;
        }
        this.closeMenuDialog(false);
        this.closeShortcutDialog(false);
        this.closeControlDialog(false);
        this.closeSecondLayerDialog(false);
        this.mMenuDialogCoordinateData = this.generateMenuDialogLayoutCoordinateData();
        if (this.mMenuDialogCoordinateData != null) {
            this.mMenuDialog = SettingDialogFactory.createMenu(this.mContext, this.mMenuDialogCoordinateData, n, arrtab.length);
            this.mMenuDialog.setTabs(arrtab);
            this.mMenuDialog.setAdapter(settingAdapter);
            this.mMenuDialog.setOnSelectedTabListener(onTabSelectedListener);
            if (!this.mIsMenuDialogOpened && bl2) {
                this.mSettingAnimation.setOpenDialogAnimation(this.mDialogBackground, this.mOrientation);
            }
            this.mMenuDialog.open(this.mDialogBackground);
            this.mMenuDialog.setSensorOrientation(this.mOrientation);
            this.mDialogTags.put(this.mMenuDialog, object);
            this.mIsMenuDialogOpened = true;
        }
        this.resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, bl, bl2);
        return true;
    }

    public boolean openSecondLayerDialog(SettingAdapter settingAdapter) {
        return this.openSecondLayerDialog(settingAdapter, null);
    }

    public boolean openSecondLayerDialog(SettingAdapter settingAdapter, Object object) {
        boolean bl = this.isDialogOpened();
        this.closeSecondLayerDialog(false);
        this.mSecondLayerDialogCoordinateData = this.generateSecondLayerDialogLayoutCoordinateData();
        if (this.mSecondLayerDialogCoordinateData != null) {
            this.mSecondLayerDialog = SettingDialogFactory.createSecondLayerDialog(this.mContext, this.mSecondLayerDialogCoordinateData, this.mMenuDialogRowCount, this.mMenuDialog.numberOfTabs());
            this.mSecondLayerDialog.setAdapter(settingAdapter);
            this.mSettingAnimation.setOpenDialogAnimation(this.mSecondLayerDialog, this.mOrientation);
            this.mSecondLayerDialog.open(this.mDialogBackground);
            this.mSecondLayerDialog.setSensorOrientation(this.mOrientation);
            this.mDialogTags.put(this.mSecondLayerDialog, object);
        }
        this.resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, bl, true);
        return true;
    }

    public boolean openShortcutDialog(SettingAdapter settingAdapter, int n) {
        return this.openShortcutDialog(settingAdapter, n, null);
    }

    public boolean openShortcutDialog(SettingAdapter settingAdapter, int n, Object object) {
        if (this.mShortcutDialog != null && this.mShortcutDialotTitleId == n) {
            return false;
        }
        boolean bl = this.isDialogOpened();
        this.closeMenuDialog(false);
        this.closeShortcutDialog(false);
        this.closeControlDialog(false);
        this.closeSecondLayerDialog(false);
        this.mShortcutDialogCoordinateData = this.generateShortcutLayoutCoordinateData();
        if (this.mShortcutDialogCoordinateData != null) {
            this.mShortcutDialog = SettingDialogFactory.createShortcutDialog(this.mContext, this.mShortcutDialogCoordinateData, n);
            this.mShortcutDialog.setAdapter(settingAdapter);
            this.mSettingAnimation.setOpenDialogAnimation(this.mDialogBackground, this.mOrientation);
            this.mShortcutDialog.open(this.mDialogBackground);
            this.mShortcutDialog.setSensorOrientation(this.mOrientation);
            this.mShortcutDialotTitleId = n;
            this.mDialogTags.put(this.mShortcutDialog, object);
        }
        this.resetEnabledOfDialogs();
        this.mDialogBackground.requestFocus();
        this.mSettingDialogListener.onOpenSettingDialog(this, bl, true);
        return true;
    }

    public void setOnInterceptKeyListener(View.OnKeyListener onKeyListener) {
        if (onKeyListener == null) {
            this.mOnInterceptKeyListener = DUMMY_ON_INTERCEPT_KEY_LISTENER;
            return;
        }
        this.mOnInterceptKeyListener = onKeyListener;
    }

    public void setUiOrientation(int n) {
        this.mOrientation = n;
        if (this.mShortcutTray != null) {
            this.mShortcutTray.setSensorOrientation(this.mOrientation);
        }
        for (SettingDialogInterface settingDialogInterface : this.getDialogList()) {
            if (settingDialogInterface == null) continue;
            settingDialogInterface.setSensorOrientation(this.mOrientation);
        }
    }

    public void setupShortcutTray(SettingAdapter settingAdapter) {
        this.mShortcutTray.setAdapter(settingAdapter);
        this.mShortcutTray.setSensorOrientation(this.mOrientation);
        this.mShortcutTray.show();
    }

    public void showShortcutTray() {
        this.mShortcutTray.show();
    }

    public void updateMenuDialog(SettingAdapter settingAdapter) {
        SettingAdapter settingAdapter2 = this.mMenuDialog.getAdapter();
        settingAdapter2.clear();
        for (int i = 0; i < settingAdapter.getCount(); ++i) {
            settingAdapter2.add((SettingItem)settingAdapter.getItem(i));
        }
        settingAdapter2.notifyDataSetChanged();
    }

    public <T> void updateShortcutSelected(T t) {
        this.mShortcutTray.setSelected(t);
    }

    public void updateShortcutTray(SettingAdapter settingAdapter) {
        this.mShortcutTray.updateAdapter(settingAdapter);
        this.mShortcutTray.setSensorOrientation(this.mOrientation);
    }

    private class Background
    extends FrameLayout {
        public Background(Context context) {
            super(context);
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public boolean onKeyDown(int n, KeyEvent keyEvent) {
            if (SettingDialogStack.this.mOnInterceptKeyListener.onKey(this, n, keyEvent)) return false;
            switch (keyEvent.getKeyCode()) {
                case 27: {
                    if (SettingDialogStack.this.mControlDialog != null) return false;
                }
                case 80: {
                    SettingDialogStack.this.closeDialogs();
                }
                default: {
                    return false;
                }
                case 4: 
            }
            return SettingDialogStack.this.isDialogOpened();
        }

        @Override
        public boolean onKeyUp(int n, KeyEvent keyEvent) {
            switch (keyEvent.getKeyCode()) {
                default: {
                    return false;
                }
                case 4: 
            }
            return SettingDialogStack.this.closeCurrentDialog();
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public boolean onTouchEvent(MotionEvent var1_1) {
            var3_2 = true;
            var4_3 = SettingDialogStack.access$000(SettingDialogStack.this);
            if (var4_3 == null) ** GOTO lbl-1000
            var2_4 = var3_2;
            switch (var1_1.getAction()) {
                default: lbl-1000: // 2 sources:
                {
                    var2_4 = false;
                }
                case 0: {
                    return var2_4;
                }
                case 1: 
            }
            var2_4 = var3_2;
            if (var4_3.hitTest((int)var1_1.getRawX(), (int)var1_1.getRawY()) != false) return var2_4;
            SettingDialogStack.this.closeDialogs(true);
            return true;
        }
    }

}

