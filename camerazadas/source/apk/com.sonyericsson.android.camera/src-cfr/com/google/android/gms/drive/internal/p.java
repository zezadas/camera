/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.internal.q;

abstract class p<R extends Result>
extends BaseImplementation.a<R, q> {
    public p() {
        super(Drive.CU);
    }

    static abstract class a
    extends p<Status> {
        a() {
        }

        @Override
        protected /* synthetic */ Result c(Status status) {
            return this.d(status);
        }

        protected Status d(Status status) {
            return status;
        }
    }

}

