/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import java.io.File;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EachDirPathBuilder {
    private static final String CURRENT_DIR_FORMAT = "yyyyMMddHHmmssSSS";
    private static final int MAX_FILE_NAME = 999999;
    private static final int MAX_RETRY_TIMES_FOR_CREATING_CURRENT_DIR = 100;
    private static final int MIN_FILE_NAME = 1;
    private static final String TAG;
    private String mDirPath;
    private int mFileNo;

    static;

    public EachDirPathBuilder(String var1) throws IOException;

    private final String getCurrentDirName();

    private String getDcimDirectory(String var1);

    private void initDirectory(String var1, String var2) throws IOException;

    private final String searchDirectory(File var1);

    private final String searchSubDirectory(String var1, String var2);

    public String assignImageFilePath();
}

