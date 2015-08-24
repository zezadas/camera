/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gs;
import java.io.Closeable;
import java.util.List;

@ez
public class ec {
    private static final Object mw;
    private static final String sG;
    private static ec sI;
    private final a sH;

    static {
        sG = String.format("CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time");
        mw = new Object();
    }

    private ec(Context context) {
        this.sH = new a(context, "google_inapp_purchase.db");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static ec j(Context object) {
        Object object2 = mw;
        synchronized (object2) {
            if (sI != null) return sI;
            sI = new ec((Context)object);
            return sI;
        }
    }

    public ea a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new ea(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void a(ea ea) {
        if (ea == null) {
            return;
        }
        Object object = mw;
        synchronized (object) {
            SQLiteDatabase sQLiteDatabase = this.getWritableDatabase();
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.delete("InAppPurchase", String.format("%s = %d", "purchase_id", ea.sA), null);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void b(ea ea) {
        if (ea == null) {
            return;
        }
        Object object = mw;
        synchronized (object) {
            SQLiteDatabase sQLiteDatabase = this.getWritableDatabase();
            if (sQLiteDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("product_id", ea.sC);
            contentValues.put("developer_payload", ea.sB);
            contentValues.put("record_time", SystemClock.elapsedRealtime());
            ea.sA = sQLiteDatabase.insert("InAppPurchase", null, contentValues);
            if ((long)this.getRecordCount() > 20000) {
                this.cr();
            }
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void cr() {
        block16 : {
            block15 : {
                var4_1 = ec.mw;
                // MONITORENTER : var4_1
                var1_2 /* !! */  = this.getWritableDatabase();
                if (var1_2 /* !! */  == null) {
                    // MONITOREXIT : var4_1
                    return;
                }
                var2_3 = var1_2 /* !! */ .query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
                if (var2_3 == null) break block15;
                var1_2 /* !! */  = var2_3;
                try {
                    if (!var2_3.moveToFirst()) break block15;
                    var1_2 /* !! */  = var2_3;
                    this.a(this.a(var2_3));
                }
                catch (SQLiteException var3_9) {
                    ** continue;
                }
            }
            if (var2_3 != null) {
                var2_3.close();
                return;
            }
            ** GOTO lbl26
            catch (SQLiteException var3_7) {
                var2_3 = null;
                ** GOTO lbl29
                catch (Throwable var2_6) {
                    var1_2 /* !! */  = null;
                    break block16;
                }
lbl26: // 2 sources:
                do {
                    // MONITOREXIT : var4_1
                    return;
                    break;
                } while (true);
lbl29: // 2 sources:
                do {
                    var1_2 /* !! */  = var2_3;
                    try {
                        gs.W("Error remove oldest record" + var3_8.getMessage());
                        if (var2_3 == null) ** continue;
                        var2_3.close();
                        return;
                    }
                    catch (Throwable var2_5) {
                        break;
                    }
                    break;
                } while (true);
            }
        }
        if (var1_2 /* !! */  == null) throw var2_4;
        var1_2 /* !! */ .close();
        throw var2_4;
    }

    /*
     * Exception decompiling
     */
    public List<ea> d(long var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [8[CATCHBLOCK]], but top level block is 14[UNCONDITIONALDOLOOP]
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:392)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:444)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2800)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:784)
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

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public int getRecordCount() {
        Closeable closeable4;
        block12 : {
            int n;
            block13 : {
                Closeable closeable2 = null;
                Closeable closeable3 = null;
                Object object = mw;
                // MONITORENTER : object
                Closeable closeable4 = this.getWritableDatabase();
                if (closeable4 == null) {
                    // MONITOREXIT : object
                    return 0;
                }
                try {
                    closeable3 = closeable4 = closeable4.rawQuery("select count(*) from InAppPurchase", null);
                    closeable2 = closeable4;
                    if (!closeable4.moveToFirst()) break block12;
                    closeable3 = closeable4;
                    closeable2 = closeable4;
                    n = closeable4.getInt(0);
                    if (closeable4 == null) break block13;
                }
                catch (SQLiteException var4_6) {
                    block14 : {
                        closeable2 = closeable3;
                        try {
                            gs.W("Error getting record count" + var4_6.getMessage());
                            if (closeable3 == null) break block14;
                            closeable3.close();
                            return 0;
                        }
                        catch (Throwable var2_3) {
                            if (closeable2 == null) throw var2_3;
                            closeable2.close();
                            throw var2_3;
                        }
                    }
                    // MONITOREXIT : object
                    return 0;
                }
                closeable4.close();
            }
            // MONITOREXIT : object
            return n;
        }
        if (closeable4 == null) return 0;
        {
            closeable4.close();
            return 0;
        }
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            SQLiteDatabase sQLiteDatabase = this.sH.getWritableDatabase();
            return sQLiteDatabase;
        }
        catch (SQLiteException var1_2) {
            gs.W("Error opening writable conversion tracking database");
            return null;
        }
    }

    public class a
    extends SQLiteOpenHelper {
        public a(Context context, String string) {
            super(context, string, null, 4);
        }

        @Override
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(sG);
        }

        @Override
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int n, int n2) {
            gs.U("Database updated from version " + n + " to version " + n2);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            this.onCreate(sQLiteDatabase);
        }
    }

}

