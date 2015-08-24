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
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class Batch
extends BaseImplementation.AbstractPendingResult<BatchResult> {
    private int IA;
    private boolean IB;
    private boolean IC;
    private final PendingResult<?>[] IE;
    private final Object mw;

    private Batch(List<PendingResult<?>> var1, Looper var2);

    /* synthetic */ Batch(List var1, Looper var2,  var3);

    static /* synthetic */ Object a(Batch var0);

    static /* synthetic */ boolean a(Batch var0, boolean var1);

    static /* synthetic */ int b(Batch var0);

    static /* synthetic */ boolean b(Batch var0, boolean var1);

    static /* synthetic */ int c(Batch var0);

    static /* synthetic */ boolean d(Batch var0);

    static /* synthetic */ void e(Batch var0);

    static /* synthetic */ boolean f(Batch var0);

    static /* synthetic */ PendingResult[] g(Batch var0);

    @Override
    public /* synthetic */ Result c(Status var1);

    @Override
    public void cancel();

    public BatchResult createFailedResult(Status var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private List<PendingResult<?>> IG;
        private Looper IH;

        public Builder(GoogleApiClient var1);

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> var1);

        public Batch build();
    }

}

