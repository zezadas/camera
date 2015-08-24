/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class n {
    public static boolean equal(Object object, Object object2) {
        if (object == object2 || object != null && object.equals(object2)) {
            return true;
        }
        return false;
    }

    public static a h(Object object) {
        return new a(object);
    }

    public static /* varargs */ int hashCode(Object ... arrobject) {
        return Arrays.hashCode(arrobject);
    }

    public static final class a {
        private final List<String> Mg;
        private final Object Mh;

        private a(Object object) {
            this.Mh = o.i(object);
            this.Mg = new ArrayList<String>();
        }

        public a a(String string, Object object) {
            this.Mg.add(o.i(string) + "=" + String.valueOf(object));
            return this;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(100).append(this.Mh.getClass().getSimpleName()).append('{');
            int n = this.Mg.size();
            for (int i = 0; i < n; ++i) {
                stringBuilder.append(this.Mg.get(i));
                if (i >= n - 1) continue;
                stringBuilder.append(", ");
            }
            return stringBuilder.append('}').toString();
        }
    }

}

