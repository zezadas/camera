/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Locale;

public class DcfPathBuilder {
    public static final String DCF_DIR_NAME_FREE_WORD = "ANDRO";
    public static final String DCF_FILE_NAME_FREE_WORD_MOVIE = "MOV_";
    public static final String DCF_FILE_NAME_FREE_WORD_PICTURE = "DSC_";
    public static final int LENGTH_OF_DIR_NAME = 8;
    public static final int LENGTH_OF_FILE_NAME = 12;
    public static final int MAX_DIR_NAME = 999;
    public static final int MAX_FILE_NAME = 9999;
    public static final int MIN_DIR_NAME = 100;
    public static final int MIN_FILE_NAME = 1;
    private static final int SCAN_WAIT_TIME = 5000;
    private static final int SCAN_WAIT_TIME_FOR_MEDIASCAN = 60000;
    private static final String TAG = "DcfPathBuilder";
    public static final int TYPE_PICTURE = 0;
    public static final int TYPE_VIDEO = 1;
    public static final String VOLUME_EXTERNAL = "external";
    private static DcfPathBuilder sInstance = new DcfPathBuilder();
    private DcfImageDirNameFilter mDirNameFilter = new DcfImageDirNameFilter();
    private Integer mDirNo = null;
    private DcfImageFileNameFilter mFileNameFilter = new DcfImageFileNameFilter();
    private Integer mFileNo = null;
    private boolean mIsScanned = false;
    private boolean mIsScanning = false;
    private Thread mPathScanner = null;
    private String mRootDirectory = Environment.getExternalStorageDirectory().getPath();

    private DcfPathBuilder() {
    }

    /*
     * Exception decompiling
     */
    private String assignImageFilePath(int var1_1, ContentResolver var2_2) throws IOException {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:141)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:380)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     */
    private String createImageDir() {
        File file;
        Integer n = this.mDirNo;
        this.mDirNo = this.mDirNo + 1;
        if (!(this.mDirNo <= 999 && (file = new File(this.getDcimDirectory(), String.format(Locale.US, "%03d", this.mDirNo) + "ANDRO")).mkdirs())) {
            return null;
        }
        this.mFileNo = 0;
        return file.getAbsolutePath();
    }

    public static DcfPathBuilder getInstance() {
        return sInstance;
    }

    private boolean isExistCurrentImageDir() {
        return new File(this.getDcimDirectory(), String.format(Locale.US, "%03d", this.mDirNo) + "ANDRO").isDirectory();
    }

    private boolean isMediaScannerScanning(ContentResolver object) {
        boolean bl;
        block4 : {
            bl = false;
            boolean bl2 = false;
            if ((object = object.query(MediaStore.getMediaScannerUri(), new String[]{"volume"}, null, null, null)) != null) {
                bl = bl2;
                if (object.getCount() != 1) break block4;
                object.moveToFirst();
                bl = "external".equals(object.getString(0));
            }
        }
        return bl;
        finally {
            object.close();
        }
    }

    private String searchImageDir(String string) {
        Object object = new String[](string);
        this.mDirNameFilter.mDirNo = 100;
        object = object.list(this.mDirNameFilter);
        if (object == null || object.length == 0) {
            this.mDirNo = 99;
            return this.createImageDir();
        }
        this.mDirNo = this.mDirNameFilter.mDirNo;
        object = this.mDirNameFilter.mDirName;
        this.searchImageNo(string + "/" + new File((String)object).getName());
        return object;
    }

    private void searchImageNo(String arrstring) {
        arrstring = new File((String)arrstring);
        this.mFileNameFilter.mFileNo = 1;
        arrstring = arrstring.list(this.mFileNameFilter);
        if (arrstring == null || arrstring.length == 0) {
            this.mFileNo = 0;
            return;
        }
        this.mFileNo = this.mFileNameFilter.mFileNo;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void startScan() {
        synchronized (this) {
            block6 : {
                boolean bl = this.mIsScanning;
                if (!bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            this.mIsScanned = false;
            this.mPathScanner = new Thread(new Runnable(){

                /*
                 * Enabled aggressive block sorting
                 */
                @Override
                public void run() {
                    DcfPathBuilder.this.mIsScanning = true;
                    if (DcfPathBuilder.this.search() != null) {
                        DcfPathBuilder.this.mIsScanned = true;
                    } else {
                        DcfPathBuilder.this.mIsScanned = true;
                    }
                    DcfPathBuilder.this.mIsScanning = false;
                }
            }, "DCF Path Builder");
            this.mPathScanner.start();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void cancel() {
        synchronized (this) {
            boolean bl = this.mIsScanning;
            if (bl) {
                this.mIsScanned = false;
                this.mIsScanning = false;
                this.mPathScanner.interrupt();
                try {
                    this.mPathScanner.join();
                }
                catch (InterruptedException var2_2) {
                    CameraLogger.e("DcfPathBuilder", "Cancel failed.", var2_2);
                }
                finally {
                    this.mPathScanner = null;
                }
            }
            return;
        }
    }

    protected boolean checkAndCreateDirectory(String object, boolean bl) {
        object = new File((String)object);
        boolean bl2 = true;
        boolean bl3 = true;
        if (!object.isDirectory()) {
            if (!object.mkdirs()) {
                bl3 = false;
            }
            bl2 = bl3;
            if (bl) {
                this.resetStatus();
                this.startScan();
                bl2 = bl3;
            }
        }
        if (!this.isExistCurrentImageDir() && bl) {
            this.resetStatus();
            this.startScan();
        }
        return bl2;
    }

    public String getDcimDirectory() {
        return this.mRootDirectory + "/" + Environment.DIRECTORY_DCIM;
    }

    public String getDcimDirectory(String string) {
        return string + "/" + Environment.DIRECTORY_DCIM;
    }

    public String getDestinationToSave() {
        return this.mRootDirectory;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public String getPhotoPath(Context object) {
        Object object2 = null;
        try {
            object = this.assignImageFilePath(0, object.getContentResolver());
        }
        catch (IOException var1_2) {
            object = object2;
        }
        object2 = object;
        if (object == null) return object2;
        return (String)object + ".JPG";
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public String getVideoPath(Context object, String string) {
        String string2 = "/dev/null";
        try {
            object = this.assignImageFilePath(1, object.getContentResolver());
        }
        catch (IOException var1_2) {
            object = string2;
        }
        if (object == null) {
            return "/dev/null";
        }
        return (String)object + string;
    }

    public boolean isAlreadyLastFileExist(String string) {
        String string2 = string + "/" + String.format(Locale.US, "%03d", 999) + "ANDRO";
        if (new File(string2 + "/DSC_" + String.format(Locale.US, "%04d", 9999) + ".JPG").isFile()) {
            return true;
        }
        string = string + "/" + String.format(Locale.US, "%03d", 999) + "ANDRO";
        if (new File((string = new StringBuilder().append(string).append("/MOV_").append(String.format(Locale.US, "%04d", 9999)).toString()) + ".mp4").isFile()) {
            return true;
        }
        if (new File(string + ".3gp").isFile()) {
            return true;
        }
        return false;
    }

    public void resetStatus() {
        synchronized (this) {
            this.mIsScanned = false;
            this.mPathScanner = null;
            return;
        }
    }

    public void returnUnusedFile() {
        Integer n = this.mFileNo;
        this.mFileNo = this.mFileNo - 1;
        if (this.mFileNo < 0) {
            this.mFileNo = 0;
        }
    }

    public final String search() {
        if (this.checkAndCreateDirectory(this.getDcimDirectory(), false)) {
            return this.searchImageDir(this.getDcimDirectory());
        }
        return null;
    }

    public void setDestinationToSave(String string) {
        this.mRootDirectory = string;
        this.resetStatus();
    }

    private static class DcfImageDirNameFilter
    implements FilenameFilter {
        private String mDirName;
        private int mDirNo;

        private DcfImageDirNameFilter() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public boolean accept(File file, String string) {
            int n;
            try {
                if (string.length() != 8 || (n = Integer.parseInt((String)string.subSequence(0, 3))) < this.mDirNo || 100 > n || n > 999) return false;
            }
            catch (NumberFormatException var1_2) {
                return false;
            }
            if (!(String.format(Locale.US, "%03d", n) + "ANDRO").equalsIgnoreCase(string) || !(file = new File(file, string)).isDirectory()) return false;
            this.mDirNo = n;
            this.mDirName = file.getAbsolutePath();
            return true;
        }
    }

    private static class DcfImageFileNameFilter
    implements FilenameFilter {
        private int mFileNo;

        private DcfImageFileNameFilter() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        @Override
        public boolean accept(File file, String string) {
            int n;
            try {
                if (string.length() != 12 || (n = Integer.parseInt((String)string.subSequence(4, 8))) < this.mFileNo || 1 > n || n > 9999) return false;
            }
            catch (NumberFormatException var1_2) {
                return false;
            }
            this.mFileNo = n;
            return true;
        }
    }

}

