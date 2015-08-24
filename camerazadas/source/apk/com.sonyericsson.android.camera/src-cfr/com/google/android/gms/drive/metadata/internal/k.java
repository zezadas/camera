/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;

public class k
extends b<String> {
    public k(String string, int n) {
        super(string, Collections.singleton(string), Collections.<String>emptySet(), n);
    }

    public static final Collection<String> bk(String object) throws JSONException {
        if (object == null) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<String>();
        object = new JSONArray((String)object);
        for (int i = 0; i < object.length(); ++i) {
            arrayList.add(object.getString(i));
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    @Override
    protected void a(Bundle bundle, Collection<String> collection) {
        bundle.putStringArrayList(this.getName(), new ArrayList<String>(collection));
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.d(dataHolder, n, n2);
    }

    @Override
    protected Collection<String> d(DataHolder object, int n, int n2) {
        try {
            object = k.bk(object.c(this.getName(), n, n2));
            return object;
        }
        catch (JSONException var1_2) {
            throw new IllegalStateException("DataHolder supplied invalid JSON", var1_2);
        }
    }

    @Override
    protected /* synthetic */ Object g(Bundle bundle) {
        return this.l(bundle);
    }

    protected Collection<String> l(Bundle bundle) {
        return bundle.getStringArrayList(this.getName());
    }
}

