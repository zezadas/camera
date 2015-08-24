/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeCreator;

public final class SnapshotMetadataChange
implements SafeParcelable {
    public static final SnapshotMetadataChangeCreator CREATOR = new SnapshotMetadataChangeCreator();
    public static final SnapshotMetadataChange EMPTY_CHANGE = new SnapshotMetadataChange();
    private final int BR;
    private final String Tr;
    private final Long adj;
    private final Uri adk;
    private a adl;

    SnapshotMetadataChange() {
        this(4, null, null, null, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    SnapshotMetadataChange(int n, String string, Long l, a a, Uri uri) {
        boolean bl = true;
        boolean bl2 = true;
        this.BR = n;
        this.Tr = string;
        this.adj = l;
        this.adl = a;
        this.adk = uri;
        if (this.adl != null) {
            if (this.adk != null) {
                bl2 = false;
            }
            o.a(bl2, "Cannot set both a URI and an image");
            return;
        } else {
            if (this.adk == null) return;
            {
                bl2 = this.adl == null ? bl : false;
            }
        }
        o.a(bl2, "Cannot set both a URI and an image");
    }

    SnapshotMetadataChange(String string, Long l, a a, Uri uri) {
        this(4, string, l, a, uri);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Bitmap getCoverImage() {
        if (this.adl == null) {
            return null;
        }
        return this.adl.gw();
    }

    public Uri getCoverImageUri() {
        return this.adk;
    }

    public String getDescription() {
        return this.Tr;
    }

    public Long getPlayedTimeMillis() {
        return this.adj;
    }

    public int getVersionCode() {
        return this.BR;
    }

    public a lM() {
        return this.adl;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        SnapshotMetadataChangeCreator.a(this, parcel, n);
    }

    public static final class Builder {
        private String Tr;
        private Uri adk;
        private Long adm;
        private a adn;

        public SnapshotMetadataChange build() {
            return new SnapshotMetadataChange(this.Tr, this.adm, this.adn, this.adk);
        }

        public Builder fromMetadata(SnapshotMetadata snapshotMetadata) {
            this.Tr = snapshotMetadata.getDescription();
            this.adm = snapshotMetadata.getPlayedTime();
            if (this.adm == -1) {
                this.adm = null;
            }
            this.adk = snapshotMetadata.getCoverImageUri();
            if (this.adk != null) {
                this.adn = null;
            }
            return this;
        }

        public Builder setCoverImage(Bitmap bitmap) {
            this.adn = new a(bitmap);
            this.adk = null;
            return this;
        }

        public Builder setDescription(String string) {
            this.Tr = string;
            return this;
        }

        public Builder setPlayedTimeMillis(long l) {
            this.adm = l;
            return this;
        }
    }

}

