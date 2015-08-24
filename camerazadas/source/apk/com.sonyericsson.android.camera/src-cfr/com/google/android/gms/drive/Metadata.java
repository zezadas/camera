/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.kd;
import com.google.android.gms.internal.kf;
import com.google.android.gms.internal.kh;
import java.util.Date;

public abstract class Metadata
implements Freezable<Metadata> {
    public static final int CONTENT_AVAILABLE_LOCALLY = 1;
    public static final int CONTENT_NOT_AVAILABLE_LOCALLY = 0;

    protected abstract <T> T a(MetadataField<T> var1);

    public String getAlternateLink() {
        return this.a(kd.PN);
    }

    public int getContentAvailability() {
        Integer n = this.a(kh.Qz);
        if (n == null) {
            return 0;
        }
        return n;
    }

    public Date getCreatedDate() {
        return (Date)this.a(kf.Qt);
    }

    public String getDescription() {
        return this.a(kd.PP);
    }

    public DriveId getDriveId() {
        return this.a(kd.PM);
    }

    public String getEmbedLink() {
        return this.a(kd.PQ);
    }

    public String getFileExtension() {
        return this.a(kd.PR);
    }

    public long getFileSize() {
        return this.a(kd.PS);
    }

    public Date getLastViewedByMeDate() {
        return (Date)this.a(kf.Qu);
    }

    public String getMimeType() {
        return (String)this.a(kd.Qd);
    }

    public Date getModifiedByMeDate() {
        return (Date)this.a(kf.Qw);
    }

    public Date getModifiedDate() {
        return (Date)this.a(kf.Qv);
    }

    public String getOriginalFilename() {
        return this.a(kd.Qe);
    }

    public long getQuotaBytesUsed() {
        return (Long)this.a(kd.Qj);
    }

    public Date getSharedWithMeDate() {
        return (Date)this.a(kf.Qx);
    }

    public String getTitle() {
        return (String)this.a(kd.Qm);
    }

    public String getWebContentLink() {
        return this.a(kd.Qo);
    }

    public String getWebViewLink() {
        return this.a(kd.Qp);
    }

    public boolean isEditable() {
        Boolean bl = this.a(kd.PX);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isFolder() {
        return "application/vnd.google-apps.folder".equals(this.getMimeType());
    }

    public boolean isInAppFolder() {
        Boolean bl = this.a(kd.PV);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isPinnable() {
        Boolean bl = this.a(kh.QA);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isPinned() {
        Boolean bl = (Boolean)this.a(kd.PY);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isRestricted() {
        Boolean bl = this.a(kd.PZ);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isShared() {
        Boolean bl = this.a(kd.Qa);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isStarred() {
        Boolean bl = (Boolean)this.a(kd.Qk);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isTrashed() {
        Boolean bl = (Boolean)this.a(kd.Qn);
        if (bl == null) {
            return false;
        }
        return bl;
    }

    public boolean isViewed() {
        Boolean bl = this.a(kd.Qc);
        if (bl == null) {
            return false;
        }
        return bl;
    }
}

