/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.google.android.gms.tagmanager.dd;
import com.google.android.gms.tagmanager.di;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class ci
extends dd {
    private static final String ID = a.ap.toString();
    private static final String aqp = b.dc.toString();

    public ci() {
        super(ID);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    protected boolean a(String string, String string2, Map<String, d.a> map) {
        int n = di.n(map.get(aqp)) != false ? 66 : 64;
        try {
            return Pattern.compile(string2, n).matcher((CharSequence)string).find();
        }
        catch (PatternSyntaxException var1_2) {
            return false;
        }
    }
}

