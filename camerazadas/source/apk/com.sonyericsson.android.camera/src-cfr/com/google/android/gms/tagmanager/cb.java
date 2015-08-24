/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import com.google.android.gms.tagmanager.ab;
import com.google.android.gms.tagmanager.ak;
import com.google.android.gms.tagmanager.ap;
import com.google.android.gms.tagmanager.at;
import com.google.android.gms.tagmanager.au;
import com.google.android.gms.tagmanager.bh;
import com.google.android.gms.tagmanager.cy;
import com.google.android.gms.tagmanager.db;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;

class cb
implements at {
    private static final String AY = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final String Bb;
    private long Bd;
    private final int Be;
    private final b apW;
    private volatile ab apX;
    private final au apY;
    private final Context mContext;
    private ju yD;

    cb(au au, Context context) {
        this(au, context, "gtm_urls.db", 2000);
    }

    cb(au au, Context context, String string, int n) {
        this.mContext = context.getApplicationContext();
        this.Bb = string;
        this.apY = au;
        this.yD = jw.hA();
        this.apW = new b(this.mContext, this.Bb);
        this.apX = new db(new DefaultHttpClient(), this.mContext, new a());
        this.Bd = 0;
        this.Be = n;
    }

    private SQLiteDatabase al(String string) {
        try {
            SQLiteDatabase sQLiteDatabase = this.apW.getWritableDatabase();
            return sQLiteDatabase;
        }
        catch (SQLiteException var2_3) {
            bh.W(string);
            return null;
        }
    }

    private void c(long l, long l2) {
        SQLiteDatabase sQLiteDatabase = this.al("Error opening database for getNumStoredHits.");
        if (sQLiteDatabase == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_first_send_time", l2);
        try {
            sQLiteDatabase.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(l)});
            return;
        }
        catch (SQLiteException var5_4) {
            bh.W("Error setting HIT_FIRST_DISPATCH_TIME for hitId: " + l);
            this.y(l);
            return;
        }
    }

    private void eM() {
        int n = this.eO() - this.Be + 1;
        if (n > 0) {
            List<String> list = this.F(n);
            bh.V("Store full, deleting " + list.size() + " hits to make room.");
            this.b(list.toArray(new String[0]));
        }
    }

    private void g(long l, String string) {
        SQLiteDatabase sQLiteDatabase = this.al("Error opening database for putHit");
        if (sQLiteDatabase == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_time", l);
        contentValues.put("hit_url", string);
        contentValues.put("hit_first_send_time", 0);
        try {
            sQLiteDatabase.insert("gtm_hits", null, contentValues);
            this.apY.z(false);
            return;
        }
        catch (SQLiteException var3_3) {
            bh.W("Error storing hit");
            return;
        }
    }

    static /* synthetic */ String oI() {
        return AY;
    }

    private void y(long l) {
        this.b(new String[]{String.valueOf(l)});
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    List<String> F(int var1_1) {
        block16 : {
            var6_2 = new ArrayList<String>();
            if (var1_1 <= 0) {
                bh.W("Invalid maxHits specified. Skipping");
                return var6_2;
            }
            var3_3 = this.al("Error opening database for peekHitIds.");
            if (var3_3 == null) {
                return var6_2;
            }
            var4_4 = String.format("%s ASC", new Object[]{"hit_id"});
            var5_8 = Integer.toString(var1_1);
            var3_3 = var4_4 = var3_3.query("gtm_hits", new String[]{"hit_id"}, null, null, null, null, (String)var4_4, var5_8);
            try {
                if (!var4_4.moveToFirst()) break block16;
            }
            catch (SQLiteException var5_11) {
                ** GOTO lbl28
            }
            do {
                var3_3 = var4_4;
                var6_2.add(String.valueOf(var4_4.getLong(0)));
                var3_3 = var4_4;
                if (var2_12 = var4_4.moveToNext()) continue;
                break;
            } while (true);
        }
        if (var4_4 != null) {
            var4_4.close();
        }
lbl24: // 4 sources:
        do {
            return var6_2;
            break;
        } while (true);
        catch (SQLiteException var5_9) {
            var4_4 = null;
lbl28: // 2 sources:
            var3_3 = var4_4;
            bh.W("Error in peekHits fetching hitIds: " + var5_10.getMessage());
            if (var4_4 == null) ** GOTO lbl24
            var4_4.close();
            return var6_2;
        }
        catch (Throwable var4_5) {
            var3_3 = null;
lbl36: // 2 sources:
            do {
                if (var3_3 == null) throw var4_6;
                var3_3.close();
                throw var4_6;
                break;
            } while (true);
        }
        {
            catch (Throwable var4_7) {
                ** continue;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public List<ap> G(int var1_1) {
        block40 : {
            block39 : {
                var5_2 = new ArrayList<ap>();
                var8_4 = this.al("Error opening database for peekHits");
                if (var8_4 == null) {
                    return var5_2;
                }
                var4_13 = null;
                var6_6 = String.format("%s ASC", new Object[]{"hit_id"});
                var7_18 = Integer.toString(var1_1);
                var4_13 = var6_6 = var8_4.query("gtm_hits", new String[]{"hit_id", "hit_time", "hit_first_send_time"}, null, null, null, null, (String)var6_6, (String)var7_18);
                var7_18 = new ArrayList<E>();
                if (var4_13.moveToFirst()) {
                    do {
                        var7_18.add(new ap(var4_13.getLong(0), var4_13.getLong(1), var4_13.getLong(2)));
                    } while (var3_20 = var4_13.moveToNext());
                }
                if (var4_13 == null) break block39;
                var4_13.close();
            }
            var5_2 = var4_13;
            var6_6 = String.format("%s ASC", new Object[]{"hit_id"});
            var5_2 = var4_13;
            var9_21 = Integer.toString(var1_1);
            var5_2 = var4_13;
            var6_6 = var8_4.query("gtm_hits", new String[]{"hit_id", "hit_url"}, null, null, null, null, (String)var6_6, var9_21);
            if (!var6_6.moveToFirst()) ** GOTO lbl-1000
            var1_1 = 0;
lbl34: // 3 sources:
            if (((SQLiteCursor)var6_6).getWindow().getNumRows() > 0) {
                ((ap)var7_18.get(var1_1)).ak(var6_6.getString(1));
lbl36: // 2 sources:
                ** while (!(var3_20 = var6_6.moveToNext()))
            } else {
                ** GOTO lbl58
            }
lbl-1000: // 2 sources:
            {
                if (var6_6 == null) return var7_18;
                var6_6.close();
                return var7_18;
lbl40: // 1 sources:
                break block40;
            }
            catch (SQLiteException var6_7) {
                var7_19 = null;
                var4_13 = var5_2;
                var5_2 = var7_19;
lbl46: // 4 sources:
                bh.W("Error in peekHits fetching hitIds: " + var6_5.getMessage());
                var6_5 = var4_13;
                if (var5_2 == null) return var6_5;
                var5_2.close();
                return var4_13;
            }
            catch (Throwable var6_8) {
                var5_2 = var4_13;
                var4_13 = var6_8;
lbl54: // 3 sources:
                do {
                    if (var5_2 == null) throw var4_13;
                    var5_2.close();
                    throw var4_13;
                    break;
                } while (true);
            }
lbl58: // 2 sources:
            try {
                bh.W(String.format("HitString for hitId %d too large.  Hit will be deleted.", new Object[]{((ap)var7_18.get(var1_1)).eG()}));
                ** GOTO lbl36
            }
            catch (SQLiteException var5_3) {
                var4_13 = var6_6;
                var6_6 = var5_3;
lbl64: // 2 sources:
                do {
                    var5_2 = var4_13;
                    bh.W("Error in peekHits fetching hit url: " + var6_6.getMessage());
                    var5_2 = var4_13;
                    var6_6 = new ArrayList<E>();
                    var1_1 = 0;
                    var5_2 = var4_13;
                    try {
                        var7_18 = var7_18.iterator();
                    }
                    catch (Throwable var4_14) lbl-1000: // 2 sources:
                    {
                        do {
                            if (var5_2 == null) throw var4_15;
                            var5_2.close();
                            throw var4_15;
                            break;
                        } while (true);
                    }
                    do {
                        var5_2 = var4_13;
                        if (!var7_18.hasNext()) break block41;
                        var5_2 = var4_13;
                        break;
                    } while (true);
                    {
                        block42 : {
                            block43 : {
                                block41 : {
                                    var8_4 = (ap)var7_18.next();
                                    var5_2 = var4_13;
                                    var3_20 = TextUtils.isEmpty((CharSequence)var8_4.ou());
                                    var2_22 = var1_1;
                                    if (!var3_20) break block42;
                                    if (var1_1 == 0) break block43;
                                }
                                if (var4_13 == null) return var6_6;
                                var4_13.close();
                                return var6_6;
                            }
                            var2_22 = 1;
                        }
                        var5_2 = var4_13;
                        var6_6.add(var8_4);
                        var1_1 = var2_22;
                        continue;
                    }
                    break;
                } while (true);
            }
            catch (Throwable var4_16) {
                var5_2 = var6_6;
                ** continue;
            }
            catch (SQLiteException var6_9) {
                ** continue;
            }
            catch (Throwable var6_10) {
                var5_2 = var4_13;
                var4_13 = var6_10;
                ** GOTO lbl54
            }
            {
                catch (Throwable var4_17) {
                    ** continue;
                }
            }
            {
                catch (SQLiteException var6_11) {
                    var7_18 = var4_13;
                    var4_13 = var5_2;
                    var5_2 = var7_18;
                    ** GOTO lbl46
                }
                catch (SQLiteException var6_12) {
                    var5_2 = var4_13;
                    var4_13 = var7_18;
                    ** GOTO lbl46
                }
            }
        }
        ++var1_1;
        ** GOTO lbl34
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void b(String[] object) {
        boolean bl;
        block4 : {
            block3 : {
                SQLiteDatabase sQLiteDatabase;
                bl = true;
                if (object == null) return;
                if (object.length == 0 || (sQLiteDatabase = this.al("Error opening database for deleteHits.")) == null) {
                    return;
                }
                String string = String.format("HIT_ID in (%s)", TextUtils.join((CharSequence)",", Collections.nCopies(object.length, "?")));
                try {
                    sQLiteDatabase.delete("gtm_hits", string, (String[])object);
                    object = this.apY;
                    if (this.eO() != 0) break block3;
                    break block4;
                }
                catch (SQLiteException var1_2) {
                    bh.W("Error deleting hits");
                    return;
                }
            }
            bl = false;
        }
        object.z(bl);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void dispatch() {
        bh.V("GTM Dispatch running...");
        if (!this.apX.dX()) {
            return;
        }
        List<ap> list = this.G(40);
        if (list.isEmpty()) {
            bh.V("...nothing to dispatch");
            this.apY.z(true);
            return;
        }
        this.apX.j(list);
        if (this.oH() <= 0) return;
        cy.pw().dispatch();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    int eN() {
        boolean bl = true;
        long l = this.yD.currentTimeMillis();
        if (l <= this.Bd + 86400000) {
            return 0;
        }
        this.Bd = l;
        Object object = this.al("Error opening database for deleteStaleHits.");
        if (object == null) return 0;
        int n = object.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.yD.currentTimeMillis() - 2592000000L)});
        object = this.apY;
        if (this.eO() != 0) {
            bl = false;
        }
        object.z(bl);
        return n;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    int eO() {
        Cursor cursor;
        int n;
        int n2;
        block7 : {
            long l;
            Object var6_1 = null;
            Cursor cursor2 = null;
            n2 = 0;
            n = 0;
            SQLiteDatabase sQLiteDatabase = this.al("Error opening database for getNumStoredHits.");
            if (sQLiteDatabase == null) return n;
            try {
                Cursor cursor3 = cursor = sQLiteDatabase.rawQuery("SELECT COUNT(*) from gtm_hits", null);
                Cursor cursor4 = cursor;
                if (!cursor.moveToFirst()) break block7;
                Cursor cursor5 = cursor;
                Cursor cursor6 = cursor;
                l = cursor.getLong(0);
            }
            catch (SQLiteException var6_4) {
                Cursor cursor7 = cursor2;
                try {
                    bh.W("Error getting numStoredHits");
                    if (cursor2 == null) {
                        return n;
                    }
                    cursor2.close();
                    return 0;
                }
                catch (Throwable var5_10) {
                    void var6_6;
                    if (var6_6 == null) throw var5_10;
                    {
                        var6_6.close();
                    }
                    throw var5_10;
                }
            }
            n2 = (int)l;
        }
        n = n2;
        if (cursor == null) return n;
        {
            cursor.close();
            return n2;
        }
    }

    @Override
    public void f(long l, String string) {
        this.eN();
        this.eM();
        this.g(l, string);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    int oH() {
        var4_1 = null;
        var3_3 = this.al("Error opening database for getNumStoredHits.");
        if (var3_3 == null) {
            return 0;
        }
        var3_3 = var3_3.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
        var1_7 = var2_6 = var3_3.getCount();
        if (var3_3 == null) return var1_7;
        var3_3.close();
        return var2_6;
        catch (SQLiteException var3_4) {
            var3_3 = null;
            ** GOTO lbl22
            catch (Throwable var3_5) {}
            ** GOTO lbl-1000
            catch (Throwable var5_8) {
                var4_1 = var3_3;
                var3_3 = var5_8;
                ** GOTO lbl-1000
            }
            catch (SQLiteException var4_2) {}
lbl22: // 2 sources:
            try {
                bh.W("Error getting num untried hits");
                if (var3_3 == null) return 0;
                var3_3.close();
                return 0;
            }
            catch (Throwable var5_9) {
                var4_1 = var3_3;
                var3_3 = var5_9;
            }
        }
lbl-1000: // 3 sources:
        {
            if (var4_1 == null) throw var3_3;
            var4_1.close();
            throw var3_3;
        }
    }

    class a
    implements db.a {
        a() {
        }

        @Override
        public void a(ap ap) {
            cb.this.y(ap.eG());
        }

        @Override
        public void b(ap ap) {
            cb.this.y(ap.eG());
            bh.V("Permanent failure dispatching hitId: " + ap.eG());
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void c(ap ap) {
            long l = ap.ot();
            if (l == 0) {
                cb.this.c(ap.eG(), cb.this.yD.currentTimeMillis());
                return;
            } else {
                if (l + 14400000 >= cb.this.yD.currentTimeMillis()) return;
                {
                    cb.this.y(ap.eG());
                    bh.V("Giving up on failed hitId: " + ap.eG());
                    return;
                }
            }
        }
    }

    class b
    extends SQLiteOpenHelper {
        private boolean Bf;
        private long Bg;

        b(Context context, String string) {
            super(context, string, null, 1);
            this.Bg = 0;
        }

        private void a(SQLiteDatabase closeable) {
            String[] arrstring;
            int n;
            closeable = closeable.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            HashSet<String> hashSet = new HashSet<String>();
            try {
                arrstring = closeable.getColumnNames();
                n = 0;
            }
            catch (Throwable var3_3) {
                closeable.close();
                throw var3_3;
            }
            do {
                if (n >= arrstring.length) break;
                hashSet.add(arrstring[n]);
                ++n;
            } while (true);
            closeable.close();
            if (!(hashSet.remove("hit_id") && hashSet.remove("hit_url") && hashSet.remove("hit_time") && hashSet.remove("hit_first_send_time"))) {
                throw new SQLiteException("Database column missing");
            }
            if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
        }

        /*
         * Unable to fully structure code
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private boolean a(String var1_1, SQLiteDatabase var2_6) {
            var4_13 = null;
            var2_7 = var2_6.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{var1_1}, null, null, null);
            try {
                var3_15 = var2_7.moveToFirst();
                if (var2_7 == null) return var3_15;
            }
            catch (Throwable var1_4) {
                ** GOTO lbl18
            }
            var2_7.close();
            return var3_15;
            catch (SQLiteException var2_8) {
                var2_9 = null;
lbl12: // 3 sources:
                bh.W("Error querying for table " + var1_1);
                if (var2_10 == null) return false;
                var2_10.close();
                return false;
            }
            catch (Throwable var1_2) {
                var2_11 = var4_13;
lbl18: // 3 sources:
                do {
                    if (var2_12 == null) throw var1_3;
                    var2_12.close();
                    throw var1_3;
                    break;
                } while (true);
            }
            {
                catch (Throwable var1_5) {
                    ** continue;
                }
            }
            catch (SQLiteException var4_14) {
                ** GOTO lbl12
            }
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public SQLiteDatabase getWritableDatabase() {
            SQLiteDatabase sQLiteDatabase;
            if (this.Bf && this.Bg + 3600000 > cb.this.yD.currentTimeMillis()) {
                throw new SQLiteException("Database creation failed");
            }
            SQLiteDatabase sQLiteDatabase2 = null;
            this.Bf = true;
            this.Bg = cb.this.yD.currentTimeMillis();
            try {
                sQLiteDatabase2 = sQLiteDatabase = super.getWritableDatabase();
            }
            catch (SQLiteException var2_3) {
                cb.this.mContext.getDatabasePath(cb.this.Bb).delete();
            }
            sQLiteDatabase = sQLiteDatabase2;
            if (sQLiteDatabase2 == null) {
                sQLiteDatabase = super.getWritableDatabase();
            }
            this.Bf = false;
            return sQLiteDatabase;
        }

        @Override
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            ak.ag(sQLiteDatabase.getPath());
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void onOpen(SQLiteDatabase var1_1) {
            if (Build.VERSION.SDK_INT < 15) {
                var2_3 = var1_1.rawQuery("PRAGMA journal_mode=memory", null);
                var2_3.moveToFirst();
            }
            if (!this.a("gtm_hits", var1_1)) {
                var1_1.execSQL(cb.oI());
                return;
            } else {
                ** GOTO lbl11
            }
            finally {
                var2_3.close();
            }
lbl11: // 2 sources:
            this.a(var1_1);
        }

        @Override
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int n, int n2) {
        }
    }

}

