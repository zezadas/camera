/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.Arrays;

class BundleUtil {
    BundleUtil() {
    }

    public static Bundle[] getBundleArrayFromBundle(Bundle bundle, String string) {
        Parcelable[] arrparcelable = bundle.getParcelableArray(string);
        if (arrparcelable instanceof Bundle[] || arrparcelable == null) {
            return (Bundle[])arrparcelable;
        }
        arrparcelable = (Bundle[])Arrays.copyOf(arrparcelable, arrparcelable.length, Bundle[].class);
        bundle.putParcelableArray(string, arrparcelable);
        return arrparcelable;
    }
}

