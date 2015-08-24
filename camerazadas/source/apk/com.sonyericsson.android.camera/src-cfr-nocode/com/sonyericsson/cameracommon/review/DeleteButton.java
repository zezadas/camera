/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

public class DeleteButton
extends ReviewMenuButton
implements DialogInterface.OnClickListener {
    public DeleteButton(Context var1);

    public DeleteButton(Context var1, AttributeSet var2);

    public DeleteButton(Context var1, AttributeSet var2, int var3);

    @Override
    public void onClick(DialogInterface var1, int var2);

    @Override
    public RotatableDialog select();
}

