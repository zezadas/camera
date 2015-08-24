/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.testevent;

import com.sonymobile.cameracommon.testevent.TestEventListener;

public class TestEventSender {
    private static TestEventListener sListener = TestEventSender.getBlankListener();

    private static TestEventListener getBlankListener() {
        return new TestEventListener(){

            @Override
            public void onCapturedFrameStored(long l) {
            }

            @Override
            public void onPictureTaken() {
            }
        };
    }

    public static void onCapturedFrameStored(long l) {
        sListener.onCapturedFrameStored(l);
    }

    public static void onPictureTaken() {
        sListener.onPictureTaken();
    }

    public static void setListener(TestEventListener testEventListener) {
        if (testEventListener == null) {
            sListener = TestEventSender.getBlankListener();
            return;
        }
        sListener = testEventListener;
    }

}

