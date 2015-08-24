/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.data.DataHolder;
import java.util.HashMap;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class RequestUpdateOutcomes {
    private static final String[] abs;
    private final int HF;
    private final HashMap<String, Integer> abt;

    static;

    private RequestUpdateOutcomes(int var1, HashMap<String, Integer> var2);

    /* synthetic */ RequestUpdateOutcomes(int var1, HashMap var2,  var3);

    public static RequestUpdateOutcomes V(DataHolder var0);

    public Set<String> getRequestIds();

    public int getRequestOutcome(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class Builder {
        private int HF;
        private HashMap<String, Integer> abt;

        public Builder();

        public Builder dR(int var1);

        public RequestUpdateOutcomes ly();

        public Builder x(String var1, int var2);
    }

}

