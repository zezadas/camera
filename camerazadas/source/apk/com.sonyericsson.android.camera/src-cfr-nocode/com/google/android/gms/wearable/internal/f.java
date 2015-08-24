/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.d;
import java.io.InputStream;

/*
 * Exception performing whole class analysis ignored.
 */
public final class f
implements DataApi {
    public f();

    private PendingResult<Status> a(GoogleApiClient var1, DataApi.DataListener var2, IntentFilter[] var3);

    private void a(Asset var1);

    @Override
    public PendingResult<Status> addListener(GoogleApiClient var1, DataApi.DataListener var2);

    @Override
    public PendingResult<DataApi.DeleteDataItemsResult> deleteDataItems(GoogleApiClient var1, Uri var2);

    @Override
    public PendingResult<DataApi.DataItemResult> getDataItem(GoogleApiClient var1, Uri var2);

    @Override
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient var1);

    @Override
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient var1, Uri var2);

    @Override
    public PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient var1, Asset var2);

    @Override
    public PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient var1, DataItemAsset var2);

    @Override
    public PendingResult<DataApi.DataItemResult> putDataItem(GoogleApiClient var1, PutDataRequest var2);

    @Override
    public PendingResult<Status> removeListener(GoogleApiClient var1, DataApi.DataListener var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class a
    implements DataApi.DataItemResult {
        private final Status CM;
        private final DataItem avs;

        public a(Status var1, DataItem var2);

        @Override
        public DataItem getDataItem();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class b
    implements DataApi.DeleteDataItemsResult {
        private final Status CM;
        private final int avt;

        public b(Status var1, int var2);

        @Override
        public int getNumDeleted();

        @Override
        public Status getStatus();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class c
    implements DataApi.GetFdForAssetResult {
        private final Status CM;
        private volatile InputStream XX;
        private volatile ParcelFileDescriptor avu;
        private volatile boolean mClosed;

        public c(Status var1, ParcelFileDescriptor var2);

        @Override
        public ParcelFileDescriptor getFd();

        @Override
        public InputStream getInputStream();

        @Override
        public Status getStatus();

        @Override
        public void release();
    }

}

