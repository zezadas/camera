/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ShareButton
extends ReviewMenuButton
implements DialogInterface.OnClickListener {
    private static final String TAG;
    private Intent mShareIntent;
    private List<ResolveInfo> mShareResolveInfoList;

    static;

    public ShareButton(Context var1);

    public ShareButton(Context var1, AttributeSet var2);

    public ShareButton(Context var1, AttributeSet var2, int var3);

    private List<ResolveInfo> getShareResolveInfoList(Context var1, Uri var2, String var3);

    @Override
    public void onClick(DialogInterface var1, int var2);

    @Override
    public RotatableDialog select();
}

