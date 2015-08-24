/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import android.support.v4.util.MapCollections;
import android.support.v4.util.SimpleArrayMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
public class ArrayMap<K, V>
extends SimpleArrayMap<K, V>
implements Map<K, V> {
    MapCollections<K, V> mCollections;

    public ArrayMap();

    public ArrayMap(int var1);

    public ArrayMap(SimpleArrayMap var1);

    private MapCollections<K, V> getCollection();

    public boolean containsAll(Collection<?> var1);

    @Override
    public Set<Map.Entry<K, V>> entrySet();

    @Override
    public Set<K> keySet();

    @Override
    public void putAll(Map<? extends K, ? extends V> var1);

    public boolean removeAll(Collection<?> var1);

    public boolean retainAll(Collection<?> var1);

    @Override
    public Collection<V> values();

}

