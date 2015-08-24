/*
 * Decompiled with CFR 0_100.
 */
package com.google.android.gms.cast;

import android.os.Bundle;
import com.google.android.gms.common.images.WebImage;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MediaMetadata {
    private static final String[] Fn;
    private static final a Fo;
    public static final String KEY_ALBUM_ARTIST = "com.google.android.gms.cast.metadata.ALBUM_ARTIST";
    public static final String KEY_ALBUM_TITLE = "com.google.android.gms.cast.metadata.ALBUM_TITLE";
    public static final String KEY_ARTIST = "com.google.android.gms.cast.metadata.ARTIST";
    public static final String KEY_BROADCAST_DATE = "com.google.android.gms.cast.metadata.BROADCAST_DATE";
    public static final String KEY_COMPOSER = "com.google.android.gms.cast.metadata.COMPOSER";
    public static final String KEY_CREATION_DATE = "com.google.android.gms.cast.metadata.CREATION_DATE";
    public static final String KEY_DISC_NUMBER = "com.google.android.gms.cast.metadata.DISC_NUMBER";
    public static final String KEY_EPISODE_NUMBER = "com.google.android.gms.cast.metadata.EPISODE_NUMBER";
    public static final String KEY_HEIGHT = "com.google.android.gms.cast.metadata.HEIGHT";
    public static final String KEY_LOCATION_LATITUDE = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE";
    public static final String KEY_LOCATION_LONGITUDE = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE";
    public static final String KEY_LOCATION_NAME = "com.google.android.gms.cast.metadata.LOCATION_NAME";
    public static final String KEY_RELEASE_DATE = "com.google.android.gms.cast.metadata.RELEASE_DATE";
    public static final String KEY_SEASON_NUMBER = "com.google.android.gms.cast.metadata.SEASON_NUMBER";
    public static final String KEY_SERIES_TITLE = "com.google.android.gms.cast.metadata.SERIES_TITLE";
    public static final String KEY_STUDIO = "com.google.android.gms.cast.metadata.STUDIO";
    public static final String KEY_SUBTITLE = "com.google.android.gms.cast.metadata.SUBTITLE";
    public static final String KEY_TITLE = "com.google.android.gms.cast.metadata.TITLE";
    public static final String KEY_TRACK_NUMBER = "com.google.android.gms.cast.metadata.TRACK_NUMBER";
    public static final String KEY_WIDTH = "com.google.android.gms.cast.metadata.WIDTH";
    public static final int MEDIA_TYPE_GENERIC = 0;
    public static final int MEDIA_TYPE_MOVIE = 1;
    public static final int MEDIA_TYPE_MUSIC_TRACK = 3;
    public static final int MEDIA_TYPE_PHOTO = 4;
    public static final int MEDIA_TYPE_TV_SHOW = 2;
    public static final int MEDIA_TYPE_USER = 100;
    private final List<WebImage> EA;
    private final Bundle Fp;
    private int Fq;

    static;

    public MediaMetadata();

    public MediaMetadata(int var1);

    private /* varargs */ void a(JSONObject var1, String ... var2);

    private boolean a(Bundle var1, Bundle var2);

    private /* varargs */ void b(JSONObject var1, String ... var2);

    private void f(String var1, int var2) throws IllegalArgumentException;

    public void addImage(WebImage var1);

    public JSONObject bK();

    public void c(JSONObject var1);

    public void clear();

    public void clearImages();

    public boolean containsKey(String var1);

    public boolean equals(Object var1);

    public Calendar getDate(String var1);

    public String getDateAsString(String var1);

    public double getDouble(String var1);

    public List<WebImage> getImages();

    public int getInt(String var1);

    public int getMediaType();

    public String getString(String var1);

    public boolean hasImages();

    public int hashCode();

    public Set<String> keySet();

    public void putDate(String var1, Calendar var2);

    public void putDouble(String var1, double var2);

    public void putInt(String var1, int var2);

    public void putString(String var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class a {
        private final Map<String, String> Fr;
        private final Map<String, String> Fs;
        private final Map<String, Integer> Ft;

        public a();

        public a a(String var1, String var2, int var3);

        public String aA(String var1);

        public int aB(String var1);

        public String az(String var1);
    }

}

