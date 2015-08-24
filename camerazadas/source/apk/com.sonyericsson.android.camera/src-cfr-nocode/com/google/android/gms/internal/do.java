/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gv;
import java.util.Map;

/*
 * Exception performing whole class analysis.
 */
@ez
public final class do
extends FrameLayout
implements MediaPlayer.OnCompletionListener,
MediaPlayer.OnErrorListener,
MediaPlayer.OnPreparedListener {
    private final gv md;
    private final MediaController rX;
    private final a rY;
    private final VideoView rZ;
    private long sa;
    private String sb;

    public do(Context var1, gv var2);

    private static void a(gv var0, String var1);

    public static void a(gv var0, String var1, String var2);

    private static void a(gv var0, String var1, String var2, String var3);

    private static void a(gv var0, String var1, Map<String, String> var2);

    public void C(String var1);

    public void b(MotionEvent var1);

    public void ch();

    public void ci();

    public void destroy();

    @Override
    public void onCompletion(MediaPlayer var1);

    @Override
    public boolean onError(MediaPlayer var1, int var2, int var3);

    @Override
    public void onPrepared(MediaPlayer var1);

    public void pause();

    public void play();

    public void q(boolean var1);

    public void seekTo(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class a {
        private final Runnable mk;
        private volatile boolean sc;

        public a(do var1);

        static /* synthetic */ boolean a(a var0);

        public void cancel();

        public void cj();

    }

}

