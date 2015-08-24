/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.util;

import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ThreadFactory;

public class Util {
    private static final String NODE_ID_DELIMITER = "/";
    public static final int STREAM_ID_REMOTE_DEVICE = 200;
    public static final int STREAM_ID_XPERIA = 201;

    public static int byteArray2Integer(byte[] arrby, int n, int n2) {
        int n3 = 0;
        for (int i = n; i < n + n2; ++i) {
            n3 = n3 << 8 | arrby[i] & 255;
        }
        return n3;
    }

    public static Set<NetworkNode> checkDiffWithMacAddressAndGetOnlyIncludedInLeftSet(Set<NetworkNode> object, Set<NetworkNode> set) {
        if (object == null || set == null) {
            throw new IllegalArgumentException("Arguments must not be NULL.");
        }
        HashSet<NetworkNode> hashSet = new HashSet<NetworkNode>();
        for (NetworkNode networkNode : object) {
            boolean bl;
            block3 : {
                boolean bl2 = false;
                Iterator<NetworkNode> iterator = set.iterator();
                do {
                    bl = bl2;
                    if (!iterator.hasNext()) break block3;
                } while (!networkNode.equalsWithMacAddress(iterator.next()));
                bl = true;
            }
            if (bl) continue;
            hashSet.add(networkNode);
        }
        return hashSet;
    }

    public static String getLayoutNodeId(String string, int n) {
        int n2 = n;
        if (n != 200) {
            n2 = 201;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(string).append("/").append(n2);
        return stringBuilder.toString();
    }

    public static NetworkNode getNetworkNodeWithIpAddress(Set<NetworkNode> object, String string) {
        if (object == null || string == null) {
            throw new IllegalArgumentException("Arguments must not be NULL.");
        }
        Object var2_2 = null;
        Iterator<NetworkNode> iterator = object.iterator();
        do {
            object = var2_2;
        } while (iterator.hasNext() && !string.equals((object = iterator.next()).getIpAddress()));
        return object;
    }

    public static NetworkNode getNetworkNodeWithMacAddress(Set<NetworkNode> object, String string) {
        if (object == null || string == null) {
            throw new IllegalArgumentException("Arguments must not be NULL.");
        }
        Object var2_2 = null;
        Iterator<NetworkNode> iterator = object.iterator();
        do {
            object = var2_2;
        } while (iterator.hasNext() && !string.equals((object = iterator.next()).getMacAddress()));
        return object;
    }

    public static byte[] integer2ByteArray(int n) {
        return Util.integer2ByteArray(4, n);
    }

    public static byte[] integer2ByteArray(int n, int n2) {
        byte[] arrby = new byte[n];
        int n3 = 0;
        --n;
        for (; n >= 0; --n) {
            arrby[n] = (byte)(n2 >> n3 & 255);
            n3+=8;
        }
        return arrby;
    }

    public static boolean isEqualEachNodesWithMacAddress(Set<NetworkNode> set, Set<NetworkNode> object) {
        if (set.size() != object.size()) {
            return false;
        }
        object = object.iterator();
        while (object.hasNext()) {
            if (Util.getNetworkNodeWithMacAddress(set, ((NetworkNode)object.next()).getMacAddress()) != null) continue;
            return false;
        }
        return true;
    }

    public static boolean isIdenticalFrameId(String string, int n, String string2) {
        String[] arrstring = string2.split("/");
        if (arrstring == null || arrstring.length != 2) {
            throw new IllegalArgumentException("Invalid Frame ID : " + string2);
        }
        if (arrstring[0].equals(string) && Integer.parseInt(arrstring[1]) == n) {
            return true;
        }
        return false;
    }

    public static void removeNetworkNodeWithMacAddress(Set<NetworkNode> set, String string) {
        NetworkNode networkNode;
        if (string == null || set == null) {
            throw new IllegalArgumentException("Arguments must not be NULL.");
        }
        Iterator<NetworkNode> iterator = set.iterator();
        NetworkNode networkNode2 = null;
        do {
            networkNode = networkNode2;
        } while (iterator.hasNext() && !string.equals((networkNode = iterator.next()).getMacAddress()));
        if (networkNode != null) {
            set.remove(networkNode);
        }
    }

    public static void updateNetworkNodeState(Set<NetworkNode> object, Set<NetworkNode> set) {
        block0 : for (NetworkNode networkNode : object) {
            for (NetworkNode networkNode2 : set) {
                if (!networkNode.equalsWithMacAddress(networkNode2)) continue;
                NetworkNode.copy(networkNode, networkNode2);
                continue block0;
            }
        }
    }

    public static class IntentionalThreadFactory
    implements ThreadFactory {
        private final String mName;
        private final int mPriority;

        public IntentionalThreadFactory(String string, int n) {
            this.mName = string;
            this.mPriority = n;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable, this.mName);
            runnable.setPriority(this.mPriority);
            return runnable;
        }
    }

}

