/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gv;
import java.util.HashMap;
import java.util.Map;

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

    public do(Context context, gv object) {
        super(context);
        this.md = object;
        this.rZ = new VideoView(context);
        object = new FrameLayout.LayoutParams(-1, -1, 17);
        this.addView((View)this.rZ, (ViewGroup.LayoutParams)object);
        this.rX = new MediaController(context);
        this.rY = new a(this);
        this.rY.cj();
        this.rZ.setOnCompletionListener(this);
        this.rZ.setOnPreparedListener(this);
        this.rZ.setOnErrorListener(this);
    }

    private static void a(gv gv, String string) {
        do.a(gv, string, new HashMap<String, String>(1));
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(gv gv, String string, String string2) {
        boolean bl = string2 == null;
        int n = bl ? 2 : 3;
        HashMap<String, String> hashMap = new HashMap<String, String>(n);
        hashMap.put("what", string);
        if (!bl) {
            hashMap.put("extra", string2);
        }
        do.a(gv, "error", hashMap);
    }

    private static void a(gv gv, String string, String string2, String string3) {
        HashMap<String, String> hashMap = new HashMap<String, String>(2);
        hashMap.put(string2, string3);
        do.a(gv, string, hashMap);
    }

    private static void a(gv gv, String string, Map<String, String> map) {
        map.put("event", string);
        gv.a("onVideoEvent", map);
    }

    public void C(String string) {
        this.sb = string;
    }

    public void b(MotionEvent motionEvent) {
        this.rZ.dispatchTouchEvent(motionEvent);
    }

    public void ch() {
        if (!TextUtils.isEmpty((CharSequence)this.sb)) {
            this.rZ.setVideoPath(this.sb);
            return;
        }
        do.a(this.md, "no_src", null);
    }

    public void ci() {
        long l = this.rZ.getCurrentPosition();
        if (this.sa != l) {
            float f = (float)l / 1000.0f;
            do.a(this.md, "timeupdate", "time", String.valueOf(f));
            this.sa = l;
        }
    }

    public void destroy() {
        this.rY.cancel();
        this.rZ.stopPlayback();
    }

    @Override
    public void onCompletion(MediaPlayer mediaPlayer) {
        do.a(this.md, "ended");
    }

    @Override
    public boolean onError(MediaPlayer mediaPlayer, int n, int n2) {
        do.a(this.md, String.valueOf(n), String.valueOf(n2));
        return true;
    }

    @Override
    public void onPrepared(MediaPlayer mediaPlayer) {
        float f = (float)this.rZ.getDuration() / 1000.0f;
        do.a(this.md, "canplaythrough", "duration", String.valueOf(f));
    }

    public void pause() {
        this.rZ.pause();
    }

    public void play() {
        this.rZ.start();
    }

    public void q(boolean bl) {
        if (bl) {
            this.rZ.setMediaController(this.rX);
            return;
        }
        this.rX.hide();
        this.rZ.setMediaController(null);
    }

    public void seekTo(int n) {
        this.rZ.seekTo(n);
    }

    private static final class a {
        private final Runnable mk;
        private volatile boolean sc = false;

        public a(final do do_) {
            this.mk = new Runnable(){
                private final WeakReference<do> sd;

                @Override
                public void run() {
                    do do_2 = this.sd.get();
                    if (!(a.this.sc || do_2 == null)) {
                        do_2.ci();
                        a.this.cj();
                    }
                }
            };
        }

        public void cancel() {
            this.sc = true;
            gr.wC.removeCallbacks(this.mk);
        }

        public void cj() {
            gr.wC.postDelayed(this.mk, 250);
        }

    }

}

