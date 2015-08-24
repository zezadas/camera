/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.content.ContentValues;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusVideo;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class VideoSavingRequest
extends SavingRequest {
    private static final String TAG;
    public final TakenStatusVideo video;

    static;

    public VideoSavingRequest(TakenStatusCommon var1, TakenStatusVideo var2);

    public VideoSavingRequest(VideoSavingRequest var1);

    @Override
    public ContentValues createContentValues(String var1);

    public long getDuration();

    @Override
    public void log();

    public void setDuration(long var1);
}

