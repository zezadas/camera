/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.internal.l;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.b;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.metadata.internal.e;
import com.google.android.gms.internal.kd;

public final class MetadataBuffer
extends DataBuffer<Metadata> {
    private final String Nq;
    private a Nr;

    public MetadataBuffer(DataHolder dataHolder, String string) {
        super(dataHolder);
        this.Nq = string;
        dataHolder.gy().setClassLoader(MetadataBuffer.class.getClassLoader());
    }

    @Override
    public Metadata get(int n) {
        a a;
        block2 : {
            a a2 = this.Nr;
            if (a2 != null) {
                a = a2;
                if (a2.Ns == n) break block2;
            }
            this.Nr = a = new a(this.II, n);
        }
        return a;
    }

    public String getNextPageToken() {
        return this.Nq;
    }

    private static class a
    extends Metadata {
        private final DataHolder II;
        private final int JY;
        private final int Ns;

        public a(DataHolder dataHolder, int n) {
            this.II = dataHolder;
            this.Ns = n;
            this.JY = dataHolder.ar(n);
        }

        @Override
        protected <T> T a(MetadataField<T> metadataField) {
            return metadataField.a(this.II, this.Ns, this.JY);
        }

        @Override
        public /* synthetic */ Object freeze() {
            return this.hR();
        }

        public Metadata hR() {
            MetadataBundle metadataBundle = MetadataBundle.io();
            for (MetadataField metadataField : e.in()) {
                if (metadataField instanceof b || metadataField == kd.Ql) continue;
                metadataField.a(this.II, metadataBundle, this.Ns, this.JY);
            }
            return new l(metadataBundle);
        }

        @Override
        public boolean isDataValid() {
            if (!this.II.isClosed()) {
                return true;
            }
            return false;
        }
    }

}

