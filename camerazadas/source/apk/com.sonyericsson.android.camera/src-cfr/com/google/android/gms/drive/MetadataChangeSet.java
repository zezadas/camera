/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.kf;
import java.util.Date;

public final class MetadataChangeSet {
    public static final MetadataChangeSet Nt = new MetadataChangeSet(MetadataBundle.io());
    private final MetadataBundle Nu;

    public MetadataChangeSet(MetadataBundle metadataBundle) {
        this.Nu = MetadataBundle.a(metadataBundle);
    }

    public String getDescription() {
        return this.Nu.a(kd.PP);
    }

    public String getIndexableText() {
        return this.Nu.a(kd.PU);
    }

    public Date getLastViewedByMeDate() {
        return (Date)this.Nu.a(kf.Qu);
    }

    public String getMimeType() {
        return (String)this.Nu.a(kd.Qd);
    }

    public String getTitle() {
        return (String)this.Nu.a(kd.Qm);
    }

    public MetadataBundle hS() {
        return this.Nu;
    }

    public Boolean isPinned() {
        return (Boolean)this.Nu.a(kd.PY);
    }

    public Boolean isStarred() {
        return (Boolean)this.Nu.a(kd.Qk);
    }

    public Boolean isViewed() {
        return this.Nu.a(kd.Qc);
    }

    public static class Builder {
        private final MetadataBundle Nu = MetadataBundle.io();
        private AppVisibleCustomProperties.a Nv;

        public MetadataChangeSet build() {
            if (this.Nv != null) {
                this.Nu.b(kd.PO, this.Nv.im());
            }
            return new MetadataChangeSet(this.Nu);
        }

        public Builder setDescription(String string) {
            this.Nu.b(kd.PP, string);
            return this;
        }

        public Builder setIndexableText(String string) {
            this.Nu.b(kd.PU, string);
            return this;
        }

        public Builder setLastViewedByMeDate(Date date) {
            this.Nu.b(kf.Qu, date);
            return this;
        }

        public Builder setMimeType(String string) {
            this.Nu.b(kd.Qd, string);
            return this;
        }

        public Builder setPinned(boolean bl) {
            this.Nu.b(kd.PY, bl);
            return this;
        }

        public Builder setStarred(boolean bl) {
            this.Nu.b(kd.Qk, bl);
            return this;
        }

        public Builder setTitle(String string) {
            this.Nu.b(kd.Qm, string);
            return this;
        }

        public Builder setViewed(boolean bl) {
            this.Nu.b(kd.Qc, bl);
            return this;
        }
    }

}

