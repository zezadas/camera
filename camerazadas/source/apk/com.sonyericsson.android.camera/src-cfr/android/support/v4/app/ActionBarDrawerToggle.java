/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.app.ActionBarDrawerToggleHoneycomb;
import android.support.v4.app.ActionBarDrawerToggleJellybeanMR2;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.DrawerLayout;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;

public class ActionBarDrawerToggle
implements DrawerLayout.DrawerListener {
    private static final int ID_HOME = 16908332;
    private static final ActionBarDrawerToggleImpl IMPL;
    private static final float TOGGLE_DRAWABLE_OFFSET = 0.33333334f;
    private final Activity mActivity;
    private final Delegate mActivityImpl;
    private final int mCloseDrawerContentDescRes;
    private Drawable mDrawerImage;
    private final int mDrawerImageResource;
    private boolean mDrawerIndicatorEnabled = true;
    private final DrawerLayout mDrawerLayout;
    private final int mOpenDrawerContentDescRes;
    private Object mSetIndicatorInfo;
    private SlideDrawable mSlider;
    private Drawable mThemeImage;

    static {
        int n = Build.VERSION.SDK_INT;
        if (n >= 18) {
            IMPL = new ActionBarDrawerToggleImplJellybeanMR2();
            return;
        }
        if (n >= 11) {
            IMPL = new ActionBarDrawerToggleImplHC();
            return;
        }
        IMPL = new ActionBarDrawerToggleImplBase();
    }

    /*
     * Enabled aggressive block sorting
     */
    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, int n, int n2, int n3) {
        this.mActivity = activity;
        this.mActivityImpl = activity instanceof DelegateProvider ? ((DelegateProvider)activity).getDrawerToggleDelegate() : null;
        this.mDrawerLayout = drawerLayout;
        this.mDrawerImageResource = n;
        this.mOpenDrawerContentDescRes = n2;
        this.mCloseDrawerContentDescRes = n3;
        this.mThemeImage = this.getThemeUpIndicator();
        this.mDrawerImage = activity.getResources().getDrawable(n);
        this.mSlider = new SlideDrawable(this, this.mDrawerImage);
        this.mSlider.setOffset(0.33333334f);
    }

    Drawable getThemeUpIndicator() {
        if (this.mActivityImpl != null) {
            return this.mActivityImpl.getThemeUpIndicator();
        }
        return IMPL.getThemeUpIndicator(this.mActivity);
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.mDrawerIndicatorEnabled;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.mThemeImage = this.getThemeUpIndicator();
        this.mDrawerImage = this.mActivity.getResources().getDrawable(this.mDrawerImageResource);
        this.syncState();
    }

    @Override
    public void onDrawerClosed(View view) {
        this.mSlider.setPosition(0.0f);
        if (this.mDrawerIndicatorEnabled) {
            this.setActionBarDescription(this.mOpenDrawerContentDescRes);
        }
    }

    @Override
    public void onDrawerOpened(View view) {
        this.mSlider.setPosition(1.0f);
        if (this.mDrawerIndicatorEnabled) {
            this.setActionBarDescription(this.mCloseDrawerContentDescRes);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onDrawerSlide(View view, float f) {
        float f2 = this.mSlider.getPosition();
        f = f > 0.5f ? Math.max(f2, Math.max(0.0f, f - 0.5f) * 2.0f) : Math.min(f2, f * 2.0f);
        this.mSlider.setPosition(f);
    }

    @Override
    public void onDrawerStateChanged(int n) {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.mDrawerIndicatorEnabled) return false;
        if (this.mDrawerLayout.isDrawerVisible(8388611)) {
            this.mDrawerLayout.closeDrawer(8388611);
            do {
                return true;
                break;
            } while (true);
        }
        this.mDrawerLayout.openDrawer(8388611);
        return true;
    }

    void setActionBarDescription(int n) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarDescription(n);
            return;
        }
        this.mSetIndicatorInfo = IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, n);
    }

    void setActionBarUpIndicator(Drawable drawable, int n) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarUpIndicator(drawable, n);
            return;
        }
        this.mSetIndicatorInfo = IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, drawable, n);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setDrawerIndicatorEnabled(boolean bl) {
        if (bl != this.mDrawerIndicatorEnabled) {
            if (bl) {
                SlideDrawable slideDrawable = this.mSlider;
                int n = this.mDrawerLayout.isDrawerOpen(8388611) ? this.mCloseDrawerContentDescRes : this.mOpenDrawerContentDescRes;
                this.setActionBarUpIndicator(slideDrawable, n);
            } else {
                this.setActionBarUpIndicator(this.mThemeImage, 0);
            }
            this.mDrawerIndicatorEnabled = bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void syncState() {
        if (this.mDrawerLayout.isDrawerOpen(8388611)) {
            this.mSlider.setPosition(1.0f);
        } else {
            this.mSlider.setPosition(0.0f);
        }
        if (this.mDrawerIndicatorEnabled) {
            SlideDrawable slideDrawable = this.mSlider;
            int n = this.mDrawerLayout.isDrawerOpen(8388611) ? this.mCloseDrawerContentDescRes : this.mOpenDrawerContentDescRes;
            this.setActionBarUpIndicator(slideDrawable, n);
        }
    }

    private static interface ActionBarDrawerToggleImpl {
        public Drawable getThemeUpIndicator(Activity var1);

        public Object setActionBarDescription(Object var1, Activity var2, int var3);

        public Object setActionBarUpIndicator(Object var1, Activity var2, Drawable var3, int var4);
    }

    private static class ActionBarDrawerToggleImplBase
    implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplBase() {
        }

        @Override
        public Drawable getThemeUpIndicator(Activity activity) {
            return null;
        }

        @Override
        public Object setActionBarDescription(Object object, Activity activity, int n) {
            return object;
        }

        @Override
        public Object setActionBarUpIndicator(Object object, Activity activity, Drawable drawable, int n) {
            return object;
        }
    }

    private static class ActionBarDrawerToggleImplHC
    implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplHC() {
        }

        @Override
        public Drawable getThemeUpIndicator(Activity activity) {
            return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(activity);
        }

        @Override
        public Object setActionBarDescription(Object object, Activity activity, int n) {
            return ActionBarDrawerToggleHoneycomb.setActionBarDescription(object, activity, n);
        }

        @Override
        public Object setActionBarUpIndicator(Object object, Activity activity, Drawable drawable, int n) {
            return ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(object, activity, drawable, n);
        }
    }

    private static class ActionBarDrawerToggleImplJellybeanMR2
    implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplJellybeanMR2() {
        }

        @Override
        public Drawable getThemeUpIndicator(Activity activity) {
            return ActionBarDrawerToggleJellybeanMR2.getThemeUpIndicator(activity);
        }

        @Override
        public Object setActionBarDescription(Object object, Activity activity, int n) {
            return ActionBarDrawerToggleJellybeanMR2.setActionBarDescription(object, activity, n);
        }

        @Override
        public Object setActionBarUpIndicator(Object object, Activity activity, Drawable drawable, int n) {
            return ActionBarDrawerToggleJellybeanMR2.setActionBarUpIndicator(object, activity, drawable, n);
        }
    }

    public static interface Delegate {
        @Nullable
        public Drawable getThemeUpIndicator();

        public void setActionBarDescription(int var1);

        public void setActionBarUpIndicator(Drawable var1, int var2);
    }

    public static interface DelegateProvider {
        @Nullable
        public Delegate getDrawerToggleDelegate();
    }

    private class SlideDrawable
    extends InsetDrawable
    implements Drawable.Callback {
        private final boolean mHasMirroring;
        private float mOffset;
        private float mPosition;
        private final Rect mTmpRect;
        final /* synthetic */ ActionBarDrawerToggle this$0;

        private SlideDrawable(ActionBarDrawerToggle actionBarDrawerToggle, Drawable drawable) {
            boolean bl = false;
            this.this$0 = actionBarDrawerToggle;
            super(drawable, 0);
            if (Build.VERSION.SDK_INT > 18) {
                bl = true;
            }
            this.mHasMirroring = bl;
            this.mTmpRect = new Rect();
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void draw(Canvas canvas) {
            int n = 1;
            this.copyBounds(this.mTmpRect);
            canvas.save();
            boolean bl = ViewCompat.getLayoutDirection(this.this$0.mActivity.getWindow().getDecorView()) == 1;
            if (bl) {
                n = -1;
            }
            int n2 = this.mTmpRect.width();
            canvas.translate((- this.mOffset) * (float)n2 * this.mPosition * (float)n, 0.0f);
            if (bl && !this.mHasMirroring) {
                canvas.translate(n2, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            super.draw(canvas);
            canvas.restore();
        }

        public float getPosition() {
            return this.mPosition;
        }

        public void setOffset(float f) {
            this.mOffset = f;
            this.invalidateSelf();
        }

        public void setPosition(float f) {
            this.mPosition = f;
            this.invalidateSelf();
        }
    }

}

