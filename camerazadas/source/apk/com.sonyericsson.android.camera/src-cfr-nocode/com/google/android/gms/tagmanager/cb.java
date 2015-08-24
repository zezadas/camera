/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.ju;
import com.google.android.gms.tagmanager.ab;
import com.google.android.gms.tagmanager.ap;
import com.google.android.gms.tagmanager.at;
import com.google.android.gms.tagmanager.au;
import com.google.android.gms.tagmanager.db;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class cb
implements at {
    private static final String AY;
    private final String Bb;
    private long Bd;
    private final int Be;
    private final b apW;
    private volatile ab apX;
    private final au apY;
    private final Context mContext;
    private ju yD;

    static;

    cb(au var1, Context var2);

    cb(au var1, Context var2, String var3, int var4);

    static /* synthetic */ ju a(cb var0);

    static /* synthetic */ void a(cb var0, long var1);

    static /* synthetic */ void a(cb var0, long var1, long var3);

    private SQLiteDatabase al(String var1);

    static /* synthetic */ String b(cb var0);

    static /* synthetic */ Context c(cb var0);

    private void c(long var1, long var3);

    private void eM();

    private void g(long var1, String var3);

    static /* synthetic */ String oI();

    private void y(long var1);

    List<String> F(int var1);

    public List<ap> G(int var1);

    void b(String[] var1);

    @Override
    public void dispatch();

    int eN();

    int eO();

    @Override
    public void f(long var1, String var3);

    int oH();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class a
    implements db.a {
        final /* synthetic */ cb apZ;

        a(cb var1);

        @Override
        public void a(ap var1);

        @Override
        public void b(ap var1);

        @Override
        public void c(ap var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class b
    extends SQLiteOpenHelper {
        private boolean Bf;
        private long Bg;
        final /* synthetic */ cb apZ;

        b(cb var1, Context var2, String var3);

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

}

