/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import java.util.LinkedHashMap;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    public LruCache(int var1);

    private int safeSizeOf(K var1, V var2);

    protected V create(K var1);

    public final int createCount();

    protected void entryRemoved(boolean var1, K var2, V var3, V var4);

    public final void evictAll();

    public final int evictionCount();

    public final V get(K var1);

    public final int hitCount();

    public final int maxSize();

    public final int missCount();

    public final V put(K var1, V var2);

    public final int putCount();

    public final V remove(K var1);

    public final int size();

    protected int sizeOf(K var1, V var2);

    public final Map<K, V> snapshot();

    public final String toString();

    public void trimToSize(int var1);
}

