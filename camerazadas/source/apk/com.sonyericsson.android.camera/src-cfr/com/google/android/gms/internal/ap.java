/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.ar;
import com.google.android.gms.internal.as;
import com.google.android.gms.internal.gs;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

public class ap {
    private final int nJ;
    private final int nK;
    private final ao nL = new ar();
    private Base64OutputStream nM;
    private ByteArrayOutputStream nN;

    public ap(int n) {
        this.nK = n;
        this.nJ = 6;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private String m(String object) {
        if ((object = object.split("\n")) == null) return "";
        if (object.length == 0) {
            return "";
        }
        this.nN = new ByteArrayOutputStream();
        this.nM = new Base64OutputStream(this.nN, 10);
        Arrays.sort(object, new Comparator<String>(){

            @Override
            public int compare(String string, String string2) {
                return string2.length() - string.length();
            }
        });
        for (int i = 0; i < object.length && i < this.nK; ++i) {
            if (object[i].trim().length() == 0) continue;
            try {
                this.nM.write(this.nL.l((String)object[i]));
                continue;
            }
            catch (IOException var3_4) {
                gs.b("Error while writing hash to byteStream", var3_4);
            }
        }
        try {
            this.nM.flush();
            this.nM.close();
            return this.nN.toString();
        }
        catch (IOException var1_2) {
            gs.b("HashManager: Unable to convert to base 64", var1_2);
            return "";
        }
    }

    public String a(ArrayList<String> object) {
        StringBuffer stringBuffer = new StringBuffer();
        object = object.iterator();
        while (object.hasNext()) {
            stringBuffer.append(((String)object.next()).toLowerCase());
            stringBuffer.append('\n');
        }
        switch (false) {
            default: {
                return "";
            }
            case 0: {
                return this.n(stringBuffer.toString());
            }
            case 1: 
        }
        return this.m(stringBuffer.toString());
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    String n(String object) {
        if ((object = object.split("\n")) == null) return "";
        if (object.length == 0) {
            return "";
        }
        this.nN = new ByteArrayOutputStream();
        this.nM = new Base64OutputStream(this.nN, 10);
        Object object22 = new PriorityQueue(this.nK, new Comparator<as.a>(){

            public int a(as.a a, as.a a2) {
                return (int)(a.value - a2.value);
            }

            @Override
            public /* synthetic */ int compare(Object object, Object object2) {
                return this.a((as.a)object, (as.a)object2);
            }
        });
        for (int i = 0; i < object.length; ++i) {
            String[] arrstring = aq.p(object[i]);
            if (arrstring.length < this.nJ) continue;
            as.a(arrstring, this.nK, this.nJ, object22);
        }
        for (Object object22 : object22) {
            try {
                this.nM.write(this.nL.l(object22.nQ));
            }
            catch (IOException var3_4) {
                gs.b("Error while writing hash to byteStream", var3_4);
            }
        }
        try {
            this.nM.flush();
            this.nM.close();
            return this.nN.toString();
        }
        catch (IOException var1_2) {
            gs.b("HashManager: unable to convert to base 64", var1_2);
            return "";
        }
    }

}

