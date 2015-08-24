/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving;

import android.os.Environment;
import com.sonyericsson.cameracommon.mediasaving.DcfPathBuilder;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class EachDirPathBuilder {
    private static final String CURRENT_DIR_FORMAT = "yyyyMMddHHmmssSSS";
    private static final int MAX_FILE_NAME = 999999;
    private static final int MAX_RETRY_TIMES_FOR_CREATING_CURRENT_DIR = 100;
    private static final int MIN_FILE_NAME = 1;
    private static final String TAG = EachDirPathBuilder.class.getSimpleName();
    private String mDirPath = null;
    private int mFileNo = -1;

    public EachDirPathBuilder(String string) throws IOException {
        this.initDirectory(DcfPathBuilder.getInstance().getDestinationToSave(), string);
    }

    private final String getCurrentDirName() {
        Date date = new Date();
        return new SimpleDateFormat("yyyyMMddHHmmssSSS").format(date);
    }

    private String getDcimDirectory(String string) {
        return string + File.separator + Environment.DIRECTORY_DCIM;
    }

    private void initDirectory(String object, String object2) throws IOException {
        String string = this.searchSubDirectory((String)object, (String)object2);
        if (string == null) {
            CameraLogger.e(TAG, "initDirectory(): Fail to search sub dir is null");
            throw new IOException("Fail to search sub dir.");
        }
        int n = 0;
        do {
            object = null;
            if (n >= 100) break;
            String string2 = this.getCurrentDirName();
            object = object2 = new File(string, string2);
            if (!object2.isDirectory()) break;
            object = object2;
            if (!object2.exists()) break;
            CameraLogger.w(TAG, "initDirectory(): Already directory exists: " + string2);
            ++n;
        } while (true);
        if (object == null) {
            CameraLogger.e(TAG, "initDirectory(): Max retry times for creating current dir.");
            throw new IOException("Max retry times for creating current dir.");
        }
        this.mDirPath = this.searchDirectory((File)object);
        if (this.mDirPath == null) {
            CameraLogger.e(TAG, "initDirectory(): Fail to search current dir: " + object);
            throw new IOException("Fail to search current dir.");
        }
        this.mDirPath = this.mDirPath + File.separator;
        this.mFileNo = 0;
    }

    private final String searchDirectory(File file) {
        boolean bl;
        boolean bl2 = bl = true;
        if (!file.isDirectory()) {
            bl2 = bl;
            if (!file.mkdirs()) {
                bl2 = false;
            }
        }
        if (bl2) {
            return file.getAbsolutePath();
        }
        CameraLogger.e(TAG, "searchDirectory() failed: " + file);
        return null;
    }

    private final String searchSubDirectory(String string, String string2) {
        String string3 = this.searchDirectory(new File(this.getDcimDirectory(string)));
        string = null;
        if (string3 != null) {
            string = this.searchDirectory(new File(string3, string2));
        }
        return string;
    }

    public String assignImageFilePath() {
        ++this.mFileNo;
        if (this.mFileNo > 999999) {
            CameraLogger.w(TAG, "assignImageFilePath(): Max file name.");
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder(this.mDirPath);
        stringBuilder.append("DSC_");
        stringBuilder.append(String.format(Locale.US, "%06d", this.mFileNo));
        stringBuilder.append(".JPG");
        return stringBuilder.toString();
    }
}

