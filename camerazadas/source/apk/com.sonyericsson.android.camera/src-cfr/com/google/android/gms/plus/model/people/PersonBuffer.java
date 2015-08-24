/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.model.people;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.e;
import com.google.android.gms.internal.nz;
import com.google.android.gms.internal.oa;
import com.google.android.gms.internal.ok;
import com.google.android.gms.plus.model.people.Person;

public final class PersonBuffer
extends DataBuffer<Person> {
    private final e<nz> anJ;

    public PersonBuffer(DataHolder dataHolder) {
        super(dataHolder);
        if (dataHolder.gy() != null && dataHolder.gy().getBoolean("com.google.android.gms.plus.IsSafeParcelable", false)) {
            this.anJ = new e(dataHolder, nz.CREATOR);
            return;
        }
        this.anJ = null;
    }

    @Override
    public Person get(int n) {
        if (this.anJ != null) {
            return this.anJ.aq(n);
        }
        return new ok(this.II, n);
    }
}

