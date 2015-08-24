/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.jw;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.android.gms.tagmanager.ak;
import com.google.android.gms.tagmanager.bh;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class v
implements DataLayer.c {
    private static final String aoQ = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", "expires");
    private final Executor aoR;
    private a aoS;
    private int aoT;
    private final Context mContext;
    private ju yD;

    public v(Context context) {
        this(context, jw.hA(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    v(Context context, ju ju, String string, int n, Executor executor) {
        this.mContext = context;
        this.yD = ju;
        this.aoT = n;
        this.aoR = executor;
        this.aoS = new a(this.mContext, string);
    }

    private SQLiteDatabase al(String string) {
        try {
            SQLiteDatabase sQLiteDatabase = this.aoS.getWritableDatabase();
            return sQLiteDatabase;
        }
        catch (SQLiteException var2_3) {
            bh.W(string);
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void b(List<b> list, long l) {
        synchronized (this) {
            try {
                void var2_3;
                long l2 = this.yD.currentTimeMillis();
                this.x(l2);
                this.fg(list.size());
                this.c(list, l2 + var2_3);
                return;
            }
            finally {
                this.ol();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c(List<b> iterator, long l) {
        SQLiteDatabase sQLiteDatabase = this.al("Error opening database for writeEntryToDatabase.");
        if (sQLiteDatabase != null) {
            for (b b : iterator) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("expires", l);
                contentValues.put("key", b.JO);
                contentValues.put("value", b.aoZ);
                sQLiteDatabase.insert("datalayer", null, contentValues);
            }
        }
    }

    private void cy(String string) {
        SQLiteDatabase sQLiteDatabase = this.al("Error opening database for clearKeysWithPrefix.");
        if (sQLiteDatabase == null) {
            return;
        }
        try {
            int n = sQLiteDatabase.delete("datalayer", "key = ? OR key LIKE ?", new String[]{string, string + ".%"});
            bh.V("Cleared " + n + " items");
            return;
        }
        catch (SQLiteException var3_4) {
            bh.W("Error deleting entries with key prefix: " + string + " (" + var3_4 + ").");
            return;
        }
        finally {
            this.ol();
        }
    }

    private void fg(int n) {
        n = this.ok() - this.aoT + n;
        if (n > 0) {
            List<String> list = this.fh(n);
            bh.U("DataLayer store full, deleting " + list.size() + " entries to make room.");
            this.i(list.toArray(new String[0]));
        }
    }

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private List<String> fh(int var1_1) {
        block16 : {
            var6_2 = new ArrayList<String>();
            if (var1_1 <= 0) {
                bh.W("Invalid maxEntries specified. Skipping.");
                return var6_2;
            }
            var3_3 = this.al("Error opening database for peekEntryIds.");
            if (var3_3 == null) {
                return var6_2;
            }
            var4_4 = String.format("%s ASC", new Object[]{"ID"});
            var5_8 = Integer.toString(var1_1);
            var3_3 = var4_4 = var3_3.query("datalayer", new String[]{"ID"}, null, null, null, null, (String)var4_4, var5_8);
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
            bh.W("Error in peekEntries fetching entryIds: " + var5_10.getMessage());
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

    private List<DataLayer.a> h(List<b> object) {
        ArrayList<DataLayer.a> arrayList = new ArrayList<DataLayer.a>();
        for (b b : object) {
            arrayList.add(new DataLayer.a(b.JO, this.j(b.aoZ)));
        }
        return arrayList;
    }

    private List<b> i(List<DataLayer.a> object) {
        ArrayList<b> arrayList = new ArrayList<b>();
        for (DataLayer.a a : object) {
            arrayList.add(new b(a.JO, this.m(a.wq)));
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void i(String[] arrstring) {
        SQLiteDatabase sQLiteDatabase;
        if (arrstring == null || arrstring.length == 0 || (sQLiteDatabase = this.al("Error opening database for deleteEntries.")) == null) {
            return;
        }
        String string = String.format("%s in (%s)", "ID", TextUtils.join((CharSequence)",", Collections.nCopies(arrstring.length, "?")));
        try {
            sQLiteDatabase.delete("datalayer", string, arrstring);
            return;
        }
        catch (SQLiteException var2_3) {
            bh.W("Error deleting entries " + Arrays.toString(arrstring));
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private Object j(byte[] var1_1) {
        var3_8 = new ByteArrayInputStream((byte[])var1_1);
        var1_1 = new ObjectInputStream(var3_8);
        var2_9 = var1_1.readObject();
        if (var1_1 == null) ** GOTO lbl9
        try {
            var1_1.close();
lbl9: // 2 sources:
            var3_8.close();
            return var2_9;
        }
        catch (IOException var1_7) {
            return var2_9;
        }
        catch (IOException var1_2) {
            var1_1 = null;
            ** GOTO lbl39
            catch (ClassNotFoundException var1_4) {
                var1_1 = null;
                ** GOTO lbl31
                catch (Throwable var2_10) {
                    var1_1 = null;
                    ** GOTO lbl23
                    catch (Throwable var2_12) {}
lbl23: // 2 sources:
                    if (var1_1 == null) ** GOTO lbl26
                    try {
                        var1_1.close();
lbl26: // 2 sources:
                        var3_8.close();
                    }
                    catch (IOException var1_6) {
                        throw var2_11;
                    }
                    throw var2_11;
                }
                catch (ClassNotFoundException var2_13) {}
lbl31: // 2 sources:
                if (var1_1 == null) ** GOTO lbl34
                try {
                    var1_1.close();
lbl34: // 2 sources:
                    var3_8.close();
                    return null;
                }
                catch (IOException var1_5) {
                    return null;
                }
            }
            catch (IOException var2_14) {}
lbl39: // 2 sources:
            if (var1_1 == null) ** GOTO lbl42
            try {
                var1_1.close();
lbl42: // 2 sources:
                var3_8.close();
                return null;
            }
            catch (IOException var1_3) {
                return null;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private byte[] m(Object var1_1) {
        var3_8 = new ByteArrayOutputStream();
        var2_9 = new ObjectOutputStream(var3_8);
        var2_9.writeObject(var1_1);
        var1_1 = var3_8.toByteArray();
        if (var2_9 == null) ** GOTO lbl10
        try {
            var2_9.close();
lbl10: // 2 sources:
            var3_8.close();
            return var1_1;
        }
        catch (IOException var2_11) {
            return var1_1;
        }
        catch (IOException var1_2) {
            var2_9 = null;
            ** GOTO lbl29
            catch (Throwable var1_4) {
                var2_9 = null;
                ** GOTO lbl21
                catch (Throwable var1_6) {}
lbl21: // 2 sources:
                if (var2_9 == null) ** GOTO lbl24
                try {
                    var2_9.close();
lbl24: // 2 sources:
                    var3_8.close();
                }
                catch (IOException var2_10) {
                    throw var1_5;
                }
                throw var1_5;
            }
            catch (IOException var1_7) {}
lbl29: // 2 sources:
            if (var2_9 == null) ** GOTO lbl32
            try {
                var2_9.close();
lbl32: // 2 sources:
                var3_8.close();
                return null;
            }
            catch (IOException var1_3) {
                return null;
            }
        }
    }

    private List<DataLayer.a> oi() {
        try {
            this.x(this.yD.currentTimeMillis());
            List<DataLayer.a> list = this.h(this.oj());
            return list;
        }
        finally {
            this.ol();
        }
    }

    private List<b> oj() {
        ArrayList<b> arrayList;
        Closeable closeable = this.al("Error opening database for loadSerialized.");
        arrayList = new ArrayList<b>();
        if (closeable == null) {
            return arrayList;
        }
        closeable = closeable.query("datalayer", new String[]{"key", "value"}, null, null, null, null, "ID", null);
        try {
            while (closeable.moveToNext()) {
                arrayList.add(new b(closeable.getString(0), closeable.getBlob(1)));
            }
        }
        finally {
            closeable.close();
        }
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private int ok() {
        Cursor cursor;
        int n;
        int n2;
        block7 : {
            long l;
            Object var6_1 = null;
            Cursor cursor2 = null;
            n2 = 0;
            n = 0;
            SQLiteDatabase sQLiteDatabase = this.al("Error opening database for getNumStoredEntries.");
            if (sQLiteDatabase == null) return n;
            try {
                Cursor cursor3 = cursor = sQLiteDatabase.rawQuery("SELECT COUNT(*) from datalayer", null);
                Cursor cursor4 = cursor;
                if (!cursor.moveToFirst()) break block7;
                Cursor cursor5 = cursor;
                Cursor cursor6 = cursor;
                l = cursor.getLong(0);
            }
            catch (SQLiteException var6_4) {
                Cursor cursor7 = cursor2;
                try {
                    bh.W("Error getting numStoredEntries");
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

    private void ol() {
        try {
            this.aoS.close();
            return;
        }
        catch (SQLiteException var1_1) {
            return;
        }
    }

    static /* synthetic */ String om() {
        return aoQ;
    }

    private void x(long l) {
        SQLiteDatabase sQLiteDatabase = this.al("Error opening database for deleteOlderThan.");
        if (sQLiteDatabase == null) {
            return;
        }
        try {
            int n = sQLiteDatabase.delete("datalayer", "expires <= ?", new String[]{Long.toString(l)});
            bh.V("Deleted " + n + " expired items");
            return;
        }
        catch (SQLiteException var4_3) {
            bh.W("Error deleting old entries.");
            return;
        }
    }

    @Override
    public void a(final DataLayer.c.a a) {
        this.aoR.execute(new Runnable(){

            @Override
            public void run() {
                a.g(v.this.oi());
            }
        });
    }

    @Override
    public void a(final List<DataLayer.a> list, final long l) {
        list = this.i(list);
        this.aoR.execute(new Runnable(){

            @Override
            public void run() {
                v.this.b(list, l);
            }
        });
    }

    @Override
    public void cx(final String string) {
        this.aoR.execute(new Runnable(){

            @Override
            public void run() {
                v.this.cy(string);
            }
        });
    }

    class a
    extends SQLiteOpenHelper {
        a(Context context, String string) {
            super(context, string, null, 1);
        }

        private void a(SQLiteDatabase closeable) {
            String[] arrstring;
            int n;
            closeable = closeable.rawQuery("SELECT * FROM datalayer WHERE 0", null);
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
            if (!(hashSet.remove("key") && hashSet.remove("value") && hashSet.remove("ID") && hashSet.remove("expires"))) {
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
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                sQLiteDatabase2 = sQLiteDatabase = super.getWritableDatabase();
            }
            catch (SQLiteException var2_3) {
                v.this.mContext.getDatabasePath("google_tagmanager.db").delete();
            }
            sQLiteDatabase = sQLiteDatabase2;
            if (sQLiteDatabase2 != null) return sQLiteDatabase;
            return super.getWritableDatabase();
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
            if (!this.a("datalayer", var1_1)) {
                var1_1.execSQL(v.om());
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

    private static class b {
        final String JO;
        final byte[] aoZ;

        b(String string, byte[] arrby) {
            this.JO = string;
            this.aoZ = arrby;
        }

        public String toString() {
            return "KeyAndSerialized: key = " + this.JO + " serialized hash = " + Arrays.hashCode(this.aoZ);
        }
    }

}

