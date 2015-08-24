/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.sonyericsson.android.camera.configuration.MmsOptions;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ConversationReader {
    private static final int INVALID_INT = -1;
    private static final String TAG = "ConversationReader";
    private MmsOptions mMmsOptions;

    public ConversationReader();

    public MmsOptions getMmsOptions();

    public void readConversationProvider(Context var1);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class MmsTable
    extends Table {
        private static final String KEY_MMS_MAX_SIZE = "mms_max_size";
        private static final String URI = "content://com.sonyericsson.conversations/settings";

        MmsTable(ContentResolver var1);

        @Override
        void readFromCursor(Cursor var1, MmsOptions.Builder var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class MmsVideoTable
    extends Table {
        private static final String KEY_MMS_BIT_RATE = "mms_video_bit_rate_in_kbps";
        private static final String KEY_MMS_CODEC = "mms_video_codec";
        private static final String KEY_MMS_MAX_DURATION = "mms_video_max_duration_in_seconds";
        private static final String KEY_MMS_MIME_TYPE = "mms_video_codec_mime_type";
        private static final String KEY_MMS_RESOLUTIONS = "mms_video_resolution";
        private static final String URI = "content://com.sonyericsson.conversations/settings/video";

        MmsVideoTable(ContentResolver var1);

        @Override
        void readFromCursor(Cursor var1, MmsOptions.Builder var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static abstract class Table {
        private final ContentResolver mResolver;
        private final String mUri;

        Table(String var1, ContentResolver var2);

        static int getInt(Cursor var0, String var1, int var2);

        static long getLong(Cursor var0, String var1, long var2);

        static String getString(Cursor var0, String var1);

        void read(MmsOptions.Builder var1);

        abstract void readFromCursor(Cursor var1, MmsOptions.Builder var2);
    }

}

