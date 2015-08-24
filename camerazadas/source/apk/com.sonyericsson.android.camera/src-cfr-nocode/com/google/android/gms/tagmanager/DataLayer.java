/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.tagmanager;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT;
    static final String[] aoG;
    private static final Pattern aoH;
    private final ConcurrentHashMap<b, Integer> aoI;
    private final Map<String, Object> aoJ;
    private final ReentrantLock aoK;
    private final LinkedList<Map<String, Object>> aoL;
    private final c aoM;
    private final CountDownLatch aoN;

    static;

    DataLayer();

    DataLayer(c var1);

    private void F(Map<String, Object> var1);

    private void G(Map<String, Object> var1);

    private Long H(Map<String, Object> var1);

    private Object I(Map<String, Object> var1);

    private List<a> J(Map<String, Object> var1);

    private void K(Map<String, Object> var1);

    private void L(Map<String, Object> var1);

    static /* synthetic */ CountDownLatch a(DataLayer var0);

    static /* synthetic */ void a(DataLayer var0, Map var1);

    private void a(Map<String, Object> var1, String var2, Collection<a> var3);

    static Long cw(String var0);

    public static /* varargs */ List<Object> listOf(Object ... var0);

    public static /* varargs */ Map<String, Object> mapOf(Object ... var0);

    private void oe();

    private void of();

    void a(b var1);

    void a(Map<String, Object> var1, Map<String, Object> var2);

    void b(List<Object> var1, List<Object> var2);

    Map<String, Object> c(String var1, Object var2);

    void cv(String var1);

    public Object get(String var1);

    public void push(String var1, Object var2);

    public void push(Map<String, Object> var1);

    public void pushEvent(String var1, Map<String, Object> var2);

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class a {
        public final String JO;
        public final Object wq;

        a(String var1, Object var2);

        public boolean equals(Object var1);

        public int hashCode();

        public String toString();
    }

    static interface b {
        public void D(Map<String, Object> var1);
    }

    static interface c {
        public void a(a var1);

        public void a(List<com.google.android.gms.tagmanager.DataLayer$a> var1, long var2);

        public void cx(String var1);

        public static interface a {
            public void g(List<com.google.android.gms.tagmanager.DataLayer$a> var1);
        }

    }

}

