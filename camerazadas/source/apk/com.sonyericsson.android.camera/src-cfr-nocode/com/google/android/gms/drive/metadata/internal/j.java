/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.a;
import java.util.Collection;

public abstract class j<T extends Parcelable>
extends a<T> {
    public j(String var1, Collection<String> var2, Collection<String> var3, int var4);

    @Override
    protected void a(Bundle var1, T var2);

    @Override
    protected /* synthetic */ Object g(Bundle var1);

    protected T m(Bundle var1);
}

