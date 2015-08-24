/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.BatchResult;
import com.google.android.gms.common.api.BatchResultToken;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.List;

public final class Batch
extends BaseImplementation.AbstractPendingResult<BatchResult> {
    private int IA;
    private boolean IB;
    private boolean IC;
    private final PendingResult<?>[] IE;
    private final Object mw = new Object();

    private Batch(List<PendingResult<?>> list, Looper object) {
        super(new BaseImplementation.CallbackHandler((Looper)object));
        this.IA = list.size();
        this.IE = new PendingResult[this.IA];
        for (int i = 0; i < list.size(); ++i) {
            this.IE[i] = object = list.get(i);
            object.a(new PendingResult.a(){

                /*
                 * Enabled aggressive block sorting
                 * Enabled unnecessary exception pruning
                 */
                @Override
                public void n(Status status) {
                    Object object = Batch.this.mw;
                    synchronized (object) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.IC = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.IB = true;
                        }
                        Batch.b(Batch.this);
                        if (Batch.this.IA == 0) {
                            if (Batch.this.IC) {
                                Batch.this.cancel();
                            } else {
                                status = Batch.this.IB ? new Status(13) : Status.Jv;
                                Batch.this.b(new BatchResult(status, Batch.this.IE));
                            }
                        }
                        return;
                    }
                }
            });
        }
    }

    static /* synthetic */ int b(Batch batch) {
        int n = batch.IA;
        batch.IA = n - 1;
        return n;
    }

    @Override
    public /* synthetic */ Result c(Status status) {
        return this.createFailedResult(status);
    }

    @Override
    public void cancel() {
        super.cancel();
        PendingResult<?>[] arrpendingResult = this.IE;
        int n = arrpendingResult.length;
        for (int i = 0; i < n; ++i) {
            arrpendingResult[i].cancel();
        }
    }

    public BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.IE);
    }

    public static final class Builder {
        private List<PendingResult<?>> IG = new ArrayList();
        private Looper IH;

        public Builder(GoogleApiClient googleApiClient) {
            this.IH = googleApiClient.getLooper();
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken batchResultToken = new BatchResultToken(this.IG.size());
            this.IG.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.IG, this.IH);
        }
    }

}

