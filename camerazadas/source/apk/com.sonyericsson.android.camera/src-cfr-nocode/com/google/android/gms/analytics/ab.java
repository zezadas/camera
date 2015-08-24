/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.analytics.aa;
import com.google.android.gms.analytics.d;
import com.google.android.gms.analytics.e;
import com.google.android.gms.analytics.m;
import com.google.android.gms.analytics.w;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.ju;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class ab
implements d {
    private static final String AY;
    private final a AZ;
    private volatile m Ba;
    private final String Bb;
    private aa Bc;
    private long Bd;
    private final int Be;
    private final Context mContext;
    private ju yD;
    private final e yl;

    static;

    ab(e var1, Context var2);

    ab(e var1, Context var2, String var3, int var4);

    static String A(Map<String, String> var0);

    static /* synthetic */ ju a(ab var0);

    private void a(Map<String, String> var1, long var2, String var4);

    private void a(Map<String, String> var1, Collection<hb> var2);

    private SQLiteDatabase al(String var1);

    static /* synthetic */ String b(ab var0);

    static /* synthetic */ Context c(ab var0);

    private void eM();

    static /* synthetic */ String eP();

    List<String> F(int var1);

    public List<w> G(int var1);

    @Override
    public void a(Map<String, String> var1, long var2, String var4, Collection<hb> var5);

    @Deprecated
    void b(Collection<w> var1);

    void b(String[] var1);

    @Override
    public m dM();

    @Override
    public void dispatch();

    int eN();

    int eO();

    @Override
    public void l(long var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class a
    extends SQLiteOpenHelper {
        private boolean Bf;
        private long Bg;
        final /* synthetic */ ab Bh;

        a(ab var1, Context var2, String var3);

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

