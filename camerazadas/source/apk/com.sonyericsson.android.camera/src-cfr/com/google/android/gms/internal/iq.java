/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.ik;
import com.google.android.gms.internal.ip;
import com.google.android.gms.internal.is;
import com.google.android.gms.internal.it;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

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
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    static {
        NAMESPACE = ik.aG("com.google.cast.media");
        Hb = TimeUnit.HOURS.toMillis(24);
        Hc = TimeUnit.HOURS.toMillis(24);
        Hd = TimeUnit.HOURS.toMillis(24);
        He = TimeUnit.SECONDS.toMillis(1);
    }

    public iq() {
        this(null);
    }

    public iq(String string) {
        super(NAMESPACE, "MediaControlChannel", string);
        this.Hs = new a();
        this.Hr = new ArrayList<it>();
        this.Hh = new it(Hc);
        this.Hr.add(this.Hh);
        this.Hi = new it(Hb);
        this.Hr.add(this.Hi);
        this.Hj = new it(Hb);
        this.Hr.add(this.Hj);
        this.Hk = new it(Hb);
        this.Hr.add(this.Hk);
        this.Hl = new it(Hd);
        this.Hr.add(this.Hl);
        this.Hm = new it(Hb);
        this.Hr.add(this.Hm);
        this.Hn = new it(Hb);
        this.Hr.add(this.Hn);
        this.Ho = new it(Hb);
        this.Hr.add(this.Ho);
        this.Hp = new it(Hb);
        this.Hr.add(this.Hp);
        this.Hq = new it(Hb);
        this.Hr.add(this.Hq);
        this.fT();
    }

    private void H(boolean bl) {
        if (this.Ht != bl) {
            this.Ht = bl;
            if (bl) {
                this.mHandler.postDelayed(this.Hs, He);
            }
        } else {
            return;
        }
        this.mHandler.removeCallbacks(this.Hs);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(long l, JSONObject iterator) throws JSONException {
        int n;
        int n2;
        boolean bl;
        int n3;
        block10 : {
            n = 1;
            bl = this.Hh.p(l);
            n2 = this.Hl.fV() && !this.Hl.p(l) ? 1 : 0;
            if (this.Hm.fV()) {
                n3 = n;
                if (!this.Hm.p(l)) break block10;
            }
            n3 = this.Hn.fV() && !this.Hn.p(l) ? n : 0;
        }
        n2 = n2 != 0 ? 2 : 0;
        n = n2;
        if (n3 != 0) {
            n = n2 | 1;
        }
        if (bl || this.Hg == null) {
            this.Hg = new MediaStatus((JSONObject)iterator);
            this.Hf = SystemClock.elapsedRealtime();
            n2 = 7;
        } else {
            n2 = this.Hg.a((JSONObject)iterator, n);
        }
        if ((n2 & 1) != 0) {
            this.Hf = SystemClock.elapsedRealtime();
            this.onStatusUpdated();
        }
        if ((n2 & 2) != 0) {
            this.Hf = SystemClock.elapsedRealtime();
            this.onStatusUpdated();
        }
        if ((n2 & 4) != 0) {
            this.onMetadataUpdated();
        }
        iterator = this.Hr.iterator();
        while (iterator.hasNext()) {
            iterator.next().d(l, 0);
        }
        return;
    }

    private void fT() {
        this.H(false);
        this.Hf = 0;
        this.Hg = null;
        this.Hh.clear();
        this.Hl.clear();
        this.Hm.clear();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is is) throws IOException {
        JSONObject jSONObject;
        long l;
        jSONObject = new JSONObject();
        l = this.fz();
        this.Ho.a(l, is);
        this.H(true);
        try {
            jSONObject.put("requestId", l);
            jSONObject.put("type", "GET_STATUS");
            if (this.Hg != null) {
                jSONObject.put("mediaSessionId", this.Hg.fw());
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject.toString(), l, null);
        return l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is object, double d, JSONObject jSONObject) throws IOException, IllegalStateException, IllegalArgumentException {
        JSONObject jSONObject2;
        long l;
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Volume cannot be " + d);
        }
        jSONObject2 = new JSONObject();
        l = this.fz();
        this.Hm.a(l, (is)object);
        this.H(true);
        try {
            jSONObject2.put("requestId", l);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", this.fw());
            object = new JSONObject();
            object.put("level", d);
            jSONObject2.put("volume", object);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l, null);
        return l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is is, long l, int n, JSONObject jSONObject) throws IOException, IllegalStateException {
        long l2;
        JSONObject jSONObject2;
        jSONObject2 = new JSONObject();
        l2 = this.fz();
        this.Hl.a(l2, is);
        this.H(true);
        try {
            jSONObject2.put("requestId", l2);
            jSONObject2.put("type", "SEEK");
            jSONObject2.put("mediaSessionId", this.fw());
            jSONObject2.put("currentTime", ik.o(l));
            if (n == 1) {
                jSONObject2.put("resumeState", "PLAYBACK_START");
            } else if (n == 2) {
                jSONObject2.put("resumeState", "PLAYBACK_PAUSE");
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l2, null);
        return l2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is object, MediaInfo mediaInfo, boolean bl, long l, long[] arrl, JSONObject jSONObject) throws IOException {
        long l2;
        JSONObject jSONObject2;
        jSONObject2 = new JSONObject();
        l2 = this.fz();
        this.Hh.a(l2, (is)object);
        this.H(true);
        try {
            jSONObject2.put("requestId", l2);
            jSONObject2.put("type", "LOAD");
            jSONObject2.put("media", mediaInfo.bK());
            jSONObject2.put("autoplay", bl);
            jSONObject2.put("currentTime", ik.o(l));
            if (arrl != null && arrl.length > 0) {
                object = new JSONArray();
                for (int i = 0; i < arrl.length; ++i) {
                    object.put(i, arrl[i]);
                }
                jSONObject2.put("activeTrackIds", object);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l2, null);
        return l2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is is, TextTrackStyle textTrackStyle) throws IOException {
        long l;
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        l = this.fz();
        this.Hq.a(l, is);
        this.H(true);
        try {
            jSONObject.put("requestId", l);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.bK());
            }
            jSONObject.put("mediaSessionId", this.fw());
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject.toString(), l, null);
        return l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is is, JSONObject jSONObject) throws IOException {
        long l;
        JSONObject jSONObject2;
        jSONObject2 = new JSONObject();
        l = this.fz();
        this.Hi.a(l, is);
        this.H(true);
        try {
            jSONObject2.put("requestId", l);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", this.fw());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l, null);
        return l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is object, boolean bl, JSONObject jSONObject) throws IOException, IllegalStateException {
        JSONObject jSONObject2;
        long l;
        jSONObject2 = new JSONObject();
        l = this.fz();
        this.Hn.a(l, (is)object);
        this.H(true);
        try {
            jSONObject2.put("requestId", l);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", this.fw());
            object = new JSONObject();
            object.put("muted", bl);
            jSONObject2.put("volume", object);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l, null);
        return l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long a(is object, long[] arrl) throws IOException {
        JSONObject jSONObject;
        long l;
        jSONObject = new JSONObject();
        l = this.fz();
        this.Hp.a(l, (is)object);
        this.H(true);
        try {
            jSONObject.put("requestId", l);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", this.fw());
            object = new JSONArray();
            for (int i = 0; i < arrl.length; ++i) {
                object.put(i, arrl[i]);
            }
            jSONObject.put("activeTrackIds", object);
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject.toString(), l, null);
        return l;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    @Override
    public final void aD(String string) {
        Iterator<it> iterator;
        long l;
        Object object;
        block10 : {
            this.Go.b("message received: %s", string);
            try {
                object = new JSONObject(string);
                iterator = object.getString("type");
                l = object.optLong("requestId", -1);
                if (iterator.equals((Object)"MEDIA_STATUS")) {
                    if ((object = object.getJSONArray("status")).length() > 0) {
                        this.a(l, object.getJSONObject(0));
                        return;
                    }
                    this.Hg = null;
                    this.onStatusUpdated();
                    this.onMetadataUpdated();
                    this.Ho.d(l, 0);
                    return;
                }
                if (!iterator.equals((Object)"INVALID_PLAYER_STATE")) break block10;
                this.Go.d("received unexpected error: Invalid Player State.", new Object[0]);
                object = object.optJSONObject("customData");
                iterator = this.Hr.iterator();
                while (iterator.hasNext()) {
                    ((it)iterator.next()).b(l, 2100, (JSONObject)object);
                }
                return;
            }
            catch (JSONException var4_3) {
                this.Go.d("Message is malformed (%s); ignoring: %s", var4_3.getMessage(), string);
                return;
            }
        }
        if (iterator.equals((Object)"LOAD_FAILED")) {
            object = object.optJSONObject("customData");
            this.Hh.b(l, 2100, (JSONObject)object);
            return;
        }
        if (iterator.equals((Object)"LOAD_CANCELLED")) {
            object = object.optJSONObject("customData");
            this.Hh.b(l, 2101, (JSONObject)object);
            return;
        }
        if (!iterator.equals((Object)"INVALID_REQUEST")) return;
        {
            this.Go.d("received unexpected error: Invalid Request.", new Object[0]);
            object = object.optJSONObject("customData");
            iterator = this.Hr.iterator();
            while (iterator.hasNext()) {
                iterator.next().b(l, 2100, (JSONObject)object);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long b(is is, JSONObject jSONObject) throws IOException {
        long l;
        JSONObject jSONObject2;
        jSONObject2 = new JSONObject();
        l = this.fz();
        this.Hk.a(l, is);
        this.H(true);
        try {
            jSONObject2.put("requestId", l);
            jSONObject2.put("type", "STOP");
            jSONObject2.put("mediaSessionId", this.fw());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l, null);
        return l;
    }

    @Override
    public void b(long l, int n) {
        Iterator<it> iterator = this.Hr.iterator();
        while (iterator.hasNext()) {
            iterator.next().d(l, n);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long c(is is, JSONObject jSONObject) throws IOException, IllegalStateException {
        long l;
        JSONObject jSONObject2;
        jSONObject2 = new JSONObject();
        l = this.fz();
        this.Hj.a(l, is);
        this.H(true);
        try {
            jSONObject2.put("requestId", l);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", this.fw());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        }
        catch (JSONException var1_2) {}
        this.a(jSONObject2.toString(), l, null);
        return l;
    }

    @Override
    public void fA() {
        this.fT();
    }

    public long fw() throws IllegalStateException {
        if (this.Hg == null) {
            throw new IllegalStateException("No current media session");
        }
        return this.Hg.fw();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public long getApproximateStreamPosition() {
        MediaInfo mediaInfo = this.getMediaInfo();
        if (mediaInfo == null) {
            return 0;
        }
        if (this.Hf == 0) return 0;
        double d = this.Hg.getPlaybackRate();
        long l = this.Hg.getStreamPosition();
        int n = this.Hg.getPlayerState();
        if (d == 0.0) return l;
        if (n != 2) {
            return l;
        }
        long l2 = SystemClock.elapsedRealtime() - this.Hf;
        if (l2 < 0) {
            return l;
        }
        if (l2 == 0) {
            return l;
        }
        long l3 = mediaInfo.getStreamDuration();
        l2 = l + (long)((double)l2 * d);
        if (l3 > 0 && l2 > l3) {
            return l3;
        }
        if (l2 >= 0) return l2;
        return 0;
    }

    public MediaInfo getMediaInfo() {
        if (this.Hg == null) {
            return null;
        }
        return this.Hg.getMediaInfo();
    }

    public MediaStatus getMediaStatus() {
        return this.Hg;
    }

    public long getStreamDuration() {
        MediaInfo mediaInfo = this.getMediaInfo();
        if (mediaInfo != null) {
            return mediaInfo.getStreamDuration();
        }
        return 0;
    }

    protected void onMetadataUpdated() {
    }

    protected void onStatusUpdated() {
    }

    private class a
    implements Runnable {
        private a() {
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         */
        @Override
        public void run() {
            boolean bl = false;
            iq.this.Ht = false;
            long l = SystemClock.elapsedRealtime();
            Object object = iq.this.Hr.iterator();
            while (object.hasNext()) {
                ((it)object.next()).e(l, 2102);
            }
            object = it.Hz;
            synchronized (object) {
                Iterator iterator = iq.this.Hr.iterator();
                do {
                    if (!iterator.hasNext()) {
                        iq.this.H(bl);
                        return;
                    }
                    if (!((it)iterator.next()).fV()) continue;
                    bl = true;
                } while (true);
            }
        }
    }

}

