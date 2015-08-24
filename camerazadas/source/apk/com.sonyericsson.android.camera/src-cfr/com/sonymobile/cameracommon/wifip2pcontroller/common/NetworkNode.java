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
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.Json;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class NetworkNode {
    private static final double NETWORK_NODE_VERSION = 1.0;
    private static final String TAG = NetworkNode.class.getSimpleName();
    private OnNetworkNodeStateChangedCallback mCallback = null;
    @Expose
    @Since(value=1.0)
    private int mClientApplicationVersionCode = 0;
    @Expose
    @Since(value=1.0)
    private String mIpAddress = null;
    @Expose
    @Since(value=1.0)
    private boolean mIsGroupOwner = false;
    @Expose
    @Since(value=1.0)
    private String mMacAddress = null;
    @Expose
    @Since(value=1.0)
    private Set<Stream> mPublicOpenedStreamSet = null;
    @Expose
    @Since(value=1.0)
    private Set<Stream> mRequiredStreamSet = null;
    @Expose
    @Since(value=1.0)
    private String mScreenName = null;
    @Expose
    @Since(value=1.0)
    private int mStatus = 4;
    @Expose
    @Since(value=1.0)
    private int mTcpPort = 0;
    @Expose
    @Since(value=1.0)
    private int mUdpPort = 0;

    public static void copy(NetworkNode networkNode, NetworkNode networkNode2) {
        networkNode2.mClientApplicationVersionCode = networkNode.mClientApplicationVersionCode;
        networkNode2.mMacAddress = networkNode.mMacAddress;
        networkNode2.mScreenName = networkNode.mScreenName;
        networkNode2.mStatus = networkNode.mStatus;
        networkNode2.mIsGroupOwner = networkNode.mIsGroupOwner;
        networkNode2.mIpAddress = networkNode.mIpAddress;
        networkNode2.mTcpPort = networkNode.mTcpPort;
        networkNode2.mUdpPort = networkNode.mUdpPort;
        if (networkNode.mPublicOpenedStreamSet != null) {
            networkNode2.mPublicOpenedStreamSet = new HashSet<Stream>(networkNode.mPublicOpenedStreamSet);
        }
        if (networkNode.mRequiredStreamSet != null) {
            networkNode2.mRequiredStreamSet = new HashSet<Stream>(networkNode.mRequiredStreamSet);
        }
        networkNode2.mCallback = networkNode.mCallback;
    }

    public static NetworkNode decodeFromJson(String string) {
        return (NetworkNode)Json.decodeFromJson(1.0, string, NetworkNode.class);
    }

    private static String getWifiP2pDeviceStatusString(int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Un-Expected Status");
            }
            case 3: {
                return "AVAILABLE";
            }
            case 0: {
                return "CONNECTED";
            }
            case 2: {
                return "FAILED";
            }
            case 1: {
                return "INVITED";
            }
            case 4: 
        }
        return "UNAVAILABLE";
    }

    private static final boolean isSameStreamSet(Set<Stream> set, Set<Stream> set2) {
        if (set == null) {
            if (set2 == null) {
                return true;
            }
            return false;
        }
        return set.equals(set2);
    }

    public NetworkNode clone() {
        NetworkNode networkNode = new NetworkNode();
        NetworkNode.copy(this, networkNode);
        return networkNode;
    }

    public String encodeToJson() {
        return Json.encodeToJson(1.0, this, NetworkNode.class);
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        object = (NetworkNode)object;
        if (!(this.mClientApplicationVersionCode == object.mClientApplicationVersionCode && (this.mMacAddress == null && object.mMacAddress == null || this.mMacAddress != null && this.mMacAddress.equals(object.mMacAddress)) && (this.mScreenName == null && object.mScreenName == null || this.mScreenName != null && this.mScreenName.equals(object.mScreenName)) && this.mStatus == object.mStatus && this.mIsGroupOwner == object.mIsGroupOwner && (this.mIpAddress == null && object.mIpAddress == null || this.mIpAddress != null && this.mIpAddress.equals(object.mIpAddress)) && this.mTcpPort == object.mTcpPort && this.mUdpPort == object.mUdpPort && NetworkNode.isSameStreamSet(this.mPublicOpenedStreamSet, object.mPublicOpenedStreamSet) && NetworkNode.isSameStreamSet(this.mRequiredStreamSet, object.mRequiredStreamSet))) {
            return false;
        }
        return true;
    }

    public boolean equalsWithMacAddress(NetworkNode networkNode) {
        if (this.mMacAddress == null || networkNode == null) {
            return false;
        }
        return this.mMacAddress.equals(networkNode.getMacAddress());
    }

    public double getClientApplicationVersionCode() {
        return this.mClientApplicationVersionCode;
    }

    public String getIpAddress() {
        return this.mIpAddress;
    }

    public String getMacAddress() {
        return this.mMacAddress;
    }

    public Set<Stream> getPublicOpenedStreamSet() {
        return this.mPublicOpenedStreamSet;
    }

    public Set<Stream> getRequiredStreams() {
        return this.mRequiredStreamSet;
    }

    public String getScreenName() {
        return this.mScreenName;
    }

    public StateUpdator getStateUpdator() {
        return new StateUpdatorImpl();
    }

    public int getStatus() {
        return this.mStatus;
    }

    public int getTcpPort() {
        return this.mTcpPort;
    }

    public int getUdpPort() {
        return this.mUdpPort;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int hashCode() {
        int n;
        int n2 = this.mMacAddress == null ? 0 : this.mMacAddress.hashCode();
        int n3 = this.mScreenName == null ? 0 : this.mScreenName.hashCode();
        int n4 = !this.mIsGroupOwner ? 0 : 1;
        int n5 = this.mIpAddress == null ? 0 : this.mIpAddress.hashCode();
        int n6 = this.mPublicOpenedStreamSet == null ? 0 : this.mPublicOpenedStreamSet.hashCode();
        if (this.mRequiredStreamSet == null) {
            n = 0;
            return ((((((((n2 + 589) * 31 + n3) * 31 + this.mStatus) * 31 + n4) * 31 + n5) * 31 + this.mTcpPort) * 31 + this.mUdpPort) * 31 + n6) * 31 + n;
        }
        n = this.mRequiredStreamSet.hashCode();
        return ((((((((n2 + 589) * 31 + n3) * 31 + this.mStatus) * 31 + n4) * 31 + n5) * 31 + this.mTcpPort) * 31 + this.mUdpPort) * 31 + n6) * 31 + n;
    }

    public boolean isGroupOwner() {
        return this.mIsGroupOwner;
    }

    public void setOnNetworkNodeStateChangedCallback(OnNetworkNodeStateChangedCallback onNetworkNodeStateChangedCallback) {
        this.mCallback = onNetworkNodeStateChangedCallback;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(TAG).append(":\n");
        stringBuilder.append("    Client Application Version Code : ").append(this.mClientApplicationVersionCode).append("\n");
        stringBuilder.append("    MAC Address     : ").append(this.mMacAddress).append("\n").append("    Screen Name     : ").append(this.mScreenName).append("\n").append("    Status          : ").append(NetworkNode.getWifiP2pDeviceStatusString(this.mStatus)).append("\n").append("    Group Owner     : ").append(this.mIsGroupOwner).append("\n");
        stringBuilder.append("    IP Address : ").append(this.mIpAddress).append("\n").append("    TCP Port   : ").append(this.mTcpPort).append("\n").append("    UDP Port   : ").append(this.mUdpPort).append("\n");
        stringBuilder.append("    Public Open Stream:").append("\n");
        if (this.mPublicOpenedStreamSet != null) {
            for (Stream stream : this.mPublicOpenedStreamSet) {
                stringBuilder.append("        ").append(stream.toString()).append("\n");
            }
        } else {
            stringBuilder.append("        NULL").append("\n");
        }
        stringBuilder.append("    Required Stream:").append("\n");
        if (this.mRequiredStreamSet != null) {
            for (Stream stream : this.mRequiredStreamSet) {
                stringBuilder.append("        ").append(stream.toString()).append("\n");
            }
        } else {
            stringBuilder.append("        NULL").append("\n");
        }
        return stringBuilder.toString();
    }

    public static interface OnNetworkNodeStateChangedCallback {
        public void onNetworkNodeStateChanged(NetworkNode var1);
    }

    public static interface StateUpdator {
        public void done();

        public StateUpdator setClientApplicationVersionCode(int var1);

        public StateUpdator setGroupOwner(boolean var1);

        public StateUpdator setIpAddress(String var1);

        public StateUpdator setMacAddress(String var1);

        public StateUpdator setPublicOpenedStreamSet(Set<Stream> var1);

        public StateUpdator setRequiredStreamSet(Set<Stream> var1);

        public StateUpdator setScreenName(String var1);

        public StateUpdator setStatus(int var1);

        public StateUpdator setTcpPort(int var1);

        public StateUpdator setUdpPort(int var1);
    }

    private class StateUpdatorImpl
    implements StateUpdator {
        private final NetworkNode mStateBefore;

        private StateUpdatorImpl() {
            this.mStateBefore = NetworkNode.this.clone();
        }

        @Override
        public void done() {
            if (!(NetworkNode.this.mCallback == null || NetworkNode.this.equals(this.mStateBefore))) {
                NetworkNode.this.mCallback.onNetworkNodeStateChanged(NetworkNode.this);
            }
        }

        @Override
        public StateUpdator setClientApplicationVersionCode(int n) {
            NetworkNode.this.mClientApplicationVersionCode = n;
            return this;
        }

        @Override
        public StateUpdator setGroupOwner(boolean bl) {
            NetworkNode.this.mIsGroupOwner = bl;
            return this;
        }

        @Override
        public StateUpdator setIpAddress(String string) {
            NetworkNode.this.mIpAddress = string;
            return this;
        }

        @Override
        public StateUpdator setMacAddress(String string) {
            NetworkNode.this.mMacAddress = string;
            return this;
        }

        @Override
        public StateUpdator setPublicOpenedStreamSet(Set<Stream> set) {
            NetworkNode.this.mPublicOpenedStreamSet = set;
            return this;
        }

        @Override
        public StateUpdator setRequiredStreamSet(Set<Stream> set) {
            if (set != null) {
                NetworkNode.this.mRequiredStreamSet = new HashSet<Stream>(set);
            }
            return this;
        }

        @Override
        public StateUpdator setScreenName(String string) {
            NetworkNode.this.mScreenName = string;
            return this;
        }

        @Override
        public StateUpdator setStatus(int n) {
            NetworkNode.this.mStatus = n;
            return this;
        }

        @Override
        public StateUpdator setTcpPort(int n) {
            NetworkNode.this.mTcpPort = n;
            return this;
        }

        @Override
        public StateUpdator setUdpPort(int n) {
            NetworkNode.this.mUdpPort = n;
            return this;
        }
    }

    public static class Stream {
        public static final int STREAM_ID_BACK_CAMERA = 0;
        public static final int STREAM_ID_FRONT_CAMERA = 1;
        @Expose
        @Since(value=1.0)
        public final int id;
        private volatile int mHashCode = 0;
        @Expose
        @Since(value=1.0)
        public final String macAddress;
        @Expose
        @Since(value=1.0)
        public final String screenName;

        public Stream(String string, int n, String string2) {
            this.macAddress = string;
            this.id = n;
            this.screenName = string2;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        public boolean equals(Object object) {
            if (object == null) {
                return false;
            }
            object = (Stream)object;
            if (!CommonUtility.sameStrings(this.macAddress, object.macAddress)) return false;
            if (this.id != object.id) return false;
            if (!CommonUtility.sameStrings(this.screenName, object.screenName)) return false;
            return true;
        }

        /*
         * Enabled aggressive block sorting
         */
        public int hashCode() {
            int n;
            int n2 = n = this.mHashCode;
            if (n == 0) {
                n2 = this.macAddress == null ? 0 : this.macAddress.hashCode();
                n = this.screenName == null ? 0 : this.screenName.hashCode();
                this.mHashCode = n2 = ((n2 + 527) * 31 + this.id) * 31 + n;
            }
            return n2;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.getClass().getSimpleName()).append(" ").append("[MAC=").append(this.macAddress).append("]").append(" ").append("[ID=").append(this.id).append("]").append(" ").append("[ScreenName=").append(this.screenName).append("]");
            return stringBuilder.toString();
        }
    }

}

