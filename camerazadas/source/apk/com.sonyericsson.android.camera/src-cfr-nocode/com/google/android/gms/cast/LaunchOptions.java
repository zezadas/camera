/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class LaunchOptions
implements SafeParcelable {
    public static final Parcelable.Creator<LaunchOptions> CREATOR;
    private final int BR;
    private boolean Fb;
    private String Fc;

    static;

    public LaunchOptions();

    LaunchOptions(int var1, boolean var2, String var3);

    @Override
    public int describeContents();

    public boolean equals(Object var1);

    public String getLanguage();

    public boolean getRelaunchIfRunning();

    int getVersionCode();

    public int hashCode();

    public void setLanguage(String var1);

    public void setRelaunchIfRunning(boolean var1);

    public String toString();

    @Override
    public void writeToParcel(Parcel var1, int var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private LaunchOptions Fd;

        public Builder();

        public LaunchOptions build();

        public Builder setLocale(Locale var1);

        public Builder setRelaunchIfRunning(boolean var1);
    }

}

