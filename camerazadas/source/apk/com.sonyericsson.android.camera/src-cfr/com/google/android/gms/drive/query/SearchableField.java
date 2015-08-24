/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive.query;

import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.kf;
import java.util.Date;

public class SearchableField {
    public static final SearchableMetadataField<Boolean> IS_PINNED;
    public static final SearchableOrderedMetadataField<Date> LAST_VIEWED_BY_ME;
    public static final SearchableMetadataField<String> MIME_TYPE;
    public static final SearchableOrderedMetadataField<Date> MODIFIED_DATE;
    public static final SearchableCollectionMetadataField<DriveId> PARENTS;
    public static final SearchableOrderedMetadataField<Date> QG;
    public static final SearchableMetadataField<AppVisibleCustomProperties> QH;
    public static final SearchableMetadataField<Boolean> STARRED;
    public static final SearchableMetadataField<String> TITLE;
    public static final SearchableMetadataField<Boolean> TRASHED;

    static {
        TITLE = kd.Qm;
        MIME_TYPE = kd.Qd;
        TRASHED = kd.Qn;
        PARENTS = kd.Qi;
        QG = kf.Qx;
        STARRED = kd.Qk;
        MODIFIED_DATE = kf.Qv;
        LAST_VIEWED_BY_ME = kf.Qu;
        IS_PINNED = kd.PY;
        QH = kd.PO;
    }
}

