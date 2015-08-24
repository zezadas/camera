/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;

/*
 * Exception performing whole class analysis.
 */
public final class ExecutionOptions {
    public static final int CONFLICT_STRATEGY_KEEP_REMOTE = 1;
    public static final int CONFLICT_STRATEGY_OVERWRITE_REMOTE = 0;
    public static final int MAX_TRACKING_TAG_STRING_LENGTH = 65536;
    private final String Nn;
    private final boolean No;
    private final int Np;

    private ExecutionOptions(String var1, boolean var2, int var3);

    /* synthetic */ ExecutionOptions(String var1, boolean var2, int var3,  var4);

    public static void a(GoogleApiClient var0, ExecutionOptions var1);

    public static boolean aV(int var0);

    public static boolean aW(int var0);

    public static boolean bh(String var0);

    public String hO();

    public boolean hP();

    public int hQ();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private String Nn;
        private boolean No;
        private int Np;

        public Builder();

        public ExecutionOptions build();

        public Builder setConflictStrategy(int var1);

        public Builder setNotifyOnCompletion(boolean var1);

        public Builder setTrackingTag(String var1);
    }

}

