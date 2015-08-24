/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import java.util.EnumMap;
import java.util.Map;

public enum EventFilter {
    UNKNOWN,
    PREVIEWING,
    TOUCH_FOCUS_DRAGGING,
    SELF_TIMER_RUNNING,
    KEY_ZOOMING,
    PINCH_ZOOMING,
    TOUCH_CAPTURE_HOLDING;
    
    private static Map<EventFilter, EventFilter[]> sStateTransitionMap;

    static {
        sStateTransitionMap = new EnumMap<EventFilter, EventFilter[]>(EventFilter.class);
        sStateTransitionMap.put(UNKNOWN, new EventFilter[]{UNKNOWN, UNKNOWN, UNKNOWN, UNKNOWN, UNKNOWN, UNKNOWN, UNKNOWN, PREVIEWING, UNKNOWN, UNKNOWN, UNKNOWN});
        sStateTransitionMap.put(PREVIEWING, new EventFilter[]{SELF_TIMER_RUNNING, PREVIEWING, TOUCH_FOCUS_DRAGGING, PREVIEWING, KEY_ZOOMING, PREVIEWING, PINCH_ZOOMING, PREVIEWING, UNKNOWN, TOUCH_CAPTURE_HOLDING, PREVIEWING});
        sStateTransitionMap.put(TOUCH_FOCUS_DRAGGING, new EventFilter[]{TOUCH_FOCUS_DRAGGING, TOUCH_FOCUS_DRAGGING, TOUCH_FOCUS_DRAGGING, PREVIEWING, TOUCH_FOCUS_DRAGGING, TOUCH_FOCUS_DRAGGING, PINCH_ZOOMING, PREVIEWING, UNKNOWN, TOUCH_FOCUS_DRAGGING, TOUCH_FOCUS_DRAGGING});
        sStateTransitionMap.put(SELF_TIMER_RUNNING, new EventFilter[]{SELF_TIMER_RUNNING, PREVIEWING, SELF_TIMER_RUNNING, SELF_TIMER_RUNNING, SELF_TIMER_RUNNING, SELF_TIMER_RUNNING, SELF_TIMER_RUNNING, PREVIEWING, UNKNOWN, SELF_TIMER_RUNNING, SELF_TIMER_RUNNING});
        sStateTransitionMap.put(KEY_ZOOMING, new EventFilter[]{KEY_ZOOMING, KEY_ZOOMING, KEY_ZOOMING, KEY_ZOOMING, KEY_ZOOMING, PREVIEWING, KEY_ZOOMING, PREVIEWING, UNKNOWN, KEY_ZOOMING, KEY_ZOOMING});
        sStateTransitionMap.put(PINCH_ZOOMING, new EventFilter[]{PINCH_ZOOMING, PINCH_ZOOMING, PINCH_ZOOMING, PINCH_ZOOMING, PINCH_ZOOMING, PREVIEWING, PINCH_ZOOMING, PREVIEWING, UNKNOWN, PINCH_ZOOMING, PINCH_ZOOMING});
        sStateTransitionMap.put(TOUCH_CAPTURE_HOLDING, new EventFilter[]{TOUCH_CAPTURE_HOLDING, TOUCH_CAPTURE_HOLDING, TOUCH_CAPTURE_HOLDING, TOUCH_CAPTURE_HOLDING, TOUCH_CAPTURE_HOLDING, TOUCH_CAPTURE_HOLDING, PINCH_ZOOMING, PREVIEWING, UNKNOWN, TOUCH_CAPTURE_HOLDING, PREVIEWING});
    }

    private EventFilter() {
    }

    public static EventFilter getEventFilter(EventFilter eventFilter, int n) {
        return sStateTransitionMap.get((Object)eventFilter)[n];
    }

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
    }

}

