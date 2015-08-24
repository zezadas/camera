/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.query.Filter;

/*
 * Exception performing whole class analysis ignored.
 */
public class Filters {
    public Filters();

    public static /* varargs */ Filter and(Filter var0, Filter ... var1);

    public static Filter and(Iterable<Filter> var0);

    public static Filter contains(SearchableMetadataField<String> var0, String var1);

    public static <T> Filter eq(SearchableMetadataField<T> var0, T var1);

    public static <T extends Comparable<T>> Filter greaterThan(SearchableOrderedMetadataField<T> var0, T var1);

    public static <T extends Comparable<T>> Filter greaterThanEquals(SearchableOrderedMetadataField<T> var0, T var1);

    public static <T> Filter in(SearchableCollectionMetadataField<T> var0, T var1);

    public static <T extends Comparable<T>> Filter lessThan(SearchableOrderedMetadataField<T> var0, T var1);

    public static <T extends Comparable<T>> Filter lessThanEquals(SearchableOrderedMetadataField<T> var0, T var1);

    public static Filter not(Filter var0);

    public static Filter openedByMe();

    public static /* varargs */ Filter or(Filter var0, Filter ... var1);

    public static Filter or(Iterable<Filter> var0);

    public static Filter sharedWithMe();
}

