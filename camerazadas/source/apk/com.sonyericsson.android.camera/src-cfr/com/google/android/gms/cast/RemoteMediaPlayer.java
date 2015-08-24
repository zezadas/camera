/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.BaseImplementation;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ij;
import com.google.android.gms.internal.iq;
import com.google.android.gms.internal.ir;
import com.google.android.gms.internal.is;
import java.io.IOException;
import org.json.JSONObject;

public class RemoteMediaPlayer
implements Cast.MessageReceivedCallback {
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_CANCELED = 2101;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    public static final int STATUS_TIMED_OUT = 2102;
    private final iq FG;
    private final a FH;
    private OnMetadataUpdatedListener FI;
    private OnStatusUpdatedListener FJ;
    private final Object mw = new Object();

    public RemoteMediaPlayer() {
        this.FH = new a();
        this.FG = new iq(){

            @Override
            protected void onMetadataUpdated() {
                RemoteMediaPlayer.this.onMetadataUpdated();
            }

            @Override
            protected void onStatusUpdated() {
                RemoteMediaPlayer.this.onStatusUpdated();
            }
        };
        this.FG.a(this.FH);
    }

    private void onMetadataUpdated() {
        if (this.FI != null) {
            this.FI.onMetadataUpdated();
        }
    }

    private void onStatusUpdated() {
        if (this.FJ != null) {
            this.FJ.onStatusUpdated();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long getApproximateStreamPosition() {
        Object object = this.mw;
        synchronized (object) {
            return this.FG.getApproximateStreamPosition();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public MediaInfo getMediaInfo() {
        Object object = this.mw;
        synchronized (object) {
            return this.FG.getMediaInfo();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public MediaStatus getMediaStatus() {
        Object object = this.mw;
        synchronized (object) {
            return this.FG.getMediaStatus();
        }
    }

    public String getNamespace() {
        return this.FG.getNamespace();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public long getStreamDuration() {
        Object object = this.mw;
        synchronized (object) {
            return this.FG.getStreamDuration();
        }
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo) {
        return this.load(googleApiClient, mediaInfo, true, 0, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean bl) {
        return this.load(googleApiClient, mediaInfo, bl, 0, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean bl, long l) {
        return this.load(googleApiClient, mediaInfo, bl, l, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean bl, long l, JSONObject jSONObject) {
        return this.load(googleApiClient, mediaInfo, bl, l, null, jSONObject);
    }

    public PendingResult<MediaChannelResult> load(final GoogleApiClient googleApiClient, final MediaInfo mediaInfo, final boolean bl, final long l, final long[] arrl, final JSONObject jSONObject) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, mediaInfo, bl, l, arrl, jSONObject);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    @Override
    public void onMessageReceived(CastDevice castDevice, String string, String string2) {
        this.FG.aD(string2);
    }

    public PendingResult<MediaChannelResult> pause(GoogleApiClient googleApiClient) {
        return this.pause(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> pause(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, jSONObject);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> play(GoogleApiClient googleApiClient) {
        return this.play(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> play(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.c(this.Gb, jSONObject);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> requestStatus(final GoogleApiClient googleApiClient) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long l) {
        return this.seek(googleApiClient, l, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long l, int n) {
        return this.seek(googleApiClient, l, n, null);
    }

    public PendingResult<MediaChannelResult> seek(final GoogleApiClient googleApiClient, final long l, final int n, final JSONObject jSONObject) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, l, n, jSONObject);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(final GoogleApiClient googleApiClient, final long[] arrl) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, arrl);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public void setOnMetadataUpdatedListener(OnMetadataUpdatedListener onMetadataUpdatedListener) {
        this.FI = onMetadataUpdatedListener;
    }

    public void setOnStatusUpdatedListener(OnStatusUpdatedListener onStatusUpdatedListener) {
        this.FJ = onStatusUpdatedListener;
    }

    public PendingResult<MediaChannelResult> setStreamMute(GoogleApiClient googleApiClient, boolean bl) {
        return this.setStreamMute(googleApiClient, bl, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(final GoogleApiClient googleApiClient, final boolean bl, final JSONObject jSONObject) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, bl, jSONObject);
                    }
                    catch (IllegalStateException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    catch (IOException var2_3) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setStreamVolume(GoogleApiClient googleApiClient, double d) throws IllegalArgumentException {
        return this.setStreamVolume(googleApiClient, d, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(final GoogleApiClient googleApiClient, final double d, final JSONObject jSONObject) throws IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Volume cannot be " + d);
        }
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, d, jSONObject);
                    }
                    catch (IllegalStateException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    catch (IllegalArgumentException var2_3) {
                        this.b(this.l(new Status(2100)));
                    }
                    catch (IOException var2_4) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(final GoogleApiClient googleApiClient, final TextTrackStyle textTrackStyle) {
        if (textTrackStyle == null) {
            throw new IllegalArgumentException("trackStyle cannot be null");
        }
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.a(this.Gb, textTrackStyle);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public PendingResult<MediaChannelResult> stop(GoogleApiClient googleApiClient) {
        return this.stop(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> stop(final GoogleApiClient googleApiClient, final JSONObject jSONObject) {
        return googleApiClient.b(new b(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            protected void a(ij object) {
                object = RemoteMediaPlayer.this.mw;
                synchronized (object) {
                    RemoteMediaPlayer.this.FH.b(googleApiClient);
                    try {
                        RemoteMediaPlayer.this.FG.b(this.Gb, jSONObject);
                    }
                    catch (IOException var2_2) {
                        this.b(this.l(new Status(2100)));
                    }
                    finally {
                        RemoteMediaPlayer.this.FH.b(null);
                    }
                    return;
                }
            }
        });
    }

    public static interface MediaChannelResult
    extends Result {
        public JSONObject getCustomData();
    }

    public static interface OnMetadataUpdatedListener {
        public void onMetadataUpdated();
    }

    public static interface OnStatusUpdatedListener {
        public void onStatusUpdated();
    }

    private class com.google.android.gms.cast.RemoteMediaPlayer$a
    implements ir {
        private GoogleApiClient FX;
        private long FY;

        public com.google.android.gms.cast.RemoteMediaPlayer$a() {
            this.FY = 0;
        }

        @Override
        public void a(String string, String string2, long l, String string3) throws IOException {
            if (this.FX == null) {
                throw new IOException("No GoogleApiClient available");
            }
            Cast.CastApi.sendMessage(this.FX, string, string2).setResultCallback(new a(l));
        }

        public void b(GoogleApiClient googleApiClient) {
            this.FX = googleApiClient;
        }

        @Override
        public long fx() {
            long l;
            this.FY = l = this.FY + 1;
            return l;
        }

        private final class a
        implements ResultCallback<Status> {
            private final long FZ;

            a(long l) {
                this.FZ = l;
            }

            public void k(Status status) {
                if (!status.isSuccess()) {
                    RemoteMediaPlayer.this.FG.b(this.FZ, status.getStatusCode());
                }
            }

            @Override
            public /* synthetic */ void onResult(Result result) {
                this.k((Status)result);
            }
        }

    }

    private static abstract class b
    extends Cast.a<MediaChannelResult> {
        is Gb;

        b() {
            this.Gb = new is(){

                @Override
                public void a(long l, int n, JSONObject jSONObject) {
                    b.this.b(new c(new Status(n), jSONObject));
                }

                @Override
                public void n(long l) {
                    b.this.b(b.this.l(new Status(2103)));
                }
            };
        }

        @Override
        public /* synthetic */ Result c(Status status) {
            return this.l(status);
        }

        public MediaChannelResult l(final Status status) {
            return new MediaChannelResult(){

                @Override
                public JSONObject getCustomData() {
                    return null;
                }

                @Override
                public Status getStatus() {
                    return status;
                }
            };
        }

    }

    private static final class c
    implements MediaChannelResult {
        private final Status CM;
        private final JSONObject Fl;

        c(Status status, JSONObject jSONObject) {
            this.CM = status;
            this.Fl = jSONObject;
        }

        @Override
        public JSONObject getCustomData() {
            return this.Fl;
        }

        @Override
        public Status getStatus() {
            return this.CM;
        }
    }

}

