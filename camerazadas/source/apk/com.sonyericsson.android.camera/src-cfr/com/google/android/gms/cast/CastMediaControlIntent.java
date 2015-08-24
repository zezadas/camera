/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.internal.ik;
import java.util.Collection;
import java.util.Locale;

public final class CastMediaControlIntent {
    public static final String ACTION_SYNC_STATUS = "com.google.android.gms.cast.ACTION_SYNC_STATUS";
    @Deprecated
    public static final String CATEGORY_CAST = "com.google.android.gms.cast.CATEGORY_CAST";
    public static final String DEFAULT_MEDIA_RECEIVER_APPLICATION_ID = "CC1AD845";
    public static final int ERROR_CODE_REQUEST_FAILED = 1;
    public static final int ERROR_CODE_SESSION_START_FAILED = 2;
    public static final int ERROR_CODE_TEMPORARILY_DISCONNECTED = 3;
    public static final String EXTRA_CAST_APPLICATION_ID = "com.google.android.gms.cast.EXTRA_CAST_APPLICATION_ID";
    public static final String EXTRA_CAST_LANGUAGE_CODE = "com.google.android.gms.cast.EXTRA_CAST_LANGUAGE_CODE";
    public static final String EXTRA_CAST_RELAUNCH_APPLICATION = "com.google.android.gms.cast.EXTRA_CAST_RELAUNCH_APPLICATION";
    public static final String EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS = "com.google.android.gms.cast.EXTRA_CAST_STOP_APPLICATION_WHEN_SESSION_ENDS";
    public static final String EXTRA_CUSTOM_DATA = "com.google.android.gms.cast.EXTRA_CUSTOM_DATA";
    public static final String EXTRA_DEBUG_LOGGING_ENABLED = "com.google.android.gms.cast.EXTRA_DEBUG_LOGGING_ENABLED";
    public static final String EXTRA_ERROR_CODE = "com.google.android.gms.cast.EXTRA_ERROR_CODE";

    private CastMediaControlIntent() {
    }

    private static String a(String object, String string, Collection<String> collection) throws IllegalArgumentException {
        object = new StringBuffer((String)object);
        if (string != null) {
            Object object2 = string.toUpperCase();
            if (!object2.matches("[A-F0-9]+")) {
                throw new IllegalArgumentException("Invalid application ID: " + string);
            }
            object.append("/").append((String)object2);
        }
        if (collection != null) {
            if (collection.isEmpty()) {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
            for (String string2 : collection) {
                if (!TextUtils.isEmpty((CharSequence)string2) && !string2.trim().equals("")) continue;
                throw new IllegalArgumentException("Namespaces must not be null or empty");
            }
            if (string == null) {
                object.append("/");
            }
            object.append("/").append(TextUtils.join((CharSequence)",", collection));
        }
        return object.toString();
    }

    public static String categoryForCast(String string) throws IllegalArgumentException {
        if (string == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        }
        return CastMediaControlIntent.a("com.google.android.gms.cast.CATEGORY_CAST", string, null);
    }

    public static String categoryForCast(String string, Collection<String> collection) {
        if (string == null) {
            throw new IllegalArgumentException("applicationId cannot be null");
        }
        if (collection == null) {
            throw new IllegalArgumentException("namespaces cannot be null");
        }
        return CastMediaControlIntent.a("com.google.android.gms.cast.CATEGORY_CAST", string, collection);
    }

    public static String categoryForCast(Collection<String> collection) throws IllegalArgumentException {
        if (collection == null) {
            throw new IllegalArgumentException("namespaces cannot be null");
        }
        return CastMediaControlIntent.a("com.google.android.gms.cast.CATEGORY_CAST", null, collection);
    }

    public static String categoryForRemotePlayback() {
        return CastMediaControlIntent.a("com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK", null, null);
    }

    public static String categoryForRemotePlayback(String string) throws IllegalArgumentException {
        if (TextUtils.isEmpty((CharSequence)string)) {
            throw new IllegalArgumentException("applicationId cannot be null or empty");
        }
        return CastMediaControlIntent.a("com.google.android.gms.cast.CATEGORY_CAST_REMOTE_PLAYBACK", string, null);
    }

    public static String languageTagForLocale(Locale locale) {
        return ik.b(locale);
    }
}

