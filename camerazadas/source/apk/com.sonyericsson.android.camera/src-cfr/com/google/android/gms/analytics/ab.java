/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.analytics;

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
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.aa;
import com.google.android.gms.analytics.ag;
import com.google.android.gms.analytics.d;
import com.google.android.gms.analytics.e;
import com.google.android.gms.analytics.m;
import com.google.android.gms.analytics.o;
import com.google.android.gms.analytics.w;
import com.google.android.gms.analytics.x;
import com.google.android.gms.analytics.z;
import com.google.android.gms.internal.hb;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;

class ab
implements d {
    private static final String AY = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private final a AZ;
    private volatile m Ba;
    private final String Bb;
    private aa Bc;
    private long Bd;
    private final int Be;
    private final Context mContext;
    private ju yD;
    private final e yl;

    ab(e e, Context context) {
        this(e, context, "google_analytics_v4.db", 2000);
    }

    ab(e e, Context context, String string, int n) {
        this.mContext = context.getApplicationContext();
        this.Bb = string;
        this.yl = e;
        this.yD = jw.hA();
        this.AZ = new a(this.mContext, this.Bb);
        this.Ba = new ag(new DefaultHttpClient(), this.mContext);
        this.Bd = 0;
        this.Be = n;
    }

    static String A(Map<String, String> object) {
        ArrayList<String> arrayList = new ArrayList<String>(object.size());
        for (Map.Entry entry : object.entrySet()) {
            arrayList.add(x.encode((String)entry.getKey()) + "=" + x.encode((String)entry.getValue()));
        }
        return TextUtils.join((CharSequence)"&", arrayList);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void a(Map<String, String> object, long l, String string) {
        SQLiteDatabase sQLiteDatabase = this.al("Error opening database for putHit");
        if (sQLiteDatabase == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", ab.A(object));
        contentValues.put("hit_time", l);
        if (object.containsKey("AppUID")) {
            try {
                l = Long.parseLong((String)object.get("AppUID"));
            }
            catch (NumberFormatException var1_2) {
                l = 0;
            }
        } else {
            l = 0;
        }
        contentValues.put("hit_app_id", l);
        object = string;
        if (string == null) {
            object = "http://www.google-analytics.com/collect";
        }
        if (object.length() == 0) {
            z.W("Empty path: not sending hit");
            return;
        }
        contentValues.put("hit_url", (String)object);
        try {
            sQLiteDatabase.insert("hits2", null, contentValues);
            this.yl.z(false);
            return;
        }
        catch (SQLiteException var1_3) {
            z.W("Error storing hit");
            return;
        }
    }

    private void a(Map<String, String> map, Collection<hb> object) {
        String string = "&_v".substring(1);
        if (object != null) {
            for (hb hb : object) {
                if (!"appendVersion".equals(hb.getId())) continue;
                map.put(string, hb.getValue());
            }
        }
    }

    private SQLiteDatabase al(String string) {
        try {
            SQLiteDatabase sQLiteDatabase = this.AZ.getWritableDatabase();
            return sQLiteDatabase;
        }
        catch (SQLiteException var2_3) {
            z.W(string);
            return null;
        }
    }

    private void eM() {
        int n = this.eO() - this.Be + 1;
        if (n > 0) {
            List<String> list = this.F(n);
            z.V("Store full, deleting " + list.size() + " hits to make room.");
            this.b(list.toArray(new String[0]));
        }
    }

    static /* synthetic */ String eP() {
        return AY;
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
                z.W("Invalid maxHits specified. Skipping");
                return var6_2;
            }
            var3_3 = this.al("Error opening database for peekHitIds.");
            if (var3_3 == null) {
                return var6_2;
            }
            var4_4 = String.format("%s ASC", new Object[]{"hit_id"});
            var5_8 = Integer.toString(var1_1);
            var3_3 = var4_4 = var3_3.query("hits2", new String[]{"hit_id"}, null, null, null, null, (String)var4_4, var5_8);
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
            z.W("Error in peekHits fetching hitIds: " + var5_10.getMessage());
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
    public List<w> G(int var1_1) {
        block40 : {
            block39 : {
                var5_2 = new ArrayList<w>();
                var8_4 = this.al("Error opening database for peekHits");
                if (var8_4 == null) {
                    return var5_2;
                }
                var4_13 = null;
                var6_6 = String.format("%s ASC", new Object[]{"hit_id"});
                var7_18 = Integer.toString(var1_1);
                var4_13 = var6_6 = var8_4.query("hits2", new String[]{"hit_id", "hit_time"}, null, null, null, null, (String)var6_6, (String)var7_18);
                var7_18 = new ArrayList<E>();
                if (var4_13.moveToFirst()) {
                    do {
                        var7_18.add(new w(null, var4_13.getLong(0), var4_13.getLong(1)));
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
            var6_6 = var8_4.query("hits2", new String[]{"hit_id", "hit_string", "hit_url"}, null, null, null, null, (String)var6_6, var9_21);
            if (!var6_6.moveToFirst()) ** GOTO lbl-1000
            var1_1 = 0;
lbl34: // 3 sources:
            if (((SQLiteCursor)var6_6).getWindow().getNumRows() > 0) {
                ((w)var7_18.get(var1_1)).aj(var6_6.getString(1));
                ((w)var7_18.get(var1_1)).ak(var6_6.getString(2));
lbl37: // 2 sources:
                ** while (!(var3_20 = var6_6.moveToNext()))
            } else {
                ** GOTO lbl59
            }
lbl-1000: // 2 sources:
            {
                if (var6_6 == null) return var7_18;
                var6_6.close();
                return var7_18;
lbl41: // 1 sources:
                break block40;
            }
            catch (SQLiteException var6_7) {
                var7_19 = null;
                var4_13 = var5_2;
                var5_2 = var7_19;
lbl47: // 4 sources:
                z.W("Error in peekHits fetching hitIds: " + var6_5.getMessage());
                var6_5 = var4_13;
                if (var5_2 == null) return var6_5;
                var5_2.close();
                return var4_13;
            }
            catch (Throwable var6_8) {
                var5_2 = var4_13;
                var4_13 = var6_8;
lbl55: // 3 sources:
                do {
                    if (var5_2 == null) throw var4_13;
                    var5_2.close();
                    throw var4_13;
                    break;
                } while (true);
            }
lbl59: // 2 sources:
            try {
                z.W(String.format("HitString for hitId %d too large.  Hit will be deleted.", new Object[]{((w)var7_18.get(var1_1)).eG()}));
                ** GOTO lbl37
            }
            catch (SQLiteException var5_3) {
                var4_13 = var6_6;
                var6_6 = var5_3;
lbl65: // 2 sources:
                do {
                    var5_2 = var4_13;
                    z.W("Error in peekHits fetching hitString: " + var6_6.getMessage());
                    var5_2 = var4_13;
                    var6_6 = new ArrayList<w>();
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
                                    var8_4 = (w)var7_18.next();
                                    var5_2 = var4_13;
                                    var3_20 = TextUtils.isEmpty((CharSequence)var8_4.eF());
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
                ** GOTO lbl55
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
                    ** GOTO lbl47
                }
                catch (SQLiteException var6_12) {
                    var5_2 = var4_13;
                    var4_13 = var7_18;
                    ** GOTO lbl47
                }
            }
        }
        ++var1_1;
        ** GOTO lbl34
    }

    @Override
    public void a(Map<String, String> map, long l, String string, Collection<hb> collection) {
        this.eN();
        this.eM();
        this.a(map, collection);
        this.a(map, l, string);
    }

    @Deprecated
    void b(Collection<w> object) {
        if (object == null || object.isEmpty()) {
            z.W("Empty/Null collection passed to deleteHits.");
            return;
        }
        String[] arrstring = new String[object.size()];
        object = object.iterator();
        int n = 0;
        while (object.hasNext()) {
            arrstring[n] = String.valueOf(((w)object.next()).eG());
            ++n;
        }
        this.b(arrstring);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void b(String[] arrstring) {
        Object object;
        boolean bl;
        block4 : {
            block3 : {
                bl = true;
                if (arrstring == null || arrstring.length == 0) {
                    z.W("Empty hitIds passed to deleteHits.");
                    return;
                }
                object = this.al("Error opening database for deleteHits.");
                if (object == null) return;
                String string = String.format("HIT_ID in (%s)", TextUtils.join((CharSequence)",", Collections.nCopies(arrstring.length, "?")));
                try {
                    object.delete("hits2", string, arrstring);
                    object = this.yl;
                    if (this.eO() != 0) break block3;
                    break block4;
                }
                catch (SQLiteException var3_4) {
                    z.W("Error deleting hits " + TextUtils.join((CharSequence)",", arrstring));
                    return;
                }
            }
            bl = false;
        }
        object.z(bl);
    }

    @Override
    public m dM() {
        return this.Ba;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void dispatch() {
        boolean bl = true;
        z.V("Dispatch running...");
        if (!this.Ba.dX()) {
            return;
        }
        List<w> list = this.G(40);
        if (list.isEmpty()) {
            z.V("...nothing to dispatch");
            this.yl.z(true);
            return;
        }
        if (this.Bc == null) {
            this.Bc = new aa("_t=dispatch&_v=ma4.0.3", true);
        }
        if (this.eO() > list.size()) {
            bl = false;
        }
        int n = this.Ba.a(list, this.Bc, bl);
        z.V("sent " + n + " of " + list.size() + " hits");
        this.b(list.subList(0, Math.min(n, list.size())));
        if (n == list.size() && this.eO() > 0) {
            GoogleAnalytics.getInstance(this.mContext).dispatchLocalHits();
            return;
        }
        this.Bc = null;
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
        int n = object.delete("hits2", "HIT_TIME < ?", new String[]{Long.toString(this.yD.currentTimeMillis() - 2592000000L)});
        object = this.yl;
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
                Cursor cursor3 = cursor = sQLiteDatabase.rawQuery("SELECT COUNT(*) from hits2", null);
                Cursor cursor4 = cursor;
                if (!cursor.moveToFirst()) break block7;
                Cursor cursor5 = cursor;
                Cursor cursor6 = cursor;
                l = cursor.getLong(0);
            }
            catch (SQLiteException var6_4) {
                Cursor cursor7 = cursor2;
                try {
                    z.W("Error getting numStoredHits");
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

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void l(long l) {
        boolean bl = true;
        Object object = this.al("Error opening database for clearHits");
        if (object == null) return;
        if (l == 0) {
            object.delete("hits2", null, null);
        } else {
            object.delete("hits2", "hit_app_id = ?", new String[]{Long.valueOf(l).toString()});
        }
        object = this.yl;
        if (this.eO() != 0) {
            bl = false;
        }
        object.z(bl);
    }

    class a
    extends SQLiteOpenHelper {
        private boolean Bf;
        private long Bg;

        a(Context context, String string) {
            super(context, string, null, 1);
            this.Bg = 0;
        }

        private void a(SQLiteDatabase sQLiteDatabase) {
            int n;
            String[] arrstring;
            int n2 = 0;
            Cursor cursor = sQLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", null);
            HashSet<String> hashSet = new HashSet<String>();
            try {
                arrstring = cursor.getColumnNames();
                n = 0;
            }
            catch (Throwable var1_2) {
                cursor.close();
                throw var1_2;
            }
            do {
                if (n >= arrstring.length) break;
                hashSet.add(arrstring[n]);
                ++n;
            } while (true);
            cursor.close();
            if (!(hashSet.remove("hit_id") && hashSet.remove("hit_url") && hashSet.remove("hit_string") && hashSet.remove("hit_time"))) {
                throw new SQLiteException("Database column missing");
            }
            n = n2;
            if (!hashSet.remove("hit_app_id")) {
                n = 1;
            }
            if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
            if (n != 0) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
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
                z.W("Error querying for table " + var1_1);
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
            if (this.Bf && this.Bg + 3600000 > ab.this.yD.currentTimeMillis()) {
                throw new SQLiteException("Database creation failed");
            }
            SQLiteDatabase sQLiteDatabase2 = null;
            this.Bf = true;
            this.Bg = ab.this.yD.currentTimeMillis();
            try {
                sQLiteDatabase2 = sQLiteDatabase = super.getWritableDatabase();
            }
            catch (SQLiteException var2_3) {
                ab.this.mContext.getDatabasePath(ab.this.Bb).delete();
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
            o.ag(sQLiteDatabase.getPath());
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
            if (!this.a("hits2", var1_1)) {
                var1_1.execSQL(ab.eP());
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

