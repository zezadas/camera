/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.google.gson.annotations.Expose
 *  com.google.gson.annotations.Since
 */
package com.sonymobile.cameracommon.wifip2pcontroller.common;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NegotiationMessage {
    private static final double NEGO_MSG_VERSION = 1.0;
    private static int sIncrementalCode;

    static;

    public NegotiationMessage();

    static /* synthetic */ int access$000();

    static /* synthetic */ int access$004();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class NegoMsg {
        @Expose
        @Since(value=1.0)
        private final int mIncrementalCode;
        @Expose
        @Since(value=1.0)
        private final String[] mNetworkNodeJsonStringArray;
        @Expose
        @Since(value=1.0)
        private final int mPassKey;
        @Expose
        @Since(value=1.0)
        private final NegoType mType;

        public /* varargs */ NegoMsg(NegoType var1, int var2, NetworkNode ... var3);

        public static NegoMsg decodeFromJson(String var0);

        public String encodeToJson();

        public NegoType getMessageType();

        public NetworkNode[] getNetworkNodeArray();

        public int getPassKey();

        public String toString();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class NegoType
    extends Enum<NegoType> {
        private static final /* synthetic */ NegoType[] $VALUES;
        public static final /* enum */ NegoType CONNECTION_REQUEST;
        public static final /* enum */ NegoType GROUP_CLIENT_IDENTIFIER;
        public static final /* enum */ NegoType NODE_STATUS_UPDATE;

        static;

        private NegoType();

        public static NegoType valueOf(String var0);

        public static NegoType[] values();
    }

}

