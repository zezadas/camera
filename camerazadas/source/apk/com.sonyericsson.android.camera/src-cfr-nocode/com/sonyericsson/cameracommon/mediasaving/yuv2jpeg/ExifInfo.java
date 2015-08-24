/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;

/*
 * Exception performing whole class analysis.
 */
public class ExifInfo {
    private ByteOrder mByteOrder;
    private final int mHeight;
    private final Location mLocation;
    private final int mOrientation;
    private long mTimestamp;
    private final int mWidth;

    public ExifInfo(long var1, int var3, Location var4, int var5, int var6);

    public ExifInfo(long var1, int var3, Location var4, int var5, int var6, ByteOrder var7);

    public ExifInfo(SavingRequest var1);

    public ByteOrder getByteOrder();

    public int getHeight();

    public Location getLocation();

    public int getOrientation();

    public long getTimestamp();

    public int getWidth();

    public void setTimestamp(long var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ByteOrder
    extends Enum<ByteOrder> {
        private static final /* synthetic */ ByteOrder[] $VALUES;
        public static final /* enum */ ByteOrder BIG_ENDIAN;
        public static final /* enum */ ByteOrder LITTLE_ENDIAN;

        static;

        private ByteOrder();

        public static ByteOrder valueOf(String var0);

        public static ByteOrder[] values();
    }

}

