/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.nu;
import com.google.android.gms.plus.model.moments.ItemScope;
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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private String BL;
        private String amP;
        private nu amX;
        private nu amY;
        private final Set<Integer> amc;
        private String uO;

        public Builder();

        public Moment build();

        public Builder setId(String var1);

        public Builder setResult(ItemScope var1);

        public Builder setStartDate(String var1);

        public Builder setTarget(ItemScope var1);

        public Builder setType(String var1);
    }

}

