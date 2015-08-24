/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SupportErrorDialogFragment
extends DialogFragment {
    private DialogInterface.OnCancelListener HG;
    private Dialog mDialog;

    public SupportErrorDialogFragment();

    public static SupportErrorDialogFragment newInstance(Dialog var0);

    public static SupportErrorDialogFragment newInstance(Dialog var0, DialogInterface.OnCancelListener var1);

    @Override
    public void onCancel(DialogInterface var1);

    @Override
    public Dialog onCreateDialog(Bundle var1);

    @Override
    public void show(FragmentManager var1, String var2);
}

