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
import com.sonyericsson.cameracommon.utility.Json;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;

public class NegotiationMessage {
    private static final double NEGO_MSG_VERSION = 1.0;
    private static int sIncrementalCode = 0;

    static /* synthetic */ int access$004() {
        int n;
        sIncrementalCode = n = sIncrementalCode + 1;
        return n;
    }

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

        public /* varargs */ NegoMsg(NegoType negoType, int n, NetworkNode ... arrnetworkNode) {
            this.mType = negoType;
            this.mPassKey = n;
            this.mNetworkNodeJsonStringArray = new String[arrnetworkNode.length];
            for (n = 0; n < arrnetworkNode.length; ++n) {
                this.mNetworkNodeJsonStringArray[n] = arrnetworkNode[n].encodeToJson();
            }
            this.mIncrementalCode = sIncrementalCode;
            NegotiationMessage.access$004();
        }

        public static NegoMsg decodeFromJson(String string) {
            return (NegoMsg)Json.decodeFromJson(1.0, string, NegoMsg.class);
        }

        public String encodeToJson() {
            return Json.encodeToJson(1.0, this, NegoMsg.class);
        }

        public NegoType getMessageType() {
            return this.mType;
        }

        public NetworkNode[] getNetworkNodeArray() {
            NetworkNode[] arrnetworkNode = new NetworkNode[this.mNetworkNodeJsonStringArray.length];
            for (int i = 0; i < this.mNetworkNodeJsonStringArray.length; ++i) {
                arrnetworkNode[i] = NetworkNode.decodeFromJson(this.mNetworkNodeJsonStringArray[i]);
            }
            return arrnetworkNode;
        }

        public int getPassKey() {
            return this.mPassKey;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("NegoMsg:\n").append("    TYPE : ").append(this.mType.name()).append("\n").append("    PASS KEY : ").append(this.mPassKey).append("\n").append("    INCREMENTAL CODE : ").append(this.mIncrementalCode).append("\n");
            stringBuilder.append("    NODE JSON STRING :\n");
            if (this.mNetworkNodeJsonStringArray != null) {
                String[] arrstring = this.mNetworkNodeJsonStringArray;
                int n = arrstring.length;
                for (int i = 0; i < n; ++i) {
                    stringBuilder.append(arrstring[i]).append("\n");
                }
            }
            return stringBuilder.toString();
        }
    }

    public static enum NegoType {
        GROUP_CLIENT_IDENTIFIER,
        NODE_STATUS_UPDATE,
        CONNECTION_REQUEST;
        

        private NegoType() {
        }
    }

}

