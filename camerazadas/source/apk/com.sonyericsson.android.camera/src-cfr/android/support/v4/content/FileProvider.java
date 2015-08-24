/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

public class FileProvider
extends ContentProvider {
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PATH = "path";
    private static final String[] COLUMNS = new String[]{"_display_name", "_size"};
    private static final File DEVICE_ROOT = new File("/");
    private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
    private static final String TAG_CACHE_PATH = "cache-path";
    private static final String TAG_EXTERNAL = "external-path";
    private static final String TAG_FILES_PATH = "files-path";
    private static final String TAG_ROOT_PATH = "root-path";
    private static HashMap<String, PathStrategy> sCache = new HashMap();
    private PathStrategy mStrategy;

    private static /* varargs */ File buildPath(File file, String ... arrstring) {
        for (String string : arrstring) {
            if (string == null) continue;
            file = new File(file, string);
        }
        return file;
    }

    private static Object[] copyOf(Object[] arrobject, int n) {
        Object[] arrobject2 = new Object[n];
        System.arraycopy(arrobject, 0, arrobject2, 0, n);
        return arrobject2;
    }

    private static String[] copyOf(String[] arrstring, int n) {
        String[] arrstring2 = new String[n];
        System.arraycopy(arrstring, 0, arrstring2, 0, n);
        return arrstring2;
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private static PathStrategy getPathStrategy(Context context, String string) {
        PathStrategy pathStrategy;
        HashMap<String, PathStrategy> hashMap = sCache;
        // MONITORENTER : hashMap
        PathStrategy pathStrategy2 = pathStrategy = sCache.get(string);
        if (pathStrategy == null) {
            pathStrategy2 = FileProvider.parsePathStrategy(context, string);
            sCache.put(string, pathStrategy2);
        }
        // MONITOREXIT : hashMap
        return pathStrategy2;
        catch (IOException iOException) {
            throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", iOException);
        }
        catch (XmlPullParserException xmlPullParserException) {
            throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", xmlPullParserException);
        }
    }

    public static Uri getUriForFile(Context context, String string, File file) {
        return FileProvider.getPathStrategy(context, string).getUriForFile(file);
    }

    private static int modeToMode(String string) {
        if ("r".equals(string)) {
            return 268435456;
        }
        if ("w".equals(string) || "wt".equals(string)) {
            return 738197504;
        }
        if ("wa".equals(string)) {
            return 704643072;
        }
        if ("rw".equals(string)) {
            return 939524096;
        }
        if ("rwt".equals(string)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + string);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static PathStrategy parsePathStrategy(Context context, String object) throws IOException, XmlPullParserException {
        SimplePathStrategy simplePathStrategy = new SimplePathStrategy((String)object);
        XmlResourceParser xmlResourceParser = context.getPackageManager().resolveContentProvider((String)object, 128).loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (xmlResourceParser == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        int n;
        while ((n = xmlResourceParser.next()) != 1) {
            if (n != 2) continue;
            String string = xmlResourceParser.getName();
            String string2 = xmlResourceParser.getAttributeValue(null, "name");
            String string3 = xmlResourceParser.getAttributeValue(null, "path");
            object = null;
            if ("root-path".equals(string)) {
                object = FileProvider.buildPath(DEVICE_ROOT, string3);
            } else if ("files-path".equals(string)) {
                object = FileProvider.buildPath(context.getFilesDir(), string3);
            } else if ("cache-path".equals(string)) {
                object = FileProvider.buildPath(context.getCacheDir(), string3);
            } else if ("external-path".equals(string)) {
                object = FileProvider.buildPath(Environment.getExternalStorageDirectory(), string3);
            }
            if (object == null) continue;
            simplePathStrategy.addRoot(string2, (File)object);
        }
        return simplePathStrategy;
    }

    @Override
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        this.mStrategy = FileProvider.getPathStrategy(context, providerInfo.authority);
    }

    @Override
    public int delete(Uri uri, String string, String[] arrstring) {
        if (this.mStrategy.getFileForUri(uri).delete()) {
            return 1;
        }
        return 0;
    }

    @Override
    public String getType(Uri object) {
        int n = (object = this.mStrategy.getFileForUri((Uri)object)).getName().lastIndexOf(46);
        if (n >= 0) {
            object = object.getName().substring(n + 1);
            object = MimeTypeMap.getSingleton().getMimeTypeFromExtension((String)object);
            if (object != null) {
                return object;
            }
        }
        return "application/octet-stream";
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override
    public boolean onCreate() {
        return true;
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String string) throws FileNotFoundException {
        return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(uri), FileProvider.modeToMode(string));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public Cursor query(Uri object, String[] arrstring, String object2, String[] arrstring2, String string) {
        object2 = this.mStrategy.getFileForUri((Uri)object);
        object = arrstring;
        if (arrstring == null) {
            object = COLUMNS;
        }
        arrstring2 = new String[object.length];
        arrstring = new Object[object.length];
        int n = object.length;
        int n2 = 0;
        int n3 = 0;
        do {
            int n4;
            if (n2 >= n) {
                object = FileProvider.copyOf(arrstring2, n3);
                arrstring = FileProvider.copyOf((Object[])arrstring, n3);
                object = new MatrixCursor((String[])object, 1);
                object.addRow(arrstring);
                return object;
            }
            string = object[n2];
            if ("_display_name".equals(string)) {
                arrstring2[n3] = "_display_name";
                n4 = n3 + 1;
                arrstring[n3] = object2.getName();
                n3 = n4;
            } else if ("_size".equals(string)) {
                arrstring2[n3] = "_size";
                n4 = n3 + 1;
                arrstring[n3] = object2.length();
                n3 = n4;
            }
            ++n2;
        } while (true);
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String string, String[] arrstring) {
        throw new UnsupportedOperationException("No external updates");
    }

    static interface PathStrategy {
        public File getFileForUri(Uri var1);

        public Uri getUriForFile(File var1);
    }

    static class SimplePathStrategy
    implements PathStrategy {
        private final String mAuthority;
        private final HashMap<String, File> mRoots = new HashMap();

        public SimplePathStrategy(String string) {
            this.mAuthority = string;
        }

        public void addRoot(String string, File file) {
            if (TextUtils.isEmpty((CharSequence)string)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                File file2 = file.getCanonicalFile();
                this.mRoots.put(string, file2);
                return;
            }
            catch (IOException var1_2) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file, var1_2);
            }
        }

        @Override
        public File getFileForUri(Uri comparable) {
            Object object = comparable.getEncodedPath();
            int n = object.indexOf(47, 1);
            Object object2 = Uri.decode(object.substring(1, n));
            object = Uri.decode(object.substring(n + 1));
            if ((object2 = this.mRoots.get(object2)) == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + comparable);
            }
            comparable = new File((File)object2, (String)object);
            try {
                object = comparable.getCanonicalFile();
                if (!object.getPath().startsWith(object2.getPath())) {
                    throw new SecurityException("Resolved path jumped beyond configured root");
                }
            }
            catch (IOException var3_5) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + comparable);
            }
            return object;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public Uri getUriForFile(File var1_1) {
            try {
                var3_2 = var1_1.getCanonicalPath();
                var1_1 = null;
            }
            catch (IOException var2_5) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + var1_1);
            }
            for (Map.Entry<String, File> var2_4 : this.mRoots.entrySet()) {
                var5_10 = var2_4.getValue().getPath();
                if (!var3_2.startsWith(var5_10) || var1_1 != null && var5_10.length() <= var1_1.getValue().getPath().length()) continue;
                var1_1 = var2_4;
            }
            ** GOTO lbl12
lbl12: // 1 sources:
            if (var1_1 == null) {
                throw new IllegalArgumentException("Failed to find configured root that contains " + var3_2);
            }
            var2_6 = ((File)var1_1.getValue()).getPath();
            if (var2_6.endsWith("/")) {
                var2_7 = var3_2.substring(var2_6.length());
            } else {
                var2_9 = var3_2.substring(var2_6.length() + 1);
            }
            var1_1 = Uri.encode(var1_1.getKey()) + '/' + Uri.encode((String)var2_8, "/");
            return new Uri.Builder().scheme("content").authority(this.mAuthority).encodedPath((String)var1_1).build();
        }
    }

}

