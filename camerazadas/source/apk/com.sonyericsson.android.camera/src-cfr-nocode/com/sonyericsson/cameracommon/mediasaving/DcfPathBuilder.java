/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.content.ContentResolver;
import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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
    private static DcfPathBuilder sInstance;
    private DcfImageDirNameFilter mDirNameFilter;
    private Integer mDirNo;
    private DcfImageFileNameFilter mFileNameFilter;
    private Integer mFileNo;
    private boolean mIsScanned;
    private boolean mIsScanning;
    private Thread mPathScanner;
    private String mRootDirectory;

    static;

    private DcfPathBuilder();

    static /* synthetic */ boolean access$202(DcfPathBuilder var0, boolean var1);

    static /* synthetic */ boolean access$302(DcfPathBuilder var0, boolean var1);

    private String assignImageFilePath(int var1, ContentResolver var2) throws IOException;

    private String createImageDir();

    public static DcfPathBuilder getInstance();

    private boolean isExistCurrentImageDir();

    private boolean isMediaScannerScanning(ContentResolver var1);

    private String searchImageDir(String var1);

    private void searchImageNo(String var1);

    private void startScan();

    public void cancel();

    protected boolean checkAndCreateDirectory(String var1, boolean var2);

    public String getDcimDirectory();

    public String getDcimDirectory(String var1);

    public String getDestinationToSave();

    public String getPhotoPath(Context var1);

    public String getVideoPath(Context var1, String var2);

    public boolean isAlreadyLastFileExist(String var1);

    public void resetStatus();

    public void returnUnusedFile();

    public final String search();

    public void setDestinationToSave(String var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DcfImageDirNameFilter
    implements FilenameFilter {
        private String mDirName;
        private int mDirNo;

        private DcfImageDirNameFilter();

        /* synthetic */ DcfImageDirNameFilter( var1);

        static /* synthetic */ int access$400(DcfImageDirNameFilter var0);

        static /* synthetic */ int access$402(DcfImageDirNameFilter var0, int var1);

        static /* synthetic */ String access$500(DcfImageDirNameFilter var0);

        @Override
        public boolean accept(File var1, String var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class DcfImageFileNameFilter
    implements FilenameFilter {
        private int mFileNo;

        private DcfImageFileNameFilter();

        /* synthetic */ DcfImageFileNameFilter( var1);

        static /* synthetic */ int access$600(DcfImageFileNameFilter var0);

        static /* synthetic */ int access$602(DcfImageFileNameFilter var0, int var1);

        @Override
        public boolean accept(File var1, String var2);
    }

}

