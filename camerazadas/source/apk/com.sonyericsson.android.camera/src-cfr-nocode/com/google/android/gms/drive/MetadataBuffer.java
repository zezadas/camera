/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.MetadataField;

/*
 * Exception performing whole class analysis.
 */
public final class MetadataBuffer
extends DataBuffer<Metadata> {
    private final String Nq;
    private a Nr;

    public MetadataBuffer(DataHolder var1, String var2);

    @Override
    public Metadata get(int var1);

    public String getNextPageToken();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a
    extends Metadata {
        private final DataHolder II;
        private final int JY;
        private final int Ns;

        public a(DataHolder var1, int var2);

        static /* synthetic */ int a(a var0);

        @Override
        protected <T> T a(MetadataField<T> var1);

        @Override
        public /* synthetic */ Object freeze();

        public Metadata hR();

        @Override
        public boolean isDataValid();
    }

}

