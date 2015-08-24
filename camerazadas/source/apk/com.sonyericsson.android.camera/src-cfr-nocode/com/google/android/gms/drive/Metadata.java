/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.MetadataField;
import java.util.Date;

/*
 * Exception performing whole class analysis ignored.
 */
public abstract class Metadata
implements Freezable<Metadata> {
    public static final int CONTENT_AVAILABLE_LOCALLY = 1;
    public static final int CONTENT_NOT_AVAILABLE_LOCALLY = 0;

    public Metadata();

    protected abstract <T> T a(MetadataField<T> var1);

    public String getAlternateLink();

    public int getContentAvailability();

    public Date getCreatedDate();

    public String getDescription();

    public DriveId getDriveId();

    public String getEmbedLink();

    public String getFileExtension();

    public long getFileSize();

    public Date getLastViewedByMeDate();

    public String getMimeType();

    public Date getModifiedByMeDate();

    public Date getModifiedDate();

    public String getOriginalFilename();

    public long getQuotaBytesUsed();

    public Date getSharedWithMeDate();

    public String getTitle();

    public String getWebContentLink();

    public String getWebViewLink();

    public boolean isEditable();

    public boolean isFolder();

    public boolean isInAppFolder();

    public boolean isPinnable();

    public boolean isPinned();

    public boolean isRestricted();

    public boolean isShared();

    public boolean isStarred();

    public boolean isTrashed();

    public boolean isViewed();
}

