/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.o;

public class ErrorDialogFragment
extends DialogFragment {
    private DialogInterface.OnCancelListener HG = null;
    private Dialog mDialog = null;

    public static ErrorDialogFragment newInstance(Dialog dialog) {
        return ErrorDialogFragment.newInstance(dialog, null);
    }

    public static ErrorDialogFragment newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        dialog = o.b(dialog, (Object)"Cannot display null dialog");
        dialog.setOnCancelListener(null);
        dialog.setOnDismissListener(null);
        errorDialogFragment.mDialog = dialog;
        if (onCancelListener != null) {
            errorDialogFragment.HG = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override
    public void onCancel(DialogInterface dialogInterface) {
        if (this.HG != null) {
            this.HG.onCancel(dialogInterface);
        }
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.mDialog == null) {
            this.setShowsDialog(false);
        }
        return this.mDialog;
    }

    @Override
    public void show(FragmentManager fragmentManager, String string) {
        super.show(fragmentManager, string);
    }
}

