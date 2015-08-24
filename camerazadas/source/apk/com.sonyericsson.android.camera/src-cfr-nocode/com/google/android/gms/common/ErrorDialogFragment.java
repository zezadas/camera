/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ErrorDialogFragment
extends DialogFragment {
    private DialogInterface.OnCancelListener HG;
    private Dialog mDialog;

    public ErrorDialogFragment();

    public static ErrorDialogFragment newInstance(Dialog var0);

    public static ErrorDialogFragment newInstance(Dialog var0, DialogInterface.OnCancelListener var1);

    @Override
    public void onCancel(DialogInterface var1);

    @Override
    public Dialog onCreateDialog(Bundle var1);

    @Override
    public void show(FragmentManager var1, String var2);
}

