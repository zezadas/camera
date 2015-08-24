/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RemoteInput
extends RemoteInputCompatBase.RemoteInput {
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final RemoteInputCompatBase.RemoteInput.Factory FACTORY;
    private static final Impl IMPL;
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    private static final String TAG = "RemoteInput";
    private final boolean mAllowFreeFormInput;
    private final CharSequence[] mChoices;
    private final Bundle mExtras;
    private final CharSequence mLabel;
    private final String mResultKey;

    static;

    RemoteInput(String var1, CharSequence var2, CharSequence[] var3, boolean var4, Bundle var5);

    public static void addResultsToIntent(RemoteInput[] var0, Intent var1, Bundle var2);

    public static Bundle getResultsFromIntent(Intent var0);

    @Override
    public boolean getAllowFreeFormInput();

    @Override
    public CharSequence[] getChoices();

    @Override
    public Bundle getExtras();

    @Override
    public CharSequence getLabel();

    @Override
    public String getResultKey();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private boolean mAllowFreeFormInput;
        private CharSequence[] mChoices;
        private Bundle mExtras;
        private CharSequence mLabel;
        private final String mResultKey;

        public Builder(String var1);

        public Builder addExtras(Bundle var1);

        public RemoteInput build();

        public Bundle getExtras();

        public Builder setAllowFreeFormInput(boolean var1);

        public Builder setChoices(CharSequence[] var1);

        public Builder setLabel(CharSequence var1);
    }

    static interface Impl {
        public void addResultsToIntent(RemoteInput[] var1, Intent var2, Bundle var3);

        public Bundle getResultsFromIntent(Intent var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ImplApi20
    implements Impl {
        ImplApi20();

        @Override
        public void addResultsToIntent(RemoteInput[] var1, Intent var2, Bundle var3);

        @Override
        public Bundle getResultsFromIntent(Intent var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ImplBase
    implements Impl {
        ImplBase();

        @Override
        public void addResultsToIntent(RemoteInput[] var1, Intent var2, Bundle var3);

        @Override
        public Bundle getResultsFromIntent(Intent var1);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    static class ImplJellybean
    implements Impl {
        ImplJellybean();

        @Override
        public void addResultsToIntent(RemoteInput[] var1, Intent var2, Bundle var3);

        @Override
        public Bundle getResultsFromIntent(Intent var1);
    }

}

