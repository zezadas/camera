/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.launcher;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class AlbumLauncher
extends Activity {
    public static final String EXTRA_BURST_BUCKETID = "burst_bucketId";
    public static final String EXTRA_PLAYBACK = "android.intent.extra.finishOnCompletion";
    private static final boolean EXTRA_PLAYBACK_DEFAULT = false;
    public static final String EXTRA_SOMCTYPE = "somc_type";
    private static final String PLAYER_PACKAGE_NAME = "com.sonyericsson.android.camera3d";
    private static final String TAG;

    static;

    public AlbumLauncher();

    public static void launchAlbum(Activity var0, Uri var1, String var2, int var3, boolean var4);

    public static void launchPlayer(Activity var0, Uri var1, String var2);

    private boolean launchPlayer(Uri var1, String var2, int var3, boolean var4);

    private void playMpo(Uri var1, String var2);

    @Override
    protected void onActivityResult(int var1, int var2, Intent var3);

    @Override
    protected void onPause();

    @Override
    protected void onResume();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class MimeType
    extends Enum<MimeType> {
        private static final /* synthetic */ MimeType[] $VALUES;
        public static final /* enum */ MimeType MP4;
        public static final /* enum */ MimeType MPO;
        public static final /* enum */ MimeType PHOTO;
        public static final /* enum */ MimeType THREEGPP;
        public static final /* enum */ MimeType UNKOWN;
        final String mText;

        static;

        private MimeType(String var3);

        static MimeType fromText(String var0);

        public static MimeType valueOf(String var0);

        public static MimeType[] values();
    }

}

