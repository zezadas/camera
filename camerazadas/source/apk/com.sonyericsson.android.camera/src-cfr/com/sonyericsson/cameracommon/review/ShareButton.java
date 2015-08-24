/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.review.ReviewMenuButton;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.review.ShareListAdapter;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.List;

public class ShareButton
extends ReviewMenuButton
implements DialogInterface.OnClickListener {
    private static final String TAG = ShareButton.class.getSimpleName();
    private Intent mShareIntent;
    private List<ResolveInfo> mShareResolveInfoList;

    public ShareButton(Context context) {
        super(context);
    }

    public ShareButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShareButton(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    private List<ResolveInfo> getShareResolveInfoList(Context context, Uri uri, String string) {
        this.mShareIntent = new Intent();
        this.mShareIntent.setAction("android.intent.action.SEND");
        this.mShareIntent.putExtra("android.intent.extra.STREAM", uri);
        this.mShareIntent.setType(string);
        this.mShareIntent.addFlags(1);
        return context.getPackageManager().queryIntentActivities(this.mShareIntent, 65600);
    }

    @Override
    public void onClick(DialogInterface object, int n) {
        object = this.mShareResolveInfoList.get(n);
        ApplicationLauncher.startResolvedActivity(this.getContext(), this.mShareIntent, (ResolveInfo)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public RotatableDialog select() {
        this.mShareResolveInfoList = this.getShareResolveInfoList(this.getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
        if (this.mShareResolveInfoList == null) {
            CameraLogger.e(TAG, "No activity found.");
            return null;
        } else {
            ShareListAdapter shareListAdapter = new ShareListAdapter(this.getContext(), this.mShareResolveInfoList);
            if (shareListAdapter.getCount() < 1) return null;
            return this.getMessagePopup().showShareSelection(this, null, shareListAdapter);
        }
    }
}

