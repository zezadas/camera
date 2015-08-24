/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.util.SimpleArrayMap;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FragmentActivity
extends Activity {
    static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    private static final String TAG = "FragmentActivity";
    SimpleArrayMap<String, LoaderManagerImpl> mAllLoaderManagers;
    boolean mCheckedForLoaderManager;
    final FragmentContainer mContainer;
    boolean mCreated;
    final FragmentManagerImpl mFragments;
    final Handler mHandler;
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mOptionsMenuInvalidated;
    boolean mReallyStopped;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped;

    public FragmentActivity();

    private void dumpViewHierarchy(String var1, PrintWriter var2, View var3);

    private static String viewToString(View var0);

    void doReallyStop(boolean var1);

    @Override
    public void dump(String var1, FileDescriptor var2, PrintWriter var3, String[] var4);

    public Object getLastCustomNonConfigurationInstance();

    LoaderManagerImpl getLoaderManager(String var1, boolean var2, boolean var3);

    public FragmentManager getSupportFragmentManager();

    public LoaderManager getSupportLoaderManager();

    void invalidateSupportFragment(String var1);

    @Override
    protected void onActivityResult(int var1, int var2, Intent var3);

    public void onAttachFragment(Fragment var1);

    @Override
    public void onBackPressed();

    @Override
    public void onConfigurationChanged(Configuration var1);

    @Override
    protected void onCreate(Bundle var1);

    @Override
    public boolean onCreatePanelMenu(int var1, Menu var2);

    @Override
    public View onCreateView(String var1, @NonNull Context var2, @NonNull AttributeSet var3);

    @Override
    protected void onDestroy();

    @Override
    public boolean onKeyDown(int var1, KeyEvent var2);

    @Override
    public void onLowMemory();

    @Override
    public boolean onMenuItemSelected(int var1, MenuItem var2);

    @Override
    protected void onNewIntent(Intent var1);

    @Override
    public void onPanelClosed(int var1, Menu var2);

    @Override
    protected void onPause();

    @Override
    protected void onPostResume();

    protected boolean onPrepareOptionsPanel(View var1, Menu var2);

    @Override
    public boolean onPreparePanel(int var1, View var2, Menu var3);

    void onReallyStop();

    @Override
    protected void onResume();

    protected void onResumeFragments();

    public Object onRetainCustomNonConfigurationInstance();

    @Override
    public final Object onRetainNonConfigurationInstance();

    @Override
    protected void onSaveInstanceState(Bundle var1);

    @Override
    protected void onStart();

    @Override
    protected void onStop();

    @Override
    public void startActivityForResult(Intent var1, int var2);

    public void startActivityFromFragment(Fragment var1, Intent var2, int var3);

    public void supportInvalidateOptionsMenu();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class FragmentTag {
        public static final int[] Fragment;
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        static;

        FragmentTag();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class NonConfigurationInstances {
        Object activity;
        SimpleArrayMap<String, Object> children;
        Object custom;
        ArrayList<Fragment> fragments;
        SimpleArrayMap<String, LoaderManagerImpl> loaders;

        NonConfigurationInstances();
    }

}

