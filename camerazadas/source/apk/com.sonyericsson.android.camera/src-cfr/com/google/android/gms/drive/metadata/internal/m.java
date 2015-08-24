/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.UserMetadata;
import com.google.android.gms.drive.metadata.internal.j;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class m
extends j<UserMetadata> {
    public m(String string, int n) {
        super(string, m.bm(string), Collections.<String>emptyList(), n);
    }

    private String bl(String string) {
        return m.r(this.getName(), string);
    }

    private static Collection<String> bm(String string) {
        return Arrays.asList(m.r(string, "permissionId"), m.r(string, "displayName"), m.r(string, "picture"), m.r(string, "isAuthenticatedUser"), m.r(string, "emailAddress"));
    }

    private static String r(String string, String string2) {
        return string + "." + string2;
    }

    @Override
    protected boolean b(DataHolder dataHolder, int n, int n2) {
        if (!dataHolder.h(this.bl("permissionId"), n, n2)) {
            return true;
        }
        return false;
    }

    @Override
    protected /* synthetic */ Object c(DataHolder dataHolder, int n, int n2) {
        return this.j(dataHolder, n, n2);
    }

    protected UserMetadata j(DataHolder object, int n, int n2) {
        String string = object.c(this.bl("permissionId"), n, n2);
        if (string != null) {
            String string2 = object.c(this.bl("displayName"), n, n2);
            String string3 = object.c(this.bl("picture"), n, n2);
            boolean bl = object.d(this.bl("isAuthenticatedUser"), n, n2);
            object = object.c(this.bl("emailAddress"), n, n2);
            return new UserMetadata(string, string2, string3, bl, (String)object);
        }
        return null;
    }
}

