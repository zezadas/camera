/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.util;

import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import java.util.Set;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis ignored.
 */
public class Util {
    private static final String NODE_ID_DELIMITER = "/";
    public static final int STREAM_ID_REMOTE_DEVICE = 200;
    public static final int STREAM_ID_XPERIA = 201;

    public Util();

    public static int byteArray2Integer(byte[] var0, int var1, int var2);

    public static Set<NetworkNode> checkDiffWithMacAddressAndGetOnlyIncludedInLeftSet(Set<NetworkNode> var0, Set<NetworkNode> var1);

    public static String getLayoutNodeId(String var0, int var1);

    public static NetworkNode getNetworkNodeWithIpAddress(Set<NetworkNode> var0, String var1);

    public static NetworkNode getNetworkNodeWithMacAddress(Set<NetworkNode> var0, String var1);

    public static byte[] integer2ByteArray(int var0);

    public static byte[] integer2ByteArray(int var0, int var1);

    public static boolean isEqualEachNodesWithMacAddress(Set<NetworkNode> var0, Set<NetworkNode> var1);

    public static boolean isIdenticalFrameId(String var0, int var1, String var2);

    public static void removeNetworkNodeWithMacAddress(Set<NetworkNode> var0, String var1);

    public static void updateNetworkNodeState(Set<NetworkNode> var0, Set<NetworkNode> var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class IntentionalThreadFactory
    implements ThreadFactory {
        private final String mName;
        private final int mPriority;

        public IntentionalThreadFactory(String var1, int var2);

        @Override
        public Thread newThread(Runnable var1);
    }

}

