/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Date;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class MetadataChangeSet {
    public static final MetadataChangeSet Nt;
    private final MetadataBundle Nu;

    static;

    public MetadataChangeSet(MetadataBundle var1);

    public String getDescription();

    public String getIndexableText();

    public Date getLastViewedByMeDate();

    public String getMimeType();

    public String getTitle();

    public MetadataBundle hS();

    public Boolean isPinned();

    public Boolean isStarred();

    public Boolean isViewed();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Builder {
        private final MetadataBundle Nu;
        private AppVisibleCustomProperties.a Nv;

        public Builder();

        public MetadataChangeSet build();

        public Builder setDescription(String var1);

        public Builder setIndexableText(String var1);

        public Builder setLastViewedByMeDate(Date var1);

        public Builder setMimeType(String var1);

        public Builder setPinned(boolean var1);

        public Builder setStarred(boolean var1);

        public Builder setTitle(String var1);

        public Builder setViewed(boolean var1);
    }

}

