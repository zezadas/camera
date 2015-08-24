/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.wearable.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.ab;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.af;
import com.google.android.gms.wearable.internal.ao;
import com.google.android.gms.wearable.internal.as;
import com.google.android.gms.wearable.internal.ax;
import com.google.android.gms.wearable.internal.p;
import com.google.android.gms.wearable.internal.v;
import com.google.android.gms.wearable.internal.x;
import com.google.android.gms.wearable.internal.z;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;

/*
 * Exception performing whole class analysis.
 */
public class aw
extends e<af> {
    private final ExecutorService aqA;
    private final HashMap<DataApi.DataListener, ax> avQ;
    private final HashMap<MessageApi.MessageListener, ax> avR;
    private final HashMap<NodeApi.NodeListener, ax> avS;

    public aw(Context var1, Looper var2, GoogleApiClient.ConnectionCallbacks var3, GoogleApiClient.OnConnectionFailedListener var4);

    private FutureTask<Boolean> a(ParcelFileDescriptor var1, byte[] var2);

    static /* synthetic */ HashMap b(aw var0);

    static /* synthetic */ HashMap c(aw var0);

    static /* synthetic */ HashMap d(aw var0);

    @Override
    protected void a(int var1, IBinder var2, Bundle var3);

    public void a(BaseImplementation.b<DataApi.DataItemResult> var1, Uri var2) throws RemoteException;

    public void a(BaseImplementation.b<DataApi.GetFdForAssetResult> var1, Asset var2) throws RemoteException;

    public void a(BaseImplementation.b<Status> var1, DataApi.DataListener var2) throws RemoteException;

    public void a(BaseImplementation.b<Status> var1, DataApi.DataListener var2, IntentFilter[] var3) throws RemoteException;

    public void a(BaseImplementation.b<DataApi.GetFdForAssetResult> var1, DataItemAsset var2) throws RemoteException;

    public void a(BaseImplementation.b<Status> var1, MessageApi.MessageListener var2) throws RemoteException;

    public void a(BaseImplementation.b<Status> var1, MessageApi.MessageListener var2, IntentFilter[] var3) throws RemoteException;

    public void a(BaseImplementation.b<Status> var1, NodeApi.NodeListener var2) throws RemoteException;

    public void a(BaseImplementation.b<DataApi.DataItemResult> var1, PutDataRequest var2) throws RemoteException;

    public void a(BaseImplementation.b<Status> var1, ae var2) throws RemoteException;

    public void a(BaseImplementation.b<MessageApi.SendMessageResult> var1, String var2, String var3, byte[] var4) throws RemoteException;

    @Override
    protected void a(l var1, e.e var2) throws RemoteException;

    public void b(BaseImplementation.b<DataItemBuffer> var1, Uri var2) throws RemoteException;

    public void b(BaseImplementation.b<Status> var1, NodeApi.NodeListener var2) throws RemoteException;

    protected af bU(IBinder var1);

    public void c(BaseImplementation.b<DataApi.DeleteDataItemsResult> var1, Uri var2) throws RemoteException;

    @Override
    public void disconnect();

    @Override
    protected String getServiceDescriptor();

    @Override
    protected String getStartServiceAction();

    @Override
    protected /* synthetic */ IInterface j(IBinder var1);

    public void o(BaseImplementation.b<DataItemBuffer> var1) throws RemoteException;

    public void p(BaseImplementation.b<NodeApi.GetLocalNodeResult> var1) throws RemoteException;

    public void q(BaseImplementation.b<NodeApi.GetConnectedNodesResult> var1) throws RemoteException;

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends com.google.android.gms.wearable.internal.a {
        private final BaseImplementation.b<DataApi.DataItemResult> De;
        private final List<FutureTask<Boolean>> avW;

        a(BaseImplementation.b<DataApi.DataItemResult> var1, List<FutureTask<Boolean>> var2);

        @Override
        public void a(ao var1);
    }

}

