/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;

public class ki {
    public static <T> boolean a(List<T> object, List<T> list) {
        if (object.size() != list.size()) {
            return false;
        }
        object = object.iterator();
        while (object.hasNext()) {
            if (list.contains(object.next())) continue;
            return false;
        }
        return true;
    }
}

