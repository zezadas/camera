/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

import com.sonymobile.cameracommon.wifip2pcontroller.common.FragmentFrame;
import java.util.List;

/*
 * Exception performing whole class analysis.
 */
public class FragmentFrameRestructor {
    public final int denominator;
    public final int frameId;
    private final List<FragmentFrame> mFragments;
    private int mTotalPayloadSize;

    public FragmentFrameRestructor(int var1, int var2);

    public boolean addFragment(FragmentFrame var1);

    public byte[] generateRestructedPayload();

    public int getRestructedPayloadSize();

    public boolean isCompleted();

    public void release();
}

