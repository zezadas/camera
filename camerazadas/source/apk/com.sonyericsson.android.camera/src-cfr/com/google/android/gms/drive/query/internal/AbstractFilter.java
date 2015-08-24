/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.c;
import com.google.android.gms.drive.query.internal.f;

public abstract class AbstractFilter
implements Filter {
    public String toString() {
        return String.format("Filter[%s]", this.a(new c()));
    }
}

