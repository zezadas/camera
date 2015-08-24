/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.content.Context;
import android.content.DialogInterface;
import android.media.AudioManager;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import java.util.concurrent.Executors;

public class AudioResourceChecker {
    private static final String MICROPHONE_ACTIVE_KEY = "is_microphone_active";
    private static final String MICROPHONE_ACTIVE_VALUE = "is_microphone_active=1";
    private static final String TAG = AudioResourceChecker.class.getSimpleName();

    public static void checkAudioResourceAndShowErrorDialogIfNecessary(final BaseActivity baseActivity) {
        Executors.newSingleThreadExecutor().execute(new Runnable(){

            @Override
            public void run() {
                if (!AudioResourceChecker.isAudioResourceAvailable(baseActivity)) {
                    baseActivity.runOnUiThread(new Runnable(){

                        @Override
                        public void run() {
                            baseActivity.getMessagePopup().showOk(R.string.cam_strings_error_video_rec_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, null, null);
                        }
                    });
                }
            }

        });
    }

    public static boolean isAudioResourceAvailable(BaseActivity baseActivity) {
        if (AudioResourceChecker.isAudioResourceAvailableCheckImmediately(baseActivity)) {
            return AudioResourceChecker.isAudioResourceAvailableCheckWithAudioRecord();
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean isAudioResourceAvailableCheckImmediately(Context context) {
        synchronized (AudioResourceChecker.class) {
            boolean bl = "is_microphone_active=1".equals(((AudioManager)context.getSystemService("audio")).getParameters("is_microphone_active"));
            if (!bl) return true;
            return false;
        }
    }

    /*
     * Exception decompiling
     */
    private static boolean isAudioResourceAvailableCheckWithAudioRecord() {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

}

