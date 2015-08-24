/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.support.annotation.Nullable;
import android.support.v4.widget.DrawerLayout;
import android.view.MenuItem;
import android.view.View;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private boolean mDrawerIndicatorEnabled;
    private final DrawerLayout mDrawerLayout;
    private final int mOpenDrawerContentDescRes;
    private Object mSetIndicatorInfo;
    private SlideDrawable mSlider;
    private Drawable mThemeImage;

    static;

    public ActionBarDrawerToggle(Activity var1, DrawerLayout var2, int var3, int var4, int var5);

    static /* synthetic */ Activity access$400(ActionBarDrawerToggle var0);

    Drawable getThemeUpIndicator();

    public boolean isDrawerIndicatorEnabled();

    public void onConfigurationChanged(Configuration var1);

    @Override
    public void onDrawerClosed(View var1);

    @Override
    public void onDrawerOpened(View var1);

    @Override
    public void onDrawerSlide(View var1, float var2);

    @Override
    public void onDrawerStateChanged(int var1);

    public boolean onOptionsItemSelected(MenuItem var1);

    void setActionBarDescription(int var1);

    void setActionBarUpIndicator(Drawable var1, int var2);

    public void setDrawerIndicatorEnabled(boolean var1);

    public void syncState();

    private static interface ActionBarDrawerToggleImpl {
        public Drawable getThemeUpIndicator(Activity var1);

        public Object setActionBarDescription(Object var1, Activity var2, int var3);

        public Object setActionBarUpIndicator(Object var1, Activity var2, Drawable var3, int var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ActionBarDrawerToggleImplBase
    implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplBase();

        /* synthetic */ ActionBarDrawerToggleImplBase( var1);

        @Override
        public Drawable getThemeUpIndicator(Activity var1);

        @Override
        public Object setActionBarDescription(Object var1, Activity var2, int var3);

        @Override
        public Object setActionBarUpIndicator(Object var1, Activity var2, Drawable var3, int var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ActionBarDrawerToggleImplHC
    implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplHC();

        /* synthetic */ ActionBarDrawerToggleImplHC( var1);

        @Override
        public Drawable getThemeUpIndicator(Activity var1);

        @Override
        public Object setActionBarDescription(Object var1, Activity var2, int var3);

        @Override
        public Object setActionBarUpIndicator(Object var1, Activity var2, Drawable var3, int var4);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class ActionBarDrawerToggleImplJellybeanMR2
    implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplJellybeanMR2();

        /* synthetic */ ActionBarDrawerToggleImplJellybeanMR2( var1);

        @Override
        public Drawable getThemeUpIndicator(Activity var1);

        @Override
        public Object setActionBarDescription(Object var1, Activity var2, int var3);

        @Override
        public Object setActionBarUpIndicator(Object var1, Activity var2, Drawable var3, int var4);
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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SlideDrawable
    extends InsetDrawable
    implements Drawable.Callback {
        private final boolean mHasMirroring;
        private float mOffset;
        private float mPosition;
        private final Rect mTmpRect;
        final /* synthetic */ ActionBarDrawerToggle this$0;

        private SlideDrawable(ActionBarDrawerToggle var1, Drawable var2);

        /* synthetic */ SlideDrawable(ActionBarDrawerToggle var1, Drawable var2,  var3);

        @Override
        public void draw(Canvas var1);

        public float getPosition();

        public void setOffset(float var1);

        public void setPosition(float var1);
    }

}

