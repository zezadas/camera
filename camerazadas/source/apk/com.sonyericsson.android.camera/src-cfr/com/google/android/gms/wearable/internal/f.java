/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.aw;
import com.google.android.gms.wearable.internal.d;
import java.io.IOException;
import java.io.InputStream;

public final class f
implements DataApi {
    private PendingResult<Status> a(GoogleApiClient googleApiClient, final DataApi.DataListener dataListener, final IntentFilter[] arrintentFilter) {
        return googleApiClient.a(new d<Status>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, dataListener, arrintentFilter);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            public Status d(Status status) {
                return new Status(13);
            }
        });
    }

    private void a(Asset asset) {
        if (asset == null) {
            throw new IllegalArgumentException("asset is null");
        }
        if (asset.getDigest() == null) {
            throw new IllegalArgumentException("invalid asset");
        }
        if (asset.getData() != null) {
            throw new IllegalArgumentException("invalid asset");
        }
    }

    @Override
    public PendingResult<Status> addListener(GoogleApiClient googleApiClient, DataApi.DataListener dataListener) {
        return this.a(googleApiClient, dataListener, null);
    }

    @Override
    public PendingResult<DataApi.DeleteDataItemsResult> deleteDataItems(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.a(new d<DataApi.DeleteDataItemsResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.c(this, uri);
            }

            protected DataApi.DeleteDataItemsResult aH(Status status) {
                return new b(status, 0);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aH(status);
            }
        });
    }

    @Override
    public PendingResult<DataApi.DataItemResult> getDataItem(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.a(new d<DataApi.DataItemResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, uri);
            }

            protected DataApi.DataItemResult aF(Status status) {
                return new a(status, null);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aF(status);
            }
        });
    }

    @Override
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient googleApiClient) {
        return googleApiClient.a(new d<DataItemBuffer>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.o(this);
            }

            protected DataItemBuffer aG(Status status) {
                return new DataItemBuffer(DataHolder.as(status.getStatusCode()));
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aG(status);
            }
        });
    }

    @Override
    public PendingResult<DataItemBuffer> getDataItems(GoogleApiClient googleApiClient, final Uri uri) {
        return googleApiClient.a(new d<DataItemBuffer>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.b(this, uri);
            }

            protected DataItemBuffer aG(Status status) {
                return new DataItemBuffer(DataHolder.as(status.getStatusCode()));
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aG(status);
            }
        });
    }

    @Override
    public PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient googleApiClient, final Asset asset) {
        this.a(asset);
        return googleApiClient.a(new d<DataApi.GetFdForAssetResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, asset);
            }

            protected DataApi.GetFdForAssetResult aI(Status status) {
                return new c(status, null);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aI(status);
            }
        });
    }

    @Override
    public PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient googleApiClient, final DataItemAsset dataItemAsset) {
        return googleApiClient.a(new d<DataApi.GetFdForAssetResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, dataItemAsset);
            }

            protected DataApi.GetFdForAssetResult aI(Status status) {
                return new c(status, null);
            }

            @Override
            protected /* synthetic */ Result c(Status status) {
                return this.aI(status);
            }
        });
    }

    @Override
    public PendingResult<DataApi.DataItemResult> putDataItem(GoogleApiClient googleApiClient, final PutDataRequest putDataRequest) {
        return googleApiClient.a(new d<DataApi.DataItemResult>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, putDataRequest);
            }

            public DataApi.DataItemResult aF(Status status) {
                return new a(status, null);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.aF(status);
            }
        });
    }

    @Override
    public PendingResult<Status> removeListener(GoogleApiClient googleApiClient, final DataApi.DataListener dataListener) {
        return googleApiClient.a(new d<Status>(){

            @Override
            protected void a(aw aw) throws RemoteException {
                aw.a(this, dataListener);
            }

            @Override
            public /* synthetic */ Result c(Status status) {
                return this.d(status);
            }

            public Status d(Status status) {
                return new Status(13);
            }
        });
    }

    public static class a
    implements DataApi.DataItemResult {
        private final Status CM;
        private final DataItem avs;

        public a(Status status, DataItem dataItem) {
            this.CM = status;
            this.avs = dataItem;
        }

        @Override
        public DataItem getDataItem() {
            return this.avs;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    public static class b
    implements DataApi.DeleteDataItemsResult {
        private final Status CM;
        private final int avt;

        public b(Status status, int n) {
            this.CM = status;
            this.avt = n;
        }

        @Override
        public int getNumDeleted() {
            return this.avt;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

    public static class c
    implements DataApi.GetFdForAssetResult {
        private final Status CM;
        private volatile InputStream XX;
        private volatile ParcelFileDescriptor avu;
        private volatile boolean mClosed = false;

        public c(Status status, ParcelFileDescriptor parcelFileDescriptor) {
            this.CM = status;
            this.avu = parcelFileDescriptor;
        }

        @Override
        public ParcelFileDescriptor getFd() {
            if (this.mClosed) {
                throw new IllegalStateException("Cannot access the file descriptor after release().");
            }
            return this.avu;
        }

        @Override
        public InputStream getInputStream() {
            if (this.mClosed) {
                throw new IllegalStateException("Cannot access the input stream after release().");
            }
            if (this.avu == null) {
                return null;
            }
            if (this.XX == null) {
                this.XX = new ParcelFileDescriptor.AutoCloseInputStream(this.avu);
            }
            return this.XX;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void release() {
            if (this.avu == null) {
                return;
            }
            if (this.mClosed) {
                throw new IllegalStateException("releasing an already released result.");
            }
            try {
                if (this.XX != null) {
                    this.XX.close();
                } else {
                    this.avu.close();
                }
                this.mClosed = true;
                this.avu = null;
                this.XX = null;
                return;
            }
            catch (IOException var1_1) {
                return;
            }
        }
    }

}

