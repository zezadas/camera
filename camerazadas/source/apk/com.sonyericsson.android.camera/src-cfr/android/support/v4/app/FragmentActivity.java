/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompatHoneycomb;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentContainer;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManagerImpl;
import android.support.v4.util.SimpleArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

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

    public FragmentActivity() {
        this.mHandler = new Handler(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void handleMessage(Message message) {
                switch (message.what) {
                    default: {
                        super.handleMessage(message);
                        return;
                    }
                    case 1: {
                        if (!FragmentActivity.this.mStopped) return;
                        {
                            FragmentActivity.this.doReallyStop(false);
                            return;
                        }
                    }
                    case 2: 
                }
                FragmentActivity.this.onResumeFragments();
                FragmentActivity.this.mFragments.execPendingActions();
            }
        };
        this.mFragments = new FragmentManagerImpl();
        this.mContainer = new FragmentContainer(){

            @Override
            public View findViewById(int n) {
                return FragmentActivity.this.findViewById(n);
            }
        };
    }

    /*
     * Enabled aggressive block sorting
     */
    private void dumpViewHierarchy(String string, PrintWriter printWriter, View view) {
        printWriter.print(string);
        if (view == null) {
            printWriter.println("null");
            return;
        } else {
            int n;
            printWriter.println(FragmentActivity.viewToString(view));
            if (!(view instanceof ViewGroup) || (n = (view = (ViewGroup)view).getChildCount()) <= 0) return;
            {
                string = string + "  ";
                for (int i = 0; i < n; ++i) {
                    this.dumpViewHierarchy(string, printWriter, view.getChildAt(i));
                }
                return;
            }
        }
    }

    /*
     * Exception decompiling
     */
    private static String viewToString(View var0) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [7[CASE]], but top level block is 0[TRYBLOCK]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    void doReallyStop(boolean bl) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = bl;
            this.mHandler.removeMessages(1);
            this.onReallyStop();
        }
    }

    @Override
    public void dump(String string, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] arrstring) {
        if (Build.VERSION.SDK_INT >= 11) {
            // empty if block
        }
        printWriter.print(string);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String string2 = string + "  ";
        printWriter.print(string2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.mReallyStopped);
        printWriter.print(string2);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.mLoadersStarted);
        if (this.mLoaderManager != null) {
            printWriter.print(string);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
            printWriter.println(":");
            this.mLoaderManager.dump(string + "  ", fileDescriptor, printWriter, arrstring);
        }
        this.mFragments.dump(string, fileDescriptor, printWriter, arrstring);
        printWriter.print(string);
        printWriter.println("View Hierarchy:");
        this.dumpViewHierarchy(string + "  ", printWriter, this.getWindow().getDecorView());
    }

    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)this.getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.custom;
        }
        return null;
    }

    LoaderManagerImpl getLoaderManager(String string, boolean bl, boolean bl2) {
        LoaderManagerImpl loaderManagerImpl;
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new SimpleArrayMap();
        }
        if ((loaderManagerImpl = this.mAllLoaderManagers.get(string)) == null) {
            if (bl2) {
                loaderManagerImpl = new LoaderManagerImpl(string, this, bl);
                this.mAllLoaderManagers.put(string, loaderManagerImpl);
            }
            return loaderManagerImpl;
        }
        loaderManagerImpl.updateActivity(this);
        return loaderManagerImpl;
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments;
    }

    public LoaderManager getSupportLoaderManager() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = this.getLoaderManager("(root)", this.mLoadersStarted, true);
        return this.mLoaderManager;
    }

    void invalidateSupportFragment(String string) {
        LoaderManagerImpl loaderManagerImpl;
        if (!(this.mAllLoaderManagers == null || (loaderManagerImpl = this.mAllLoaderManagers.get(string)) == null || loaderManagerImpl.mRetaining)) {
            loaderManagerImpl.doDestroy();
            this.mAllLoaderManagers.remove(string);
        }
    }

    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        this.mFragments.noteStateNotSaved();
        int n3 = n >> 16;
        if (n3 != 0) {
            if (this.mFragments.mActive == null || n3 < 0 || --n3 >= this.mFragments.mActive.size()) {
                Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(n));
                return;
            }
            Fragment fragment = this.mFragments.mActive.get(n3);
            if (fragment == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(n));
                return;
            }
            fragment.onActivityResult(65535 & n, n2, intent);
            return;
        }
        super.onActivityResult(n, n2, intent);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override
    public void onBackPressed() {
        if (!this.mFragments.popBackStackImmediate()) {
            this.finish();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.dispatchConfigurationChanged(configuration);
    }

    @Override
    protected void onCreate(Bundle cloneable) {
        Object var2_2 = null;
        this.mFragments.attachActivity(this, this.mContainer, null);
        if (this.getLayoutInflater().getFactory() == null) {
            this.getLayoutInflater().setFactory(this);
        }
        super.onCreate((Bundle)cloneable);
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)this.getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            this.mAllLoaderManagers = nonConfigurationInstances.loaders;
        }
        if (cloneable != null) {
            Object t = cloneable.getParcelable("android:support:fragments");
            FragmentManagerImpl fragmentManagerImpl = this.mFragments;
            cloneable = var2_2;
            if (nonConfigurationInstances != null) {
                cloneable = nonConfigurationInstances.fragments;
            }
            fragmentManagerImpl.restoreAllState((Parcelable)t, (ArrayList<Fragment>)cloneable);
        }
        this.mFragments.dispatchCreate();
    }

    @Override
    public boolean onCreatePanelMenu(int n, Menu menu) {
        if (n == 0) {
            boolean bl = super.onCreatePanelMenu(n, menu);
            boolean bl2 = this.mFragments.dispatchCreateOptionsMenu(menu, this.getMenuInflater());
            if (Build.VERSION.SDK_INT >= 11) {
                return bl | bl2;
            }
            return true;
        }
        return super.onCreatePanelMenu(n, menu);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public View onCreateView(String object, @NonNull Context object2, @NonNull AttributeSet attributeSet) {
        Object var7_4 = null;
        if (!"fragment".equals(object)) {
            return super.onCreateView((String)object, (Context)object2, attributeSet);
        }
        String string = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArray = object2.obtainStyledAttributes(attributeSet, FragmentTag.Fragment);
        String string2 = string;
        if (string == null) {
            string2 = typedArray.getString(0);
        }
        int n = typedArray.getResourceId(1, -1);
        string = typedArray.getString(2);
        typedArray.recycle();
        if (!Fragment.isSupportFragmentClass(this, string2)) {
            return super.onCreateView((String)object, (Context)object2, attributeSet);
        }
        if (false) {
            throw new NullPointerException();
        }
        if (-1 == 0 && n == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string2);
        }
        object2 = var7_4;
        if (n != -1) {
            object2 = this.mFragments.findFragmentById(n);
        }
        object = object2;
        if (object2 == null) {
            object = object2;
            if (string != null) {
                object = this.mFragments.findFragmentByTag(string);
            }
        }
        object2 = object;
        if (object == null) {
            object2 = object;
            if (-1 != 0) {
                object2 = this.mFragments.findFragmentById(0);
            }
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(n) + " fname=" + string2 + " existing=" + object2);
        }
        if (object2 == null) {
            object2 = Fragment.instantiate(this, string2);
            object2.mFromLayout = true;
            int n2 = n != 0 ? n : 0;
            object2.mFragmentId = n2;
            object2.mContainerId = 0;
            object2.mTag = string;
            object2.mInLayout = true;
            object2.mFragmentManager = this.mFragments;
            object2.onInflate(this, attributeSet, object2.mSavedFragmentState);
            this.mFragments.addFragment((Fragment)object2, true);
        } else {
            if (object2.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(n) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + string2);
            }
            object2.mInLayout = true;
            if (!object2.mRetaining) {
                object2.onInflate(this, attributeSet, object2.mSavedFragmentState);
            }
            this.mFragments.moveToState((Fragment)object2);
        }
        if (object2.mView == null) {
            throw new IllegalStateException("Fragment " + string2 + " did not create a view.");
        }
        if (n != 0) {
            object2.mView.setId(n);
        }
        if (object2.mView.getTag() == null) {
            object2.mView.setTag(string);
        }
        return object2.mView;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.doReallyStop(false);
        this.mFragments.dispatchDestroy();
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doDestroy();
        }
    }

    @Override
    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT < 5 && n == 4 && keyEvent.getRepeatCount() == 0) {
            this.onBackPressed();
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }

    @Override
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }

    @Override
    public boolean onMenuItemSelected(int n, MenuItem menuItem) {
        if (super.onMenuItemSelected(n, menuItem)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 0: {
                return this.mFragments.dispatchOptionsItemSelected(menuItem);
            }
            case 6: 
        }
        return this.mFragments.dispatchContextItemSelected(menuItem);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.noteStateNotSaved();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onPanelClosed(int n, Menu menu) {
        switch (n) {
            default: {
                break;
            }
            case 0: {
                this.mFragments.dispatchOptionsMenuClosed(menu);
            }
        }
        super.onPanelClosed(n, menu);
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            this.onResumeFragments();
        }
        this.mFragments.dispatchPause();
    }

    @Override
    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.onResumeFragments();
        this.mFragments.execPendingActions();
    }

    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override
    public boolean onPreparePanel(int n, View view, Menu menu) {
        if (n == 0 && menu != null) {
            if (this.mOptionsMenuInvalidated) {
                this.mOptionsMenuInvalidated = false;
                menu.clear();
                this.onCreatePanelMenu(n, menu);
            }
            return this.onPrepareOptionsPanel(view, menu) | this.mFragments.dispatchPrepareOptionsMenu(menu);
        }
        return super.onPreparePanel(n, view, menu);
    }

    /*
     * Enabled aggressive block sorting
     */
    void onReallyStop() {
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (this.mLoaderManager != null) {
                if (!this.mRetaining) {
                    this.mLoaderManager.doStop();
                } else {
                    this.mLoaderManager.doRetain();
                }
            }
        }
        this.mFragments.dispatchReallyStop();
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    protected void onResumeFragments() {
        this.mFragments.dispatchResume();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final Object onRetainNonConfigurationInstance() {
        LoaderManagerImpl[] arrloaderManagerImpl;
        if (this.mStopped) {
            this.doReallyStop(true);
        }
        Object object = this.onRetainCustomNonConfigurationInstance();
        ArrayList<Fragment> arrayList = this.mFragments.retainNonConfig();
        int n = 0;
        int n2 = 0;
        if (this.mAllLoaderManagers != null) {
            int n3;
            int n4 = this.mAllLoaderManagers.size();
            arrloaderManagerImpl = new LoaderManagerImpl[n4];
            for (n3 = n4 - 1; n3 >= 0; --n3) {
                arrloaderManagerImpl[n3] = this.mAllLoaderManagers.valueAt(n3);
            }
            n = 0;
            n3 = n2;
            n2 = n;
            do {
                n = n3;
                if (n2 >= n4) break;
                LoaderManagerImpl loaderManagerImpl = arrloaderManagerImpl[n2];
                if (loaderManagerImpl.mRetaining) {
                    n3 = 1;
                } else {
                    loaderManagerImpl.doDestroy();
                    this.mAllLoaderManagers.remove(loaderManagerImpl.mWho);
                }
                ++n2;
            } while (true);
        }
        if (arrayList == null && n == 0 && object == null) {
            return null;
        }
        arrloaderManagerImpl = new LoaderManagerImpl[]();
        arrloaderManagerImpl.activity = null;
        arrloaderManagerImpl.custom = object;
        arrloaderManagerImpl.children = null;
        arrloaderManagerImpl.fragments = arrayList;
        arrloaderManagerImpl.loaders = this.mAllLoaderManagers;
        return arrloaderManagerImpl;
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable parcelable = this.mFragments.saveAllState();
        if (parcelable != null) {
            bundle.putParcelable("android:support:fragments", parcelable);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onStart() {
        int n;
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            if (this.mLoaderManager != null) {
                this.mLoaderManager.doStart();
            } else if (!this.mCheckedForLoaderManager) {
                this.mLoaderManager = this.getLoaderManager("(root)", this.mLoadersStarted, false);
                if (!(this.mLoaderManager == null || this.mLoaderManager.mStarted)) {
                    this.mLoaderManager.doStart();
                }
            }
            this.mCheckedForLoaderManager = true;
        }
        this.mFragments.dispatchStart();
        if (this.mAllLoaderManagers == null) {
            return;
        }
        int n2 = this.mAllLoaderManagers.size();
        LoaderManagerImpl[] arrloaderManagerImpl = new LoaderManagerImpl[n2];
        for (n = n2 - 1; n >= 0; --n) {
            arrloaderManagerImpl[n] = this.mAllLoaderManagers.valueAt(n);
        }
        for (n = 0; n < n2; ++n) {
            LoaderManagerImpl loaderManagerImpl = arrloaderManagerImpl[n];
            loaderManagerImpl.finishRetain();
            loaderManagerImpl.doReportStart();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.dispatchStop();
    }

    @Override
    public void startActivityForResult(Intent intent, int n) {
        if (n != -1 && (-65536 & n) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, n);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int n) {
        if (n == -1) {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((-65536 & n) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, (fragment.mIndex + 1 << 16) + (65535 & n));
    }

    public void supportInvalidateOptionsMenu() {
        if (Build.VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
            return;
        }
        this.mOptionsMenuInvalidated = true;
    }

    static class FragmentTag {
        public static final int[] Fragment = new int[]{16842755, 16842960, 16842961};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }

    static final class NonConfigurationInstances {
        Object activity;
        SimpleArrayMap<String, Object> children;
        Object custom;
        ArrayList<Fragment> fragments;
        SimpleArrayMap<String, LoaderManagerImpl> loaders;

        NonConfigurationInstances() {
        }
    }

}

