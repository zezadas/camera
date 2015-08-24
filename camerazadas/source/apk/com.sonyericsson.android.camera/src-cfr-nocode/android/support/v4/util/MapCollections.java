/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 */
abstract class MapCollections<K, V> {
    MapCollections<K, V> mEntrySet;
    MapCollections<K, V> mKeySet;
    MapCollections<K, V> mValues;

    MapCollections();

    public static <K, V> boolean containsAllHelper(Map<K, V> var0, Collection<?> var1);

    public static <T> boolean equalsSetHelper(Set<T> var0, Object var1);

    public static <K, V> boolean removeAllHelper(Map<K, V> var0, Collection<?> var1);

    public static <K, V> boolean retainAllHelper(Map<K, V> var0, Collection<?> var1);

    protected abstract void colClear();

    protected abstract Object colGetEntry(int var1, int var2);

    protected abstract Map<K, V> colGetMap();

    protected abstract int colGetSize();

    protected abstract int colIndexOfKey(Object var1);

    protected abstract int colIndexOfValue(Object var1);

    protected abstract void colPut(K var1, V var2);

    protected abstract void colRemoveAt(int var1);

    protected abstract V colSetValue(int var1, V var2);

    public Set<Map.Entry<K, V>> getEntrySet();

    public Set<K> getKeySet();

    public Collection<V> getValues();

    public Object[] toArrayHelper(int var1);

    public <T> T[] toArrayHelper(T[] var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class ArrayIterator<T>
    implements Iterator<T> {
        boolean mCanRemove;
        int mIndex;
        final int mOffset;
        int mSize;
        final /* synthetic */ MapCollections this$0;

        ArrayIterator(MapCollections var1, int var2);

        @Override
        public boolean hasNext();

        @Override
        public T next();

        @Override
        public void remove();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class EntrySet
    implements Set<Map.Entry<K, V>> {
        final /* synthetic */ MapCollections this$0;

        EntrySet(MapCollections var1);

        @Override
        public boolean add(Map.Entry<K, V> var1);

        @Override
        public boolean addAll(Collection<? extends Map.Entry<K, V>> var1);

        @Override
        public void clear();

        @Override
        public boolean contains(Object var1);

        @Override
        public boolean containsAll(Collection<?> var1);

        @Override
        public boolean equals(Object var1);

        @Override
        public int hashCode();

        @Override
        public boolean isEmpty();

        @Override
        public Iterator<Map.Entry<K, V>> iterator();

        @Override
        public boolean remove(Object var1);

        @Override
        public boolean removeAll(Collection<?> var1);

        @Override
        public boolean retainAll(Collection<?> var1);

        @Override
        public int size();

        @Override
        public Object[] toArray();

        @Override
        public <T> T[] toArray(T[] var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class KeySet
    implements Set<K> {
        final /* synthetic */ MapCollections this$0;

        KeySet(MapCollections var1);

        @Override
        public boolean add(K var1);

        @Override
        public boolean addAll(Collection<? extends K> var1);

        @Override
        public void clear();

        @Override
        public boolean contains(Object var1);

        @Override
        public boolean containsAll(Collection<?> var1);

        @Override
        public boolean equals(Object var1);

        @Override
        public int hashCode();

        @Override
        public boolean isEmpty();

        @Override
        public Iterator<K> iterator();

        @Override
        public boolean remove(Object var1);

        @Override
        public boolean removeAll(Collection<?> var1);

        @Override
        public boolean retainAll(Collection<?> var1);

        @Override
        public int size();

        @Override
        public Object[] toArray();

        @Override
        public <T> T[] toArray(T[] var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class MapIterator
    implements Iterator<Map.Entry<K, V>>,
    Map.Entry<K, V> {
        int mEnd;
        boolean mEntryValid;
        int mIndex;
        final /* synthetic */ MapCollections this$0;

        MapIterator(MapCollections var1);

        @Override
        public final boolean equals(Object var1);

        @Override
        public K getKey();

        @Override
        public V getValue();

        @Override
        public boolean hasNext();

        @Override
        public final int hashCode();

        @Override
        public Map.Entry<K, V> next();

        @Override
        public void remove();

        @Override
        public V setValue(V var1);

        public final String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    final class ValuesCollection
    implements Collection<V> {
        final /* synthetic */ MapCollections this$0;

        ValuesCollection(MapCollections var1);

        @Override
        public boolean add(V var1);

        @Override
        public boolean addAll(Collection<? extends V> var1);

        @Override
        public void clear();

        @Override
        public boolean contains(Object var1);

        @Override
        public boolean containsAll(Collection<?> var1);

        @Override
        public boolean isEmpty();

        @Override
        public Iterator<V> iterator();

        @Override
        public boolean remove(Object var1);

        @Override
        public boolean removeAll(Collection<?> var1);

        @Override
        public boolean retainAll(Collection<?> var1);

        @Override
        public int size();

        @Override
        public Object[] toArray();

        @Override
        public <T> T[] toArray(T[] var1);
    }

}

