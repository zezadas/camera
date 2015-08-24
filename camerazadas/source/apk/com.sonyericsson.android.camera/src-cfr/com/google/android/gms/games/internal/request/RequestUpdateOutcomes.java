/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.games.internal.constants.RequestUpdateResultOutcome;
import java.util.HashMap;
import java.util.Set;

public final class RequestUpdateOutcomes {
    private static final String[] abs = new String[]{"requestId", "outcome"};
    private final int HF;
    private final HashMap<String, Integer> abt;

    private RequestUpdateOutcomes(int n, HashMap<String, Integer> hashMap) {
        this.HF = n;
        this.abt = hashMap;
    }

    public static RequestUpdateOutcomes V(DataHolder dataHolder) {
        Builder builder = new Builder();
        builder.dR(dataHolder.getStatusCode());
        int n = dataHolder.getCount();
        for (int i = 0; i < n; ++i) {
            int n2 = dataHolder.ar(i);
            builder.x(dataHolder.c("requestId", i, n2), dataHolder.b("outcome", i, n2));
        }
        return builder.ly();
    }

    public Set<String> getRequestIds() {
        return this.abt.keySet();
    }

    public int getRequestOutcome(String string) {
        o.b(this.abt.containsKey(string), (Object)("Request " + string + " was not part of the update operation!"));
        return this.abt.get(string);
    }

    public static final class Builder {
        private int HF = 0;
        private HashMap<String, Integer> abt = new HashMap();

        public Builder dR(int n) {
            this.HF = n;
            return this;
        }

        public RequestUpdateOutcomes ly() {
            return new RequestUpdateOutcomes(this.HF, this.abt);
        }

        public Builder x(String string, int n) {
            if (RequestUpdateResultOutcome.isValid(n)) {
                this.abt.put(string, n);
            }
            return this;
        }
    }

}

