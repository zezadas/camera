/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class i<T extends Parcelable>
extends b<T> {
    public i(String string, int n) {
        super(string, Collections.<String>emptySet(), Collections.singleton(string), n);
    }

    @Override
    protected void a(Bundle bundle, Collection<T> collection) {
        bundle.putParcelableArrayList(this.getName(), new ArrayList<T>(collection));
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.l(bundle);
    }

    protected Collection<T> l(Bundle bundle) {
        return bundle.getParcelableArrayList(this.getName());
    }
}

