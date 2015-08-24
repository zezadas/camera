/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.ju;
import com.google.android.gms.tagmanager.DataLayer;
import java.util.List;
import java.util.concurrent.Executor;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class v
implements DataLayer.c {
    private static final String aoQ;
    private final Executor aoR;
    private a aoS;
    private int aoT;
    private final Context mContext;
    private ju yD;

    static;

    public v(Context var1);

    v(Context var1, ju var2, String var3, int var4, Executor var5);

    static /* synthetic */ List a(v var0);

    static /* synthetic */ void a(v var0, String var1);

    static /* synthetic */ void a(v var0, List var1, long var2);

    private SQLiteDatabase al(String var1);

    static /* synthetic */ Context b(v var0);

    private void b(List<b> var1, long var2);

    private void c(List<b> var1, long var2);

    private void cy(String var1);

    private void fg(int var1);

    private List<String> fh(int var1);

    private List<DataLayer.a> h(List<b> var1);

    private List<b> i(List<DataLayer.a> var1);

    private void i(String[] var1);

    private Object j(byte[] var1);

    private byte[] m(Object var1);

    private List<DataLayer.a> oi();

    private List<b> oj();

    private int ok();

    private void ol();

    static /* synthetic */ String om();

    private void x(long var1);

    @Override
    public void a(DataLayer.c.a var1);

    @Override
    public void a(List<DataLayer.a> var1, long var2);

    @Override
    public void cx(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class a
    extends SQLiteOpenHelper {
        final /* synthetic */ v aoW;

        a(v var1, Context var2, String var3);

        private void a(SQLiteDatabase var1);

        private boolean a(String var1, SQLiteDatabase var2);

        @Override
        public SQLiteDatabase getWritableDatabase();

        @Override
        public void onCreate(SQLiteDatabase var1);

        @Override
        public void onOpen(SQLiteDatabase var1);

        @Override
        public void onUpgrade(SQLiteDatabase var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class b {
        final String JO;
        final byte[] aoZ;

        b(String var1, byte[] var2);

        public String toString();
    }

}

