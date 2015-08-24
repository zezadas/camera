/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.media.MediaRecorder;

public class ClassDefinitionChecker {
    private static final String TAG = ClassDefinitionChecker.class.getSimpleName();

    public static boolean isJpegEncoderSupported() {
        return sIsSupported;
    }

    public static boolean isMediaRecorderH265Supported() {
        return sIsSupported;
    }

    public static boolean isMediaRecorderPauseAndResumeSupported() {
        return sIsSupported;
    }

    public static boolean isSuperResolutionProcessorSupported() {
        return sIsSupported;
    }

    private static class JpegEncoderSupportStateHolder {
        private static final boolean sIsSupported = JpegEncoderSupportStateHolder.isSupported();

        private JpegEncoderSupportStateHolder() {
        }

        private static boolean isSupported() {
            try {
                Class.forName("com.sonymobile.imageprocessor.jpegencoder.JpegEncoder");
                return true;
            }
            catch (ClassNotFoundException var0) {
                return false;
            }
        }
    }

    private static class MediaRecorderH265SupportStateHolder {
        private static final boolean sIsSupported = MediaRecorderH265SupportStateHolder.isSupported();

        private MediaRecorderH265SupportStateHolder() {
        }

        private static boolean isSupported() {
            Field[] arrfield = MediaRecorder.VideoEncoder.class.getFields();
            int n = arrfield.length;
            for (int i = 0; i < n; ++i) {
                if (!"H265".equals(arrfield[i].getName())) continue;
                return true;
            }
            return false;
        }
    }

    private static class MediaRecorderPauseAndResumeSupportStateHolder {
        private static final boolean sIsSupported = MediaRecorderPauseAndResumeSupportStateHolder.isSupported();

        private MediaRecorderPauseAndResumeSupportStateHolder() {
        }

        private static boolean isSupported() {
            boolean bl = false;
            for (Method method : MediaRecorder.class.getMethods()) {
                boolean bl2 = bl;
                if (method.getName().equals("pause")) {
                    bl2 = bl;
                    if (method.getParameterTypes().length == 0) {
                        bl2 = true;
                    }
                }
                bl = bl2;
            }
            if (bl) {
                return true;
            }
            return false;
        }
    }

    private static class SuperResolutionProcessorSupportStateHolder {
        private static final boolean sIsSupported = SuperResolutionProcessorSupportStateHolder.isSupported();

        private SuperResolutionProcessorSupportStateHolder() {
        }

        private static boolean isSupported() {
            try {
                Class.forName("com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor");
                return true;
            }
            catch (ClassNotFoundException var0) {
                return false;
            }
        }
    }

}

