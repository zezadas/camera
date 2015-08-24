/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.is;
import com.google.android.gms.internal.it;
import java.io.IOException;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class iq
extends ii {
    private static final long Hb;
    private static final long Hc;
    private static final long Hd;
    private static final long He;
    private static final String NAMESPACE;
    private long Hf;
    private MediaStatus Hg;
    private final it Hh;
    private final it Hi;
    private final it Hj;
    private final it Hk;
    private final it Hl;
    private final it Hm;
    private final it Hn;
    private final it Ho;
    private final it Hp;
    private final it Hq;
    private final List<it> Hr;
    private final Runnable Hs;
    private boolean Ht;
    private final Handler mHandler;

    static;

    public iq();

    public iq(String var1);

    private void H(boolean var1);

    static /* synthetic */ List a(iq var0);

    private void a(long var1, JSONObject var3) throws JSONException;

    static /* synthetic */ boolean a(iq var0, boolean var1);

    static /* synthetic */ void b(iq var0, boolean var1);

    private void fT();

    public long a(is var1) throws IOException;

    public long a(is var1, double var2, JSONObject var4) throws IOException, IllegalStateException, IllegalArgumentException;

    public long a(is var1, long var2, int var4, JSONObject var5) throws IOException, IllegalStateException;

    public long a(is var1, MediaInfo var2, boolean var3, long var4, long[] var6, JSONObject var7) throws IOException;

    public long a(is var1, TextTrackStyle var2) throws IOException;

    public long a(is var1, JSONObject var2) throws IOException;

    public long a(is var1, boolean var2, JSONObject var3) throws IOException, IllegalStateException;

    public long a(is var1, long[] var2) throws IOException;

    @Override
    public final void aD(String var1);

    public long b(is var1, JSONObject var2) throws IOException;

    @Override
    public void b(long var1, int var3);

    public long c(is var1, JSONObject var2) throws IOException, IllegalStateException;

    @Override
    public void fA();

    public long fw() throws IllegalStateException;

    public long getApproximateStreamPosition();

    public MediaInfo getMediaInfo();

    public MediaStatus getMediaStatus();

    public long getStreamDuration();

    protected void onMetadataUpdated();

    protected void onStatusUpdated();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class a
    implements Runnable {
        final /* synthetic */ iq Hu;

        private a(iq var1);

        /* synthetic */ a(iq var1,  var2);

        @Override
        public void run();
    }

}

