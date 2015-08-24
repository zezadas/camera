/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

import com.sonymobile.cameracommon.wifip2pcontroller.common.FragmentFrame;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FragmentFrameRestructor {
    public final int denominator;
    public final int frameId;
    private final List<FragmentFrame> mFragments = new ArrayList<FragmentFrame>();
    private int mTotalPayloadSize = 0;

    public FragmentFrameRestructor(int n, int n2) {
        this.frameId = n;
        this.denominator = n2;
        for (n = 0; n < n2; ++n) {
            this.mFragments.add(null);
        }
    }

    public boolean addFragment(FragmentFrame fragmentFrame) {
        int n = fragmentFrame.numerator;
        if (this.mFragments.get(n) != null) {
            return false;
        }
        this.mFragments.set(n, fragmentFrame);
        this.mTotalPayloadSize+=fragmentFrame.payloadSize;
        return true;
    }

    public byte[] generateRestructedPayload() {
        ByteBuffer byteBuffer = ByteBuffer.allocateDirect(this.mTotalPayloadSize);
        Iterator iterator = this.mFragments.iterator();
        while (iterator.hasNext()) {
            byteBuffer.put(iterator.next().getPayloadBuffer());
        }
        byteBuffer.rewind();
        iterator = (Iterator)new byte[this.mTotalPayloadSize];
        byteBuffer.get((byte[])iterator);
        return iterator;
    }

    public int getRestructedPayloadSize() {
        return this.mTotalPayloadSize;
    }

    public boolean isCompleted() {
        Iterator<FragmentFrame> iterator = this.mFragments.iterator();
        while (iterator.hasNext()) {
            if (iterator.next() != null) continue;
            return false;
        }
        return true;
    }

    public void release() {
        this.mFragments.clear();
    }
}

