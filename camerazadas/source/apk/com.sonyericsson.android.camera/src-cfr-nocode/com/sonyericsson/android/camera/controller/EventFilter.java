/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import java.util.Map;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public final class EventFilter
extends Enum<EventFilter> {
    private static final /* synthetic */ EventFilter[] $VALUES;
    public static final /* enum */ EventFilter KEY_ZOOMING;
    public static final /* enum */ EventFilter PINCH_ZOOMING;
    public static final /* enum */ EventFilter PREVIEWING;
    public static final /* enum */ EventFilter SELF_TIMER_RUNNING;
    public static final /* enum */ EventFilter TOUCH_CAPTURE_HOLDING;
    public static final /* enum */ EventFilter TOUCH_FOCUS_DRAGGING;
    public static final /* enum */ EventFilter UNKNOWN;
    private static Map<EventFilter, EventFilter[]> sStateTransitionMap;

    static;

    private EventFilter();

    public static EventFilter getEventFilter(EventFilter var0, int var1);

    public static EventFilter valueOf(String var0);

    public static EventFilter[] values();

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class EventFilterMessage {
        public static final int KEY_ZOOM_START = 4;
        public static final int PINCH_ZOOM_START = 6;
        public static final int RESET = 7;
        public static final int SELFTIMER_FINISH = 1;
        public static final int SELFTIMER_START = 0;
        public static final int STOP = 8;
        public static final int TOUCH_CAPTURE_FINISH = 10;
        public static final int TOUCH_CAPTURE_START = 9;
        public static final int TOUCH_FOCUS_FINISH = 3;
        public static final int TOUCH_FOCUS_START = 2;
        public static final int ZOOM_FINISH = 5;

        public EventFilterMessage();
    }

}

