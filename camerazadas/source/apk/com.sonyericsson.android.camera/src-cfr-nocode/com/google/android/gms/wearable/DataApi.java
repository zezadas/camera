/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;
import java.io.InputStream;

public interface DataApi {
    public PendingResult<Status> addListener(GoogleApiClient var1, DataListener var2);

    public PendingResult<DeleteDataItemsResult> deleteDataItems(GoogleApiClient var1, Uri var2);

    public PendingResult<DataItemResult> getDataItem(GoogleApiClient var1, Uri var2);

    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient var1);

    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient var1, Uri var2);

    public PendingResult<GetFdForAssetResult> getFdForAsset(GoogleApiClient var1, Asset var2);

    public PendingResult<GetFdForAssetResult> getFdForAsset(GoogleApiClient var1, DataItemAsset var2);

    public PendingResult<DataItemResult> putDataItem(GoogleApiClient var1, PutDataRequest var2);

    public PendingResult<Status> removeListener(GoogleApiClient var1, DataListener var2);

    public static interface DataItemResult
    extends Result {
        public DataItem getDataItem();
    }

    public static interface DataListener {
        public void onDataChanged(DataEventBuffer var1);
    }

    public static interface DeleteDataItemsResult
    extends Result {
        public int getNumDeleted();
    }

    public static interface GetFdForAssetResult
    extends Releasable,
    Result {
        public ParcelFileDescriptor getFd();

        public InputStream getInputStream();
    }

}

