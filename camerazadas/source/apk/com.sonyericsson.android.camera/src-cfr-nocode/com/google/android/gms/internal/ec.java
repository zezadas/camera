/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.internal.ea;
import com.google.android.gms.internal.ez;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
@ez
public class ec {
    private static final Object mw;
    private static final String sG;
    private static ec sI;
    private final a sH;

    static;

    private ec(Context var1);

    static /* synthetic */ String cs();

    public static ec j(Context var0);

    public ea a(Cursor var1);

    public void a(ea var1);

    public void b(ea var1);

    public void cr();

    public List<ea> d(long var1);

    public int getRecordCount();

    public SQLiteDatabase getWritableDatabase();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class a
    extends SQLiteOpenHelper {
        final /* synthetic */ ec sJ;

        public a(ec var1, Context var2, String var3);

        @Override
        public void onCreate(SQLiteDatabase var1);

        @Override
        public void onUpgrade(SQLiteDatabase var1, int var2, int var3);
    }

}

