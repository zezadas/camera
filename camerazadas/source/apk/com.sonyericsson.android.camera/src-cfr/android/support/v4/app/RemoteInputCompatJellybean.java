/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.RemoteInputCompatBase;

class RemoteInputCompatJellybean {
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    private static final String KEY_ALLOW_FREE_FORM_INPUT = "allowFreeFormInput";
    private static final String KEY_CHOICES = "choices";
    private static final String KEY_EXTRAS = "extras";
    private static final String KEY_LABEL = "label";
    private static final String KEY_RESULT_KEY = "resultKey";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";

    RemoteInputCompatJellybean() {
    }

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] object, Intent intent, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        for (RemoteInputCompatBase.RemoteInput remoteInput : object) {
            Object object2 = bundle.get(remoteInput.getResultKey());
            if (!(object2 instanceof CharSequence)) continue;
            bundle2.putCharSequence(remoteInput.getResultKey(), (CharSequence)object2);
        }
        object = new Intent();
        object.putExtra("android.remoteinput.resultsData", bundle2);
        intent.setClipData(ClipData.newIntent((CharSequence)"android.remoteinput.results", (Intent)object));
    }

    static RemoteInputCompatBase.RemoteInput fromBundle(Bundle bundle, RemoteInputCompatBase.RemoteInput.Factory factory) {
        return factory.build(bundle.getString("resultKey"), bundle.getCharSequence("label"), bundle.getCharSequenceArray("choices"), bundle.getBoolean("allowFreeFormInput"), bundle.getBundle("extras"));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static RemoteInputCompatBase.RemoteInput[] fromBundleArray(Bundle[] arrbundle, RemoteInputCompatBase.RemoteInput.Factory factory) {
        if (arrbundle == null) {
            return null;
        }
        RemoteInputCompatBase.RemoteInput[] arrremoteInput = factory.newArray(arrbundle.length);
        int n = 0;
        do {
            RemoteInputCompatBase.RemoteInput[] arrremoteInput2 = arrremoteInput;
            if (n >= arrbundle.length) return arrremoteInput2;
            arrremoteInput[n] = RemoteInputCompatJellybean.fromBundle(arrbundle[n], factory);
            ++n;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    static Bundle getResultsFromIntent(Intent intent) {
        ClipDescription clipDescription;
        ClipData clipData = intent.getClipData();
        if (!(clipData != null && (clipDescription = clipData.getDescription()).hasMimeType("text/vnd.android.intent") && clipDescription.getLabel().equals("android.remoteinput.results"))) {
            return null;
        }
        return (Bundle)clipData.getItemAt(0).getIntent().getExtras().getParcelable("android.remoteinput.resultsData");
    }

    static Bundle toBundle(RemoteInputCompatBase.RemoteInput remoteInput) {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", remoteInput.getResultKey());
        bundle.putCharSequence("label", remoteInput.getLabel());
        bundle.putCharSequenceArray("choices", remoteInput.getChoices());
        bundle.putBoolean("allowFreeFormInput", remoteInput.getAllowFreeFormInput());
        bundle.putBundle("extras", remoteInput.getExtras());
        return bundle;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static Bundle[] toBundleArray(RemoteInputCompatBase.RemoteInput[] arrremoteInput) {
        if (arrremoteInput == null) {
            return null;
        }
        Bundle[] arrbundle = new Bundle[arrremoteInput.length];
        int n = 0;
        do {
            Bundle[] arrbundle2 = arrbundle;
            if (n >= arrremoteInput.length) return arrbundle2;
            arrbundle[n] = RemoteInputCompatJellybean.toBundle(arrremoteInput[n]);
            ++n;
        } while (true);
    }
}

