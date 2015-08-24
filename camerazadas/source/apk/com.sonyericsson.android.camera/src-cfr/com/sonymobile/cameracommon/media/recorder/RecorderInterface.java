/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.recorder;

import android.hardware.Camera;
import com.sonymobile.cameracommon.media.recorder.RecorderException;
import com.sonymobile.cameracommon.media.recorder.RecorderParameters;

public interface RecorderInterface {
    public boolean awaitFinish();

    public long getRecordingTimeMillis();

    public boolean isPauseAndResumeSupported();

    public boolean isPaused();

    public boolean isRecordingOrPaused();

    public boolean isStopping();

    public void pause() throws RecorderException;

    public boolean prepare(Camera var1, RecorderParameters var2);

    public void resume() throws RecorderException;

    public void start() throws RecorderException;

    public void stop() throws RecorderException;

    public static interface RecorderListener {
        public void onRecordError(int var1, int var2);

        public void onRecordFinished(Result var1);

        public void onRecordPaused(Result var1);

        public void onRecordProgress(long var1);
    }

    public static enum Result {
        SUCCESS,
        FAIL,
        MAX_DURATION_REACHED,
        MAX_FILESIZE_REACHED;
        

        private Result() {
        }
    }

}

