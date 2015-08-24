/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.nu;
import com.google.android.gms.internal.nw;
import com.google.android.gms.plus.model.moments.ItemScope;
import java.util.HashSet;
import java.util.Set;

public interface Moment
extends Freezable<Moment> {
    public String getId();

    public ItemScope getResult();

    public String getStartDate();

    public ItemScope getTarget();

    public String getType();

    public boolean hasId();

    public boolean hasResult();

    public boolean hasStartDate();

    public boolean hasTarget();

    public boolean hasType();

    public static class Builder {
        private String BL;
        private String amP;
        private nu amX;
        private nu amY;
        private final Set<Integer> amc = new HashSet<Integer>();
        private String uO;

        public Moment build() {
            return new nw(this.amc, this.BL, this.amX, this.amP, this.amY, this.uO);
        }

        public Builder setId(String string) {
            this.BL = string;
            this.amc.add(2);
            return this;
        }

        public Builder setResult(ItemScope itemScope) {
            this.amX = (nu)itemScope;
            this.amc.add(4);
            return this;
        }

        public Builder setStartDate(String string) {
            this.amP = string;
            this.amc.add(5);
            return this;
        }

        public Builder setTarget(ItemScope itemScope) {
            this.amY = (nu)itemScope;
            this.amc.add(6);
            return this;
        }

        public Builder setType(String string) {
            this.uO = string;
            this.amc.add(7);
            return this;
        }
    }

}

