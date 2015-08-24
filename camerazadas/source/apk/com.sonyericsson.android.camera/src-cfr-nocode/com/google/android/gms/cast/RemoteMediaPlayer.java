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

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private final Object mw;

    public RemoteMediaPlayer();

    static /* synthetic */ void a(RemoteMediaPlayer var0);

    static /* synthetic */ void b(RemoteMediaPlayer var0);

    static /* synthetic */ Object c(RemoteMediaPlayer var0);

    static /* synthetic */ a d(RemoteMediaPlayer var0);

    static /* synthetic */ iq e(RemoteMediaPlayer var0);

    private void onMetadataUpdated();

    private void onStatusUpdated();

    public long getApproximateStreamPosition();

    public MediaInfo getMediaInfo();

    public MediaStatus getMediaStatus();

    public String getNamespace();

    public long getStreamDuration();

    public PendingResult<MediaChannelResult> load(GoogleApiClient var1, MediaInfo var2);

    public PendingResult<MediaChannelResult> load(GoogleApiClient var1, MediaInfo var2, boolean var3);

    public PendingResult<MediaChannelResult> load(GoogleApiClient var1, MediaInfo var2, boolean var3, long var4);

    public PendingResult<MediaChannelResult> load(GoogleApiClient var1, MediaInfo var2, boolean var3, long var4, JSONObject var6);

    public PendingResult<MediaChannelResult> load(GoogleApiClient var1, MediaInfo var2, boolean var3, long var4, long[] var6, JSONObject var7);

    @Override
    public void onMessageReceived(CastDevice var1, String var2, String var3);

    public PendingResult<MediaChannelResult> pause(GoogleApiClient var1);

    public PendingResult<MediaChannelResult> pause(GoogleApiClient var1, JSONObject var2);

    public PendingResult<MediaChannelResult> play(GoogleApiClient var1);

    public PendingResult<MediaChannelResult> play(GoogleApiClient var1, JSONObject var2);

    public PendingResult<MediaChannelResult> requestStatus(GoogleApiClient var1);

    public PendingResult<MediaChannelResult> seek(GoogleApiClient var1, long var2);

    public PendingResult<MediaChannelResult> seek(GoogleApiClient var1, long var2, int var4);

    public PendingResult<MediaChannelResult> seek(GoogleApiClient var1, long var2, int var4, JSONObject var5);

    public PendingResult<MediaChannelResult> setActiveMediaTracks(GoogleApiClient var1, long[] var2);

    public void setOnMetadataUpdatedListener(OnMetadataUpdatedListener var1);

    public void setOnStatusUpdatedListener(OnStatusUpdatedListener var1);

    public PendingResult<MediaChannelResult> setStreamMute(GoogleApiClient var1, boolean var2);

    public PendingResult<MediaChannelResult> setStreamMute(GoogleApiClient var1, boolean var2, JSONObject var3);

    public PendingResult<MediaChannelResult> setStreamVolume(GoogleApiClient var1, double var2) throws IllegalArgumentException;

    public PendingResult<MediaChannelResult> setStreamVolume(GoogleApiClient var1, double var2, JSONObject var4) throws IllegalArgumentException;

    public PendingResult<MediaChannelResult> setTextTrackStyle(GoogleApiClient var1, TextTrackStyle var2);

    public PendingResult<MediaChannelResult> stop(GoogleApiClient var1);

    public PendingResult<MediaChannelResult> stop(GoogleApiClient var1, JSONObject var2);

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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class com.google.android.gms.cast.RemoteMediaPlayer$a
    implements ir {
        final /* synthetic */ RemoteMediaPlayer FK;
        private GoogleApiClient FX;
        private long FY;

        public com.google.android.gms.cast.RemoteMediaPlayer$a(RemoteMediaPlayer var1);

        @Override
        public void a(String var1, String var2, long var3, String var5) throws IOException;

        public void b(GoogleApiClient var1);

        @Override
        public long fx();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private final class a
        implements ResultCallback<Status> {
            private final long FZ;
            final /* synthetic */ com.google.android.gms.cast.RemoteMediaPlayer$a Ga;

            a(com.google.android.gms.cast.RemoteMediaPlayer$a var1, long var2);

            public void k(Status var1);

            @Override
            public /* synthetic */ void onResult(Result var1);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class b
    extends Cast.a<MediaChannelResult> {
        is Gb;

        b();

        @Override
        public /* synthetic */ Result c(Status var1);

        public MediaChannelResult l(Status var1);

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class c
    implements MediaChannelResult {
        private final Status CM;
        private final JSONObject Fl;

        c(Status var1, JSONObject var2);

        @Override
        public JSONObject getCustomData();

        @Override
        public Status getStatus();
    }

}

