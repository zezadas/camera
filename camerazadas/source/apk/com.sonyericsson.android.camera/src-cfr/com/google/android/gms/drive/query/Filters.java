/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.SearchableField;
import com.google.android.gms.drive.query.internal.ComparisonFilter;
import com.google.android.gms.drive.query.internal.FieldOnlyFilter;
import com.google.android.gms.drive.query.internal.InFilter;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.NotFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.Date;

public class Filters {
    public static /* varargs */ Filter and(Filter filter, Filter ... arrfilter) {
        return new LogicalFilter(Operator.Re, filter, arrfilter);
    }

    public static Filter and(Iterable<Filter> iterable) {
        return new LogicalFilter(Operator.Re, iterable);
    }

    public static Filter contains(SearchableMetadataField<String> searchableMetadataField, String string) {
        return new ComparisonFilter<String>(Operator.Rh, searchableMetadataField, string);
    }

    public static <T> Filter eq(SearchableMetadataField<T> searchableMetadataField, T t) {
        return new ComparisonFilter<T>(Operator.QZ, searchableMetadataField, t);
    }

    public static <T extends Comparable<T>> Filter greaterThan(SearchableOrderedMetadataField<T> searchableOrderedMetadataField, T t) {
        return new ComparisonFilter<T>(Operator.Rc, searchableOrderedMetadataField, t);
    }

    public static <T extends Comparable<T>> Filter greaterThanEquals(SearchableOrderedMetadataField<T> searchableOrderedMetadataField, T t) {
        return new ComparisonFilter<T>(Operator.Rd, searchableOrderedMetadataField, t);
    }

    public static <T> Filter in(SearchableCollectionMetadataField<T> searchableCollectionMetadataField, T t) {
        return new InFilter<T>(searchableCollectionMetadataField, t);
    }

    public static <T extends Comparable<T>> Filter lessThan(SearchableOrderedMetadataField<T> searchableOrderedMetadataField, T t) {
        return new ComparisonFilter<T>(Operator.Ra, searchableOrderedMetadataField, t);
    }

    public static <T extends Comparable<T>> Filter lessThanEquals(SearchableOrderedMetadataField<T> searchableOrderedMetadataField, T t) {
        return new ComparisonFilter<T>(Operator.Rb, searchableOrderedMetadataField, t);
    }

    public static Filter not(Filter filter) {
        return new NotFilter(filter);
    }

    public static Filter openedByMe() {
        return new FieldOnlyFilter(SearchableField.LAST_VIEWED_BY_ME);
    }

    public static /* varargs */ Filter or(Filter filter, Filter ... arrfilter) {
        return new LogicalFilter(Operator.Rf, filter, arrfilter);
    }

    public static Filter or(Iterable<Filter> iterable) {
        return new LogicalFilter(Operator.Rf, iterable);
    }

    public static Filter sharedWithMe() {
        return new FieldOnlyFilter(SearchableField.QG);
    }
}

