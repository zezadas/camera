/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.IntDef;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DialogFragment
extends Fragment
implements DialogInterface.OnCancelListener,
DialogInterface.OnDismissListener {
    private static final String SAVED_BACK_STACK_ID = "android:backStackId";
    private static final String SAVED_CANCELABLE = "android:cancelable";
    private static final String SAVED_DIALOG_STATE_TAG = "android:savedDialogState";
    private static final String SAVED_SHOWS_DIALOG = "android:showsDialog";
    private static final String SAVED_STYLE = "android:style";
    private static final String SAVED_THEME = "android:theme";
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;
    int mBackStackId;
    boolean mCancelable;
    Dialog mDialog;
    boolean mDismissed;
    boolean mShownByMe;
    boolean mShowsDialog;
    int mStyle;
    int mTheme;
    boolean mViewDestroyed;

    public DialogFragment();

    public void dismiss();

    public void dismissAllowingStateLoss();

    void dismissInternal(boolean var1);

    public Dialog getDialog();

    @Override
    public LayoutInflater getLayoutInflater(Bundle var1);

    public boolean getShowsDialog();

    public int getTheme();

    public boolean isCancelable();

    @Override
    public void onActivityCreated(Bundle var1);

    @Override
    public void onAttach(Activity var1);

    @Override
    public void onCancel(DialogInterface var1);

    @Override
    public void onCreate(Bundle var1);

    @NonNull
    public Dialog onCreateDialog(Bundle var1);

    @Override
    public void onDestroyView();

    @Override
    public void onDetach();

    @Override
    public void onDismiss(DialogInterface var1);

    @Override
    public void onSaveInstanceState(Bundle var1);

    @Override
    public void onStart();

    @Override
    public void onStop();

    public void setCancelable(boolean var1);

    public void setShowsDialog(boolean var1);

    public void setStyle(int var1, int var2);

    public int show(FragmentTransaction var1, String var2);

    public void show(FragmentManager var1, String var2);

    @Retention(value=RetentionPolicy.SOURCE)
    @IntDef(value={0, 1, 2, 3})
    private static @interface DialogStyle {
    }

}

