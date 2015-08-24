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
import android.util.Log;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.ab;
import com.google.android.gms.wearable.internal.ad;
import com.google.android.gms.wearable.internal.ae;
import com.google.android.gms.wearable.internal.af;
import com.google.android.gms.wearable.internal.ag;
import com.google.android.gms.wearable.internal.aj;
import com.google.android.gms.wearable.internal.ak;
import com.google.android.gms.wearable.internal.ao;
import com.google.android.gms.wearable.internal.aq;
import com.google.android.gms.wearable.internal.as;
import com.google.android.gms.wearable.internal.ax;
import com.google.android.gms.wearable.internal.b;
import com.google.android.gms.wearable.internal.f;
import com.google.android.gms.wearable.internal.m;
import com.google.android.gms.wearable.internal.p;
import com.google.android.gms.wearable.internal.v;
import com.google.android.gms.wearable.internal.x;
import com.google.android.gms.wearable.internal.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

public class aw
extends e<af> {
    private final ExecutorService aqA = Executors.newCachedThreadPool();
    private final HashMap<DataApi.DataListener, ax> avQ = new HashMap();
    private final HashMap<MessageApi.MessageListener, ax> avR = new HashMap();
    private final HashMap<NodeApi.NodeListener, ax> avS = new HashMap();

    public aw(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, new String[0]);
    }

    private FutureTask<Boolean> a(final ParcelFileDescriptor parcelFileDescriptor, final byte[] arrby) {
        return new FutureTask<Boolean>(new Callable<Boolean>(){

            @Override
            public /* synthetic */ Object call() throws Exception {
                return this.qa();
            }

            /*
             * Loose catch block
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Lifted jumps to return sites
             */
            public Boolean qa() {
                if (Log.isLoggable("WearableClient", 3)) {
                    Log.d("WearableClient", "processAssets: writing data to FD : " + parcelFileDescriptor);
                }
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                autoCloseOutputStream.write(arrby);
                autoCloseOutputStream.flush();
                if (Log.isLoggable("WearableClient", 3)) {
                    Log.d("WearableClient", "processAssets: wrote data: " + parcelFileDescriptor);
                }
                Boolean bl = true;
                try {
                    if (Log.isLoggable("WearableClient", 3)) {
                        Log.d("WearableClient", "processAssets: closing: " + parcelFileDescriptor);
                    }
                    autoCloseOutputStream.close();
                    return bl;
                }
                catch (IOException var1_4) {
                    return bl;
                }
                catch (IOException iOException) {
                    try {
                        Log.w("WearableClient", "processAssets: writing data failed: " + parcelFileDescriptor);
                    }
                    catch (Throwable var2_7) {
                        try {
                            if (Log.isLoggable("WearableClient", 3)) {
                                Log.d("WearableClient", "processAssets: closing: " + parcelFileDescriptor);
                            }
                            autoCloseOutputStream.close();
                        }
                        catch (IOException var1_2) {
                            throw var2_7;
                        }
                        throw var2_7;
                    }
                    try {
                        if (Log.isLoggable("WearableClient", 3)) {
                            Log.d("WearableClient", "processAssets: closing: " + parcelFileDescriptor);
                        }
                        autoCloseOutputStream.close();
                    }
                    catch (IOException var1_3) {
                        return false;
                    }
                    return false;
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected void a(int n, IBinder iBinder, Bundle bundle) {
        block12 : {
            if (Log.isLoggable("WearableClient", 2)) {
                Log.d("WearableClient", "onPostInitHandler: statusCode " + n);
            }
            if (n == 0) {
                af af;
                com.google.android.gms.wearable.internal.a a;
                try {
                    a = new com.google.android.gms.wearable.internal.a(){

                        @Override
                        public void a(Status status) {
                        }
                    };
                    if (Log.isLoggable("WearableClient", 2)) {
                        Log.d("WearableClient", "onPostInitHandler: service " + iBinder);
                    }
                    af = af.a.bT(iBinder);
                    for (Map.Entry entry2 : this.avQ.entrySet()) {
                        if (Log.isLoggable("WearableClient", 2)) {
                            Log.d("WearableClient", "onPostInitHandler: adding Data listener " + entry2.getValue());
                        }
                        af.a((ad)a, new b((ax)entry2.getValue()));
                    }
                    for (Map.Entry entry2 : this.avR.entrySet()) {
                        if (Log.isLoggable("WearableClient", 2)) {
                            Log.d("WearableClient", "onPostInitHandler: adding Message listener " + entry2.getValue());
                        }
                        af.a((ad)a, new b((ax)entry2.getValue()));
                    }
                }
                catch (RemoteException var4_5) {
                    Log.d("WearableClient", "WearableClientImpl.onPostInitHandler: error while adding listener", var4_5);
                    break block12;
                }
                for (Map.Entry entry2 : this.avS.entrySet()) {
                    if (Log.isLoggable("WearableClient", 2)) {
                        Log.d("WearableClient", "onPostInitHandler: adding Node listener " + entry2.getValue());
                    }
                    af.a((ad)a, new b((ax)entry2.getValue()));
                }
            }
        }
        Log.d("WearableClient", "WearableClientImpl.onPostInitHandler: done");
        super.a(n, iBinder, bundle);
    }

    public void a(final BaseImplementation.b<DataApi.DataItemResult> b, Uri uri) throws RemoteException {
        ((af)this.gS()).a((ad)new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(x x) {
                b.b(new f.a(new Status(x.statusCode), x.avA));
            }
        }, uri);
    }

    public void a(final BaseImplementation.b<DataApi.GetFdForAssetResult> b, Asset asset) throws RemoteException {
        ((af)this.gS()).a((ad)new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(z z) {
                b.b(new f.c(new Status(z.statusCode), z.avB));
            }
        }, asset);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void a(BaseImplementation.b<Status> b, DataApi.DataListener object) throws RemoteException {
        HashMap<DataApi.DataListener, ax> hashMap = this.avQ;
        // MONITORENTER : hashMap
        object = this.avQ.remove(object);
        // MONITOREXIT : hashMap
        if (object == null) {
            b.b(new Status(4002));
            return;
        }
        this.a(b, (ae)object);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(final BaseImplementation.b<Status> b, final DataApi.DataListener dataListener, IntentFilter[] object) throws RemoteException {
        ax ax = ax.a(dataListener, (IntentFilter[])object);
        object = this.avQ;
        synchronized (object) {
            if (this.avQ.get(dataListener) != null) {
                b.b(new Status(4001));
                return;
            }
            this.avQ.put(dataListener, ax);
        }
        ((af)this.gS()).a((ad)new com.google.android.gms.wearable.internal.a(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Status status) {
                if (!status.isSuccess()) {
                    HashMap hashMap = aw.this.avQ;
                    synchronized (hashMap) {
                        aw.this.avQ.remove(dataListener);
                    }
                }
                b.b(status);
            }
        }, new b(ax));
    }

    public void a(BaseImplementation.b<DataApi.GetFdForAssetResult> b, DataItemAsset dataItemAsset) throws RemoteException {
        this.a(b, Asset.createFromRef(dataItemAsset.getId()));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(BaseImplementation.b<Status> b, MessageApi.MessageListener object) throws RemoteException {
        HashMap<MessageApi.MessageListener, ax> hashMap = this.avR;
        synchronized (hashMap) {
            object = this.avR.remove(object);
            if (object == null) {
                b.b(new Status(4002));
            } else {
                this.a(b, (ae)object);
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(final BaseImplementation.b<Status> b, final MessageApi.MessageListener messageListener, IntentFilter[] object) throws RemoteException {
        ax ax = ax.a(messageListener, (IntentFilter[])object);
        object = this.avR;
        synchronized (object) {
            if (this.avR.get(messageListener) != null) {
                b.b(new Status(4001));
                return;
            }
            this.avR.put(messageListener, ax);
        }
        ((af)this.gS()).a((ad)new com.google.android.gms.wearable.internal.a(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Status status) {
                if (!status.isSuccess()) {
                    HashMap hashMap = aw.this.avR;
                    synchronized (hashMap) {
                        aw.this.avR.remove(messageListener);
                    }
                }
                b.b(status);
            }
        }, new b(ax));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(final BaseImplementation.b<Status> b, final NodeApi.NodeListener nodeListener) throws RemoteException {
        ax ax = ax.a(nodeListener);
        HashMap<NodeApi.NodeListener, ax> hashMap = this.avS;
        synchronized (hashMap) {
            if (this.avS.get(nodeListener) != null) {
                b.b(new Status(4001));
                return;
            }
            this.avS.put(nodeListener, ax);
        }
        ((af)this.gS()).a((ad)new com.google.android.gms.wearable.internal.a(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void a(Status status) {
                if (!status.isSuccess()) {
                    HashMap hashMap = aw.this.avS;
                    synchronized (hashMap) {
                        aw.this.avS.remove(nodeListener);
                    }
                }
                b.b(status);
            }
        }, new b(ax));
    }

    public void a(BaseImplementation.b<DataApi.DataItemResult> b, PutDataRequest putDataRequest) throws RemoteException {
        Object object;
        Object object2 = putDataRequest.getAssets().entrySet().iterator();
        while (object2.hasNext()) {
            object = object2.next().getValue();
            if (object.getData() != null || object.getDigest() != null || object.getFd() != null || object.getUri() != null) continue;
            throw new IllegalArgumentException("Put for " + putDataRequest.getUri() + " contains invalid asset: " + object);
        }
        object2 = PutDataRequest.k(putDataRequest.getUri());
        object2.setData(putDataRequest.getData());
        object = new ArrayList();
        Iterator<Map.Entry<String, Asset>> iterator = putDataRequest.getAssets().entrySet().iterator();
        while (iterator.hasNext()) {
            ParcelFileDescriptor[] arrparcelFileDescriptor;
            Map.Entry<String, Asset> entry = iterator.next();
            Asset asset = entry.getValue();
            if (asset.getData() == null) {
                object2.putAsset(entry.getKey(), entry.getValue());
                continue;
            }
            try {
                arrparcelFileDescriptor = ParcelFileDescriptor.createPipe();
            }
            catch (IOException var1_2) {
                throw new IllegalStateException("Unable to create ParcelFileDescriptor for asset in request: " + putDataRequest, var1_2);
            }
            if (Log.isLoggable("WearableClient", 3)) {
                Log.d("WearableClient", "processAssets: replacing data with FD in asset: " + asset + " read:" + arrparcelFileDescriptor[0] + " write:" + arrparcelFileDescriptor[1]);
            }
            object2.putAsset(entry.getKey(), Asset.createFromFd(arrparcelFileDescriptor[0]));
            entry = this.a(arrparcelFileDescriptor[1], asset.getData());
            object.add(entry);
            this.aqA.submit((Runnable)entry);
        }
        try {
            ((af)this.gS()).a((ad)new a(b, (List<FutureTask<Boolean>>)object), (PutDataRequest)object2);
            return;
        }
        catch (NullPointerException var1_3) {
            throw new IllegalStateException("Unable to putDataItem: " + putDataRequest, var1_3);
        }
    }

    public void a(final BaseImplementation.b<Status> b, ae ae) throws RemoteException {
        ((af)this.gS()).a((ad)new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(Status status) {
                b.b(status);
            }
        }, new aq(ae));
    }

    public void a(final BaseImplementation.b<MessageApi.SendMessageResult> b, String string, String string2, byte[] arrby) throws RemoteException {
        ((af)this.gS()).a(new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(as as) {
                b.b(new ag.a(new Status(as.statusCode), as.avO));
            }
        }, string, string2, arrby);
    }

    @Override
    protected void a(l l, e.e e) throws RemoteException {
        l.e(e, 6171000, this.getContext().getPackageName());
    }

    public void b(final BaseImplementation.b<DataItemBuffer> b, Uri uri) throws RemoteException {
        ((af)this.gS()).b((ad)new com.google.android.gms.wearable.internal.a(){

            @Override
            public void aa(DataHolder dataHolder) {
                b.b(new DataItemBuffer(dataHolder));
            }
        }, uri);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(BaseImplementation.b<Status> b, NodeApi.NodeListener object) throws RemoteException {
        HashMap<NodeApi.NodeListener, ax> hashMap = this.avS;
        synchronized (hashMap) {
            object = this.avS.remove(object);
            if (object == null) {
                b.b(new Status(4002));
            } else {
                this.a(b, (ae)object);
            }
            return;
        }
    }

    protected af bU(IBinder iBinder) {
        return af.a.bT(iBinder);
    }

    public void c(final BaseImplementation.b<DataApi.DeleteDataItemsResult> b, Uri uri) throws RemoteException {
        ((af)this.gS()).c((ad)new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(p p) {
                b.b(new f.b(new Status(p.statusCode), p.avw));
            }
        }, uri);
    }

    @Override
    public void disconnect() {
        super.disconnect();
        this.avQ.clear();
        this.avR.clear();
        this.avS.clear();
    }

    @Override
    protected String getServiceDescriptor() {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    @Override
    protected String getStartServiceAction() {
        return "com.google.android.gms.wearable.BIND";
    }

    @Override
    protected /* synthetic */ IInterface j(IBinder iBinder) {
        return this.bU(iBinder);
    }

    public void o(final BaseImplementation.b<DataItemBuffer> b) throws RemoteException {
        ((af)this.gS()).b(new com.google.android.gms.wearable.internal.a(){

            @Override
            public void aa(DataHolder dataHolder) {
                b.b(new DataItemBuffer(dataHolder));
            }
        });
    }

    public void p(final BaseImplementation.b<NodeApi.GetLocalNodeResult> b) throws RemoteException {
        ((af)this.gS()).c(new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(ab ab) {
                b.b(new aj.b(new Status(ab.statusCode), ab.avC));
            }
        });
    }

    public void q(final BaseImplementation.b<NodeApi.GetConnectedNodesResult> b) throws RemoteException {
        ((af)this.gS()).d(new com.google.android.gms.wearable.internal.a(){

            @Override
            public void a(v v) {
                ArrayList<Node> arrayList = new ArrayList<Node>();
                arrayList.addAll(v.avz);
                b.b(new aj.a(new Status(v.statusCode), arrayList));
            }
        });
    }

    private static class a
    extends com.google.android.gms.wearable.internal.a {
        private final BaseImplementation.b<DataApi.DataItemResult> De;
        private final List<FutureTask<Boolean>> avW;

        a(BaseImplementation.b<DataApi.DataItemResult> b, List<FutureTask<Boolean>> list) {
            this.De = b;
            this.avW = list;
        }

        @Override
        public void a(ao object) {
            this.De.b(new f.a(new Status(object.statusCode), object.avA));
            if (object.statusCode != 0) {
                object = this.avW.iterator();
                while (object.hasNext()) {
                    ((FutureTask)object.next()).cancel(true);
                }
            }
        }
    }

}

