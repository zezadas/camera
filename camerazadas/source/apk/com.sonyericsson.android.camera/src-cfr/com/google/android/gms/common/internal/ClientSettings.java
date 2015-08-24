/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.view.View;
import com.google.android.gms.common.internal.ParcelableClientSettingsCreator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class ClientSettings {
    private final View IL;
    private final ParcelableClientSettings Ls;

    public ClientSettings(String string, Collection<String> collection, int n, View view, String string2) {
        this.Ls = new ParcelableClientSettings(string, collection, n, string2);
        this.IL = view;
    }

    public String getAccountName() {
        return this.Ls.getAccountName();
    }

    public String getAccountNameOrDefault() {
        return this.Ls.getAccountNameOrDefault();
    }

    public int getGravityForPopups() {
        return this.Ls.getGravityForPopups();
    }

    public ParcelableClientSettings getParcelableClientSettings() {
        return this.Ls;
    }

    public String getRealClientPackageName() {
        return this.Ls.getRealClientPackageName();
    }

    public List<String> getScopes() {
        return this.Ls.getScopes();
    }

    public String[] getScopesArray() {
        return this.Ls.getScopes().toArray(new String[0]);
    }

    public View getViewForPopups() {
        return this.IL;
    }

    public static final class ParcelableClientSettings
    implements SafeParcelable {
        public static final ParcelableClientSettingsCreator CREATOR = new ParcelableClientSettingsCreator();
        private final int BR;
        private final String Dd;
        private final int IK;
        private final String IM;
        private final List<String> Jk = new ArrayList<String>();

        ParcelableClientSettings(int n, String string, List<String> list, int n2, String string2) {
            this.BR = n;
            this.Dd = string;
            this.Jk.addAll(list);
            this.IK = n2;
            this.IM = string2;
        }

        public ParcelableClientSettings(String string, Collection<String> collection, int n, String string2) {
            this(3, string, new ArrayList<String>(collection), n, string2);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getAccountName() {
            return this.Dd;
        }

        public String getAccountNameOrDefault() {
            if (this.Dd != null) {
                return this.Dd;
            }
            return "<<default account>>";
        }

        public int getGravityForPopups() {
            return this.IK;
        }

        public String getRealClientPackageName() {
            return this.IM;
        }

        public List<String> getScopes() {
            return new ArrayList<String>(this.Jk);
        }

        public int getVersionCode() {
            return this.BR;
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            ParcelableClientSettingsCreator.a(this, parcel, n);
        }
    }

}

