/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.configuration;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.sonyericsson.android.camera.configuration.MmsOptions;
import com.sonyericsson.cameracommon.utility.CameraLogger;

public class ConversationReader {
    private static final int INVALID_INT = -1;
    private static final String TAG = "ConversationReader";
    private MmsOptions mMmsOptions;

    public MmsOptions getMmsOptions() {
        return this.mMmsOptions;
    }

    public void readConversationProvider(Context object) {
        MmsTable mmsTable = new MmsTable(object.getContentResolver());
        object = new MmsVideoTable(object.getContentResolver());
        MmsOptions.Builder builder = new MmsOptions.Builder();
        mmsTable.read(builder);
        object.read(builder);
        this.mMmsOptions = builder.build();
    }

    private static class MmsTable
    extends Table {
        private static final String KEY_MMS_MAX_SIZE = "mms_max_size";
        private static final String URI = "content://com.sonyericsson.conversations/settings";

        MmsTable(ContentResolver contentResolver) {
            super("content://com.sonyericsson.conversations/settings", contentResolver);
        }

        @Override
        void readFromCursor(Cursor cursor, MmsOptions.Builder builder) {
            builder.maxFileSizeBytes(MmsTable.getLong(cursor, "mms_max_size", 1024));
        }
    }

    private static class MmsVideoTable
    extends Table {
        private static final String KEY_MMS_BIT_RATE = "mms_video_bit_rate_in_kbps";
        private static final String KEY_MMS_CODEC = "mms_video_codec";
        private static final String KEY_MMS_MAX_DURATION = "mms_video_max_duration_in_seconds";
        private static final String KEY_MMS_MIME_TYPE = "mms_video_codec_mime_type";
        private static final String KEY_MMS_RESOLUTIONS = "mms_video_resolution";
        private static final String URI = "content://com.sonyericsson.conversations/settings/video";

        MmsVideoTable(ContentResolver contentResolver) {
            super("content://com.sonyericsson.conversations/settings/video", contentResolver);
        }

        @Override
        void readFromCursor(Cursor cursor, MmsOptions.Builder builder) {
            builder.maxDuration(MmsVideoTable.getInt(cursor, "mms_video_max_duration_in_seconds", 1));
            builder.bitRate(MmsVideoTable.getInt(cursor, "mms_video_bit_rate_in_kbps", 1024));
            builder.codec(MmsVideoTable.getString(cursor, "mms_video_codec"));
            builder.mimeType(MmsVideoTable.getString(cursor, "mms_video_codec_mime_type"));
            builder.recommendSizeList(MmsVideoTable.getString(cursor, "mms_video_resolution"));
        }
    }

    private static abstract class Table {
        private final ContentResolver mResolver;
        private final String mUri;

        Table(String string, ContentResolver contentResolver) {
            this.mUri = string;
            this.mResolver = contentResolver;
        }

        /*
         * Enabled aggressive block sorting
         */
        static int getInt(Cursor cursor, String string, int n) {
            int n2 = cursor.getColumnIndex(string);
            if (n2 < 0 || (n2 = cursor.getInt(n2)) == -1) {
                return -1;
            }
            return n2 * n;
        }

        /*
         * Enabled aggressive block sorting
         */
        static long getLong(Cursor cursor, String string, long l) {
            long l2;
            int n = cursor.getColumnIndex(string);
            if (n < 0 || (l2 = cursor.getLong(n)) == -1) {
                return -1;
            }
            return l2 * l;
        }

        static String getString(Cursor cursor, String string) {
            int n = cursor.getColumnIndex(string);
            if (n < 0) {
                return null;
            }
            return cursor.getString(n);
        }

        /*
         * Loose catch block
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        void read(MmsOptions.Builder builder) {
            Object object2;
            Object object;
            Object object3;
            Object object4;
            block8 : {
                object2 = Uri.parse(this.mUri);
                object4 = null;
                object = null;
                object3 = null;
                object2 = this.mResolver.query((Uri)object2, null, null, null, null);
                if (object2 != null) break block8;
                if (object2 == null) return;
                object2.close();
                return;
            }
            object3 = object2;
            object4 = object2;
            object = object2;
            try {
                if (object2.moveToFirst()) {
                    object3 = object2;
                    object4 = object2;
                    object = object2;
                    this.readFromCursor((Cursor)object2, builder);
                }
                if (object2 == null) return;
            }
            catch (SecurityException var1_2) {
                object = object3;
                CameraLogger.e("ConversationReader", "readMmsSettings: An exception occurs in reading provider of conversation application.", var1_2);
                if (object3 == null) return;
                object3.close();
                return;
                {
                    catch (Throwable throwable) {
                        if (object == null) throw throwable;
                        object.close();
                        throw throwable;
                    }
                }
                catch (IllegalStateException illegalStateException) {
                    object = object4;
                    CameraLogger.e("ConversationReader", "readMmsSettings: An exception occurs in reading provider of conversation application.", illegalStateException);
                    if (object4 == null) return;
                    object4.close();
                    return;
                }
            }
            object2.close();
            return;
        }

        abstract void readFromCursor(Cursor var1, MmsOptions.Builder var2);
    }

}

