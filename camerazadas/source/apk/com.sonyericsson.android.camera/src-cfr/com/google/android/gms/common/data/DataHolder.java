/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.data.f;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;

public final class DataHolder
implements SafeParcelable {
    public static final f CREATOR = new f();
    private static final a Kj = new a(new String[0], null){};
    private final int BR;
    private final int HF;
    private final String[] Kb;
    Bundle Kc;
    private final CursorWindow[] Kd;
    private final Bundle Ke;
    int[] Kf;
    int Kg;
    private Object Kh;
    private boolean Ki = true;
    boolean mClosed = false;

    DataHolder(int n, String[] arrstring, CursorWindow[] arrcursorWindow, int n2, Bundle bundle) {
        this.BR = n;
        this.Kb = arrstring;
        this.Kd = arrcursorWindow;
        this.HF = n2;
        this.Ke = bundle;
    }

    private DataHolder(a a, int n, Bundle bundle) {
        this(a.Kb, DataHolder.a(a, -1), n, bundle);
    }

    public DataHolder(String[] arrstring, CursorWindow[] arrcursorWindow, int n, Bundle bundle) {
        this.BR = 1;
        this.Kb = o.i(arrstring);
        this.Kd = o.i(arrcursorWindow);
        this.HF = n;
        this.Ke = bundle;
        this.gA();
    }

    public static DataHolder a(int n, Bundle bundle) {
        return new DataHolder(Kj, n, bundle);
    }

    /*
     * Exception decompiling
     */
    private static CursorWindow[] a(a var0, int var1_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.IllegalStateException: Backjump on non jumping statement [] lbl71 : TryStatement: try { 2[TRYBLOCK]

        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:44)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner$1.call(Cleaner.java:22)
        // org.benf.cfr.reader.util.graph.GraphVisitorDFS.process(GraphVisitorDFS.java:68)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Cleaner.removeUnreachableCode(Cleaner.java:54)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.RemoveDeterministicJumps.apply(RemoveDeterministicJumps.java:34)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:498)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    public static DataHolder as(int n) {
        return DataHolder.a(n, null);
    }

    private void g(String string, int n) {
        if (!(this.Kc != null && this.Kc.containsKey(string))) {
            throw new IllegalArgumentException("No such column: " + string);
        }
        if (this.isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (n < 0 || n >= this.Kg) {
            throw new CursorIndexOutOfBoundsException(n, this.Kg);
        }
    }

    public long a(String string, int n, int n2) {
        this.g(string, n);
        return this.Kd[n2].getLong(n, this.Kc.getInt(string));
    }

    public void a(String string, int n, int n2, CharArrayBuffer charArrayBuffer) {
        this.g(string, n);
        this.Kd[n2].copyStringToBuffer(n, this.Kc.getInt(string), charArrayBuffer);
    }

    public boolean aQ(String string) {
        return this.Kc.containsKey(string);
    }

    /*
     * Enabled aggressive block sorting
     */
    public int ar(int n) {
        int n2 = 0;
        boolean bl = n >= 0 && n < this.Kg;
        o.I(bl);
        do {
            int n3 = n2;
            if (n2 < this.Kf.length) {
                if (n < this.Kf[n2]) {
                    n3 = n2 - 1;
                }
            } else {
                n = n3;
                if (n3 != this.Kf.length) return n;
                return n3 - 1;
            }
            ++n2;
        } while (true);
    }

    public int b(String string, int n, int n2) {
        this.g(string, n);
        return this.Kd[n2].getInt(n, this.Kc.getInt(string));
    }

    public String c(String string, int n, int n2) {
        this.g(string, n);
        return this.Kd[n2].getString(n, this.Kc.getInt(string));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void close() {
        synchronized (this) {
            if (this.mClosed) {
                return;
            }
            this.mClosed = true;
            for (int i = 0; i < this.Kd.length; ++i) {
                this.Kd[i].close();
            }
            return;
        }
    }

    public boolean d(String string, int n, int n2) {
        this.g(string, n);
        if (Long.valueOf(this.Kd[n2].getLong(n, this.Kc.getInt(string))) == 1) {
            return true;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public float e(String string, int n, int n2) {
        this.g(string, n);
        return this.Kd[n2].getFloat(n, this.Kc.getInt(string));
    }

    public void e(Object object) {
        this.Kh = object;
    }

    public byte[] f(String string, int n, int n2) {
        this.g(string, n);
        return this.Kd[n2].getBlob(n, this.Kc.getInt(string));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected void finalize() throws Throwable {
        try {
            if (this.Ki && this.Kd.length > 0 && !this.isClosed()) {
                String string = this.Kh == null ? "internal object: " + this.toString() : this.Kh.toString();
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (" + string + ")");
                this.close();
            }
            return;
        }
        finally {
            super.finalize();
        }
    }

    public Uri g(String string, int n, int n2) {
        if ((string = this.c(string, n, n2)) == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public void gA() {
        int n;
        int n2 = 0;
        this.Kc = new Bundle();
        for (n = 0; n < this.Kb.length; ++n) {
            this.Kc.putInt(this.Kb[n], n);
        }
        this.Kf = new int[this.Kd.length];
        int n3 = 0;
        n = n2;
        n2 = n3;
        for (; n < this.Kd.length; ++n) {
            this.Kf[n] = n2;
            n3 = this.Kd[n].getStartPosition();
            n2+=this.Kd[n].getNumRows() - (n2 - n3);
        }
        this.Kg = n2;
    }

    String[] gB() {
        return this.Kb;
    }

    CursorWindow[] gC() {
        return this.Kd;
    }

    public int getCount() {
        return this.Kg;
    }

    public int getStatusCode() {
        return this.HF;
    }

    int getVersionCode() {
        return this.BR;
    }

    public Bundle gy() {
        return this.Ke;
    }

    public boolean h(String string, int n, int n2) {
        this.g(string, n);
        return this.Kd[n2].isNull(n, this.Kc.getInt(string));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public boolean isClosed() {
        synchronized (this) {
            return this.mClosed;
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        f.a(this, parcel, n);
    }

    public static class a {
        private final String[] Kb;
        private final ArrayList<HashMap<String, Object>> Kk;
        private final String Kl;
        private final HashMap<Object, Integer> Km;
        private boolean Kn;
        private String Ko;

        private a(String[] arrstring, String string) {
            this.Kb = o.i(arrstring);
            this.Kk = new ArrayList();
            this.Kl = string;
            this.Km = new HashMap();
            this.Kn = false;
            this.Ko = null;
        }

        static /* synthetic */ ArrayList b(a a) {
            return a.Kk;
        }
    }

}

