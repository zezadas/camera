/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeCreator;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class SnapshotMetadataChange
implements SafeParcelable {
    public static final SnapshotMetadataChangeCreator CREATOR;
    public static final SnapshotMetadataChange EMPTY_CHANGE;
    private final int BR;
    private final String Tr;
    private final Long adj;
    private final Uri adk;
    private a adl;

    static;

    SnapshotMetadataChange();

    SnapshotMetadataChange(int var1, String var2, Long var3, a var4, Uri var5);

    SnapshotMetadataChange(String var1, Long var2, a var3, Uri var4);

    @Override
    public int describeContents();

    public Bitmap getCoverImage();

    public Uri getCoverImageUri();

    public String getDescription();

    public Long getPlayedTimeMillis();

    public int getVersionCode();

    public a lM();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private String Tr;
        private Uri adk;
        private Long adm;
        private a adn;

        public Builder();

        public SnapshotMetadataChange build();

        public Builder fromMetadata(SnapshotMetadata var1);

        public Builder setCoverImage(Bitmap var1);

        public Builder setDescription(String var1);

        public Builder setPlayedTimeMillis(long var1);
    }

}

