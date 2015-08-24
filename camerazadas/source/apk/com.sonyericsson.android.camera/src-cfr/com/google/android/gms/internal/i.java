/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.n;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.q;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.ArrayList;

public abstract class i
extends h {
    private static Method kA;
    private static Method kB;
    private static Method kC;
    private static Method kD;
    private static Method kE;
    private static Method kF;
    private static Method kG;
    private static Method kH;
    private static Method kI;
    private static String kJ;
    private static String kK;
    private static String kL;
    private static o kM;
    static boolean kN;
    private static long startTime;

    static {
        startTime = 0;
        kN = false;
    }

    protected i(Context context, m m, n n) {
        super(context, m, n);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static String a(Context object, m m) throws a {
        if (kK != null) {
            return kK;
        }
        if (kD == null) {
            throw new a();
        }
        try {
            object = (ByteBuffer)kD.invoke(null, object);
            kK = m.a(object.array(), true);
            if (object != null) return kK;
            throw new a();
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    static ArrayList<Long> a(MotionEvent object, DisplayMetrics displayMetrics) throws a {
        if (kE == null || object == null) {
            throw new a();
        }
        try {
            object = (ArrayList)kE.invoke(null, object, displayMetrics);
            return object;
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    protected static void a(String string, Context context, m m) {
        synchronized (i.class) {
            boolean bl = kN;
            if (!bl) {
                try {
                    void var1_3;
                    void var2_4;
                    kM = new o((m)var2_4, null);
                    kJ = string;
                    i.g((Context)var1_3);
                    startTime = i.w();
                    kN = true;
                }
                catch (UnsupportedOperationException var0_1) {
                }
                catch (a var0_2) {}
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    static String b(Context object, m m) throws a {
        if (kL != null) {
            return kL;
        }
        if (kG == null) {
            throw new a();
        }
        try {
            object = (ByteBuffer)kG.invoke(null, object);
            kL = m.a(object.array(), true);
            if (object != null) return kL;
            throw new a();
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    private static String b(byte[] object, String string) throws a {
        try {
            object = new String(kM.c((byte[])object, string), "UTF-8");
            return object;
        }
        catch (o.a var0_1) {
            throw new a(var0_1);
        }
        catch (UnsupportedEncodingException var0_2) {
            throw new a(var0_2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static String d(Context object) throws a {
        if (kF == null) {
            throw new a();
        }
        object = (String)kF.invoke(null, object);
        if (object != null) return object;
        try {
            throw new a();
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static ArrayList<Long> e(Context object) throws a {
        if (kH == null) {
            throw new a();
        }
        object = (ArrayList)kH.invoke(null, object);
        if (object == null) throw new a();
        try {
            if (object.size() == 2) return object;
            throw new a();
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    static int[] f(Context context) throws a {
        if (kI == null) {
            throw new a();
        }
        try {
            context = (Context)((int[])kI.invoke(null, context));
            return context;
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void g(Context object) throws a {
        File file;
        Object object2 = kM.b(q.getKey());
        Object object3 = kM.c((byte[])object2, q.B());
        File file2 = file = object.getCacheDir();
        if (file == null) {
            file2 = file = object.getDir("dex", 0);
            if (file == null) {
                throw new a();
            }
        }
        file = File.createTempFile("ads", ".jar", file2);
        Object object4 = new FileOutputStream(file);
        object4.write((byte[])object3, 0, object3.length);
        object4.close();
        try {
            Object object5 = new DexClassLoader(file.getAbsolutePath(), file2.getAbsolutePath(), null, object.getClassLoader());
            object = object5.loadClass(i.b((byte[])object2, q.E()));
            object3 = object5.loadClass(i.b((byte[])object2, q.Q()));
            object4 = object5.loadClass(i.b((byte[])object2, q.K()));
            Class class_ = object5.loadClass(i.b((byte[])object2, q.I()));
            Class class_2 = object5.loadClass(i.b((byte[])object2, q.S()));
            Class class_3 = object5.loadClass(i.b((byte[])object2, q.G()));
            Class class_4 = object5.loadClass(i.b((byte[])object2, q.O()));
            Class class_5 = object5.loadClass(i.b((byte[])object2, q.M()));
            object5 = object5.loadClass(i.b((byte[])object2, q.C()));
            kA = object.getMethod(i.b((byte[])object2, q.F()), new Class[0]);
            kB = object3.getMethod(i.b((byte[])object2, q.R()), new Class[0]);
            kC = object4.getMethod(i.b((byte[])object2, q.L()), new Class[0]);
            kD = class_.getMethod(i.b((byte[])object2, q.J()), Context.class);
            kE = class_2.getMethod(i.b((byte[])object2, q.T()), MotionEvent.class, DisplayMetrics.class);
            kF = class_3.getMethod(i.b((byte[])object2, q.H()), Context.class);
            kG = class_4.getMethod(i.b((byte[])object2, q.P()), Context.class);
            kH = class_5.getMethod(i.b((byte[])object2, q.N()), Context.class);
            kI = object5.getMethod(i.b((byte[])object2, q.D()), Context.class);
        }
        catch (Throwable var0_2) {
            object2 = file.getName();
            file.delete();
            new File(file2, object2.replace((CharSequence)".jar", (CharSequence)".dex")).delete();
            throw var0_2;
        }
        try {
            object = file.getName();
            file.delete();
            new File(file2, object.replace((CharSequence)".jar", (CharSequence)".dex")).delete();
            return;
        }
        catch (FileNotFoundException var0_1) {
            throw new a(var0_1);
        }
        catch (IOException var0_3) {
            throw new a(var0_3);
        }
        catch (ClassNotFoundException var0_4) {
            throw new a(var0_4);
        }
        catch (o.a var0_5) {
            throw new a(var0_5);
        }
        catch (NoSuchMethodException var0_6) {
            throw new a(var0_6);
        }
        catch (NullPointerException var0_7) {
            throw new a(var0_7);
        }
    }

    static String v() throws a {
        if (kJ == null) {
            throw new a();
        }
        return kJ;
    }

    static Long w() throws a {
        if (kA == null) {
            throw new a();
        }
        try {
            Long l = (Long)kA.invoke(null, new Object[0]);
            return l;
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    static String x() throws a {
        if (kC == null) {
            throw new a();
        }
        try {
            String string = (String)kC.invoke(null, new Object[0]);
            return string;
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    static Long y() throws a {
        if (kB == null) {
            throw new a();
        }
        try {
            Long l = (Long)kB.invoke(null, new Object[0]);
            return l;
        }
        catch (IllegalAccessException var0_1) {
            throw new a(var0_1);
        }
        catch (InvocationTargetException var0_2) {
            throw new a(var0_2);
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    protected void b(Context context) {
        block20 : {
            try {
                this.a(1, i.x());
                break block20;
            }
            catch (IOException var1_3) {
                return;
            }
            catch (a a) {}
        }
        try {
            this.a(2, i.v());
        }
        catch (a var4_12) {}
        try {
            long l = i.w();
            this.a(25, l);
            if (startTime != 0) {
                this.a(17, l - startTime);
                this.a(23, startTime);
            }
        }
        catch (a var4_11) {}
        try {
            ArrayList<Long> arrayList = i.e(context);
            this.a(31, arrayList.get(0));
            this.a(32, arrayList.get(1));
        }
        catch (a var4_10) {}
        try {
            this.a(33, i.y());
        }
        catch (a var4_9) {}
        try {
            this.a(27, i.a(context, this.ky));
        }
        catch (a var4_8) {}
        try {
            this.a(29, i.b(context, this.ky));
        }
        catch (a var4_7) {}
        try {
            int[] arrn = i.f(context);
            this.a(5, arrn[0]);
            this.a(6, arrn[1]);
            return;
        }
        catch (a var1_4) {
            return;
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    @Override
    protected void c(Context arrayList) {
        block10 : {
            try {
                this.a(2, i.v());
                break block10;
            }
            catch (IOException var1_2) {
                return;
            }
            catch (a a) {}
        }
        try {
            this.a(1, i.x());
        }
        catch (a var1_5) {}
        try {
            this.a(25, i.w());
        }
        catch (a var1_4) {}
        try {
            arrayList = i.a(this.kw, this.kx);
            this.a(14, arrayList.get(0));
            this.a(15, arrayList.get(1));
            if (arrayList.size() < 3) return;
            this.a(16, arrayList.get(2));
            return;
        }
        catch (a var1_3) {
            return;
        }
    }

    static class a
    extends Exception {
        public a() {
        }

        public a(Throwable throwable) {
            super(throwable);
        }
    }

}

