/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.fitness;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.c;
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

    public static class ViewIntentBuilder {
        private long KS;
        private final DataType Sp;
        private DataSource Sq;
        private long Sr;
        private String Ss;
        private final Context mContext;

        public ViewIntentBuilder(Context context, DataType dataType) {
            this.mContext = context;
            this.Sp = dataType;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        private Intent i(Intent object) {
            if (this.Ss == null) {
                return object;
            }
            Intent intent = new Intent((Intent)object).setPackage(this.Ss);
            ResolveInfo resolveInfo = this.mContext.getPackageManager().resolveActivity(intent, 0);
            if (resolveInfo == null) return object;
            object = resolveInfo.activityInfo.name;
            intent.setComponent(new ComponentName(this.Ss, (String)object));
            return intent;
        }

        /*
         * Enabled aggressive block sorting
         */
        public Intent build() {
            boolean bl = true;
            boolean bl2 = this.KS > 0;
            o.a(bl2, "Start time must be set");
            bl2 = this.Sr > this.KS ? bl : false;
            o.a(bl2, "End time must be set and after start time");
            Intent intent = new Intent("vnd.google.fitness.VIEW");
            intent.setType(DataType.getMimeType(this.Sq.getDataType()));
            intent.putExtra("vnd.google.fitness.start_time", this.KS);
            intent.putExtra("vnd.google.fitness.end_time", this.Sr);
            c.a(this.Sq, intent, "vnd.google.fitness.data_source");
            return this.i(intent);
        }

        public ViewIntentBuilder setDataSource(DataSource dataSource) {
            o.b(dataSource.getDataType().equals(this.Sp), "Data source %s is not for the data type %s", dataSource, this.Sp);
            this.Sq = dataSource;
            return this;
        }

        public ViewIntentBuilder setPreferredApplication(String string) {
            this.Ss = string;
            return this;
        }

        public ViewIntentBuilder setTimeInterval(long l, long l2, TimeUnit timeUnit) {
            this.KS = timeUnit.toMillis(l);
            this.Sr = timeUnit.toMillis(l2);
            return this;
        }
    }

}

