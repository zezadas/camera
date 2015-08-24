/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class aj {
    private final Set<String> apj;
    private final String apk;

    public /* varargs */ aj(String string2, String ... arrstring) {
        this.apk = string2;
        this.apj = new HashSet<String>(arrstring.length);
        for (String string2 : arrstring) {
            this.apj.add(string2);
        }
    }

    public abstract d.a C(Map<String, d.a> var1);

    boolean a(Set<String> set) {
        return set.containsAll(this.apj);
    }

    public abstract boolean nN();

    public String or() {
        return this.apk;
    }

    public Set<String> os() {
        return this.apj;
    }
}

