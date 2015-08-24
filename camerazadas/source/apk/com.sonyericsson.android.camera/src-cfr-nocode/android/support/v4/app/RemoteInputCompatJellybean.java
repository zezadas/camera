/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

class RemoteInputCompatJellybean {
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    private static final String KEY_ALLOW_FREE_FORM_INPUT = "allowFreeFormInput";
    private static final String KEY_CHOICES = "choices";
    private static final String KEY_EXTRAS = "extras";
    private static final String KEY_LABEL = "label";
    private static final String KEY_RESULT_KEY = "resultKey";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";

    RemoteInputCompatJellybean();

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] var0, Intent var1, Bundle var2);

    static RemoteInputCompatBase.RemoteInput fromBundle(Bundle var0, RemoteInputCompatBase.RemoteInput.Factory var1);

    static RemoteInputCompatBase.RemoteInput[] fromBundleArray(Bundle[] var0, RemoteInputCompatBase.RemoteInput.Factory var1);

    static Bundle getResultsFromIntent(Intent var0);

    static Bundle toBundle(RemoteInputCompatBase.RemoteInput var0);

    static Bundle[] toBundleArray(RemoteInputCompatBase.RemoteInput[] var0);
}

