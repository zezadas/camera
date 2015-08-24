/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class ContactCoodinator
extends Activity {
    private static final int SEQ_FIRST = 1;
    private static final int SEQ_SECOND = 2;
    private static final int SEQ_THIRD = 3;
    private static final String TAG = "ContactCoodinator";
    private int mSeq;

    public ContactCoodinator();

    private void launchCropper(Intent var1);

    private void setContactPhoto(Bitmap var1);

    @Override
    protected void onActivityResult(int var1, int var2, Intent var3);

    @Override
    protected void onResume();
}

