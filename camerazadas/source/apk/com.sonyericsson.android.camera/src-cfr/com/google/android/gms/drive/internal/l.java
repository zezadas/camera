/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class l
extends Metadata {
    private final MetadataBundle Or;

    public l(MetadataBundle metadataBundle) {
        this.Or = metadataBundle;
    }

    @Override
    protected <T> T a(MetadataField<T> metadataField) {
        return this.Or.a(metadataField);
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.hR();
    }

    public Metadata hR() {
        return new l(MetadataBundle.a(this.Or));
    }

    @Override
    public boolean isDataValid() {
        if (this.Or != null) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "Metadata [mImpl=" + this.Or + "]";
    }
}

