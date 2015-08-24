/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class FileProvider
extends ContentProvider {
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PATH = "path";
    private static final String[] COLUMNS;
    private static final File DEVICE_ROOT;
    private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
    private static final String TAG_CACHE_PATH = "cache-path";
    private static final String TAG_EXTERNAL = "external-path";
    private static final String TAG_FILES_PATH = "files-path";
    private static final String TAG_ROOT_PATH = "root-path";
    private static HashMap<String, PathStrategy> sCache;
    private PathStrategy mStrategy;

    static;

    public FileProvider();

    private static /* varargs */ File buildPath(File var0, String ... var1);

    private static Object[] copyOf(Object[] var0, int var1);

    private static String[] copyOf(String[] var0, int var1);

    private static PathStrategy getPathStrategy(Context var0, String var1);

    public static Uri getUriForFile(Context var0, String var1, File var2);

    private static int modeToMode(String var0);

    private static PathStrategy parsePathStrategy(Context var0, String var1) throws IOException, XmlPullParserException;

    @Override
    public void attachInfo(Context var1, ProviderInfo var2);

    @Override
    public int delete(Uri var1, String var2, String[] var3);

    @Override
    public String getType(Uri var1);

    @Override
    public Uri insert(Uri var1, ContentValues var2);

    @Override
    public boolean onCreate();

    @Override
    public ParcelFileDescriptor openFile(Uri var1, String var2) throws FileNotFoundException;

    @Override
    public Cursor query(Uri var1, String[] var2, String var3, String[] var4, String var5);

    @Override
    public int update(Uri var1, ContentValues var2, String var3, String[] var4);

    static interface PathStrategy {
        public File getFileForUri(Uri var1);

        public Uri getUriForFile(File var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static class SimplePathStrategy
    implements PathStrategy {
        private final String mAuthority;
        private final HashMap<String, File> mRoots;

        public SimplePathStrategy(String var1);

        public void addRoot(String var1, File var2);

        @Override
        public File getFileForUri(Uri var1);

        @Override
        public Uri getUriForFile(File var1);
    }

}

