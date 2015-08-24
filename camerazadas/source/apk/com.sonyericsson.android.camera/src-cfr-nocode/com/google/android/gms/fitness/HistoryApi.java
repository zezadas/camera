/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.result.DataReadResult;
import java.util.concurrent.TimeUnit;

public interface HistoryApi {
    public PendingResult<Status> deleteData(GoogleApiClient var1, DataDeleteRequest var2);

    public PendingResult<Status> insertData(GoogleApiClient var1, DataSet var2);

    public PendingResult<DataReadResult> readData(GoogleApiClient var1, DataReadRequest var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class ViewIntentBuilder {
        private long KS;
        private final DataType Sp;
        private DataSource Sq;
        private long Sr;
        private String Ss;
        private final Context mContext;

        public ViewIntentBuilder(Context var1, DataType var2);

        private Intent i(Intent var1);

        public Intent build();

        public ViewIntentBuilder setDataSource(DataSource var1);

        public ViewIntentBuilder setPreferredApplication(String var1);

        public ViewIntentBuilder setTimeInterval(long var1, long var3, TimeUnit var5);
    }

}

