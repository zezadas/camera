/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.view.View;
import com.google.android.gms.common.internal.ParcelableClientSettingsCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collection;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public final class ClientSettings {
    private final View IL;
    private final ParcelableClientSettings Ls;

    public ClientSettings(String var1, Collection<String> var2, int var3, View var4, String var5);

    public String getAccountName();

    public String getAccountNameOrDefault();

    public int getGravityForPopups();

    public ParcelableClientSettings getParcelableClientSettings();

    public String getRealClientPackageName();

    public List<String> getScopes();

    public String[] getScopesArray();

    public View getViewForPopups();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ParcelableClientSettings
    implements SafeParcelable {
        public static final ParcelableClientSettingsCreator CREATOR;
        private final int BR;
        private final String Dd;
        private final int IK;
        private final String IM;
        private final List<String> Jk;

        static;

        ParcelableClientSettings(int var1, String var2, List<String> var3, int var4, String var5);

        public ParcelableClientSettings(String var1, Collection<String> var2, int var3, String var4);

        @Override
        public int describeContents();

        public String getAccountName();

        public String getAccountNameOrDefault();

        public int getGravityForPopups();

        public String getRealClientPackageName();

        public List<String> getScopes();

        public int getVersionCode();

        @Override
        public void writeToParcel(Parcel var1, int var2);
    }

}

