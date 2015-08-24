/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.internal.nw;
import com.google.android.gms.internal.nx;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;

public final class ny
extends d
implements Moment {
    private nw amZ;

    public ny(DataHolder dataHolder, int n) {
        super(dataHolder, n);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private nw nt() {
        synchronized (this) {
            if (this.amZ == null) {
                byte[] arrby = this.getByteArray("momentImpl");
                Parcel parcel = Parcel.obtain();
                parcel.unmarshall(arrby, 0, arrby.length);
                parcel.setDataPosition(0);
                this.amZ = nw.CREATOR.dc(parcel);
                parcel.recycle();
            }
            return this.amZ;
        }
    }

    @Override
    public /* synthetic */ Object freeze() {
        return this.ns();
    }

    @Override
    public String getId() {
        return this.nt().getId();
    }

    @Override
    public ItemScope getResult() {
        return this.nt().getResult();
    }

    @Override
    public String getStartDate() {
        return this.nt().getStartDate();
    }

    @Override
    public ItemScope getTarget() {
        return this.nt().getTarget();
    }

    @Override
    public String getType() {
        return this.nt().getType();
    }

    @Override
    public boolean hasId() {
        return this.nt().hasId();
    }

    @Override
    public boolean hasResult() {
        return this.nt().hasResult();
    }

    @Override
    public boolean hasStartDate() {
        return this.nt().hasStartDate();
    }

    @Override
    public boolean hasTarget() {
        return this.nt().hasTarget();
    }

    @Override
    public boolean hasType() {
        return this.nt().hasType();
    }

    public nw ns() {
        return this.nt();
    }
}

