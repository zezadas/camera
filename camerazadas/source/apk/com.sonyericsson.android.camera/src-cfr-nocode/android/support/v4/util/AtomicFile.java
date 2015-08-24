/*
 * Decompiled with CFR 0_100.
 */
package android.support.v4.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 */
public class AtomicFile {
    private final File mBackupName;
    private final File mBaseName;

    public AtomicFile(File var1);

    static boolean sync(FileOutputStream var0);

    public void delete();

    public void failWrite(FileOutputStream var1);

    public void finishWrite(FileOutputStream var1);

    public File getBaseFile();

    public FileInputStream openRead() throws FileNotFoundException;

    public byte[] readFully() throws IOException;

    public FileOutputStream startWrite() throws IOException;
}

