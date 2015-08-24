/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.takenstatus;

import android.location.Location;
import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class TakenStatusCommon {
    private static final String TAG;
    public final boolean addToMediaStore;
    public final String cropValue;
    public final boolean doPostProcessing;
    public final String fileExtension;
    public final int height;
    public final Location location;
    protected List<WeakReference<SavingRequest.StoreDataCallback>> mCallbacks;
    protected long mDateTaken;
    protected Uri mExtraOutput;
    protected String mFilePath;
    protected int mRequestId;
    protected int mSomcType;
    public final String mimeType;
    public final int orientation;
    public final SavingTaskManager.SavedFileType savedFileType;
    public final int width;

    static;

    public TakenStatusCommon(long var1, int var3, Location var4, int var5, int var6, String var7, String var8, SavingTaskManager.SavedFileType var9, String var10, String var11, boolean var12, boolean var13);

    public TakenStatusCommon(TakenStatusCommon var1);

    public TakenStatusCommon(TakenStatusCommon var1, String var2, long var3);

    public void log();
}

