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
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class NetworkNode {
    private static final double NETWORK_NODE_VERSION = 1.0;
    private static final String TAG;
    private OnNetworkNodeStateChangedCallback mCallback;
    @Expose
    @Since(value=1.0)
    private int mClientApplicationVersionCode;
    @Expose
    @Since(value=1.0)
    private String mIpAddress;
    @Expose
    @Since(value=1.0)
    private boolean mIsGroupOwner;
    @Expose
    @Since(value=1.0)
    private String mMacAddress;
    @Expose
    @Since(value=1.0)
    private Set<Stream> mPublicOpenedStreamSet;
    @Expose
    @Since(value=1.0)
    private Set<Stream> mRequiredStreamSet;
    @Expose
    @Since(value=1.0)
    private String mScreenName;
    @Expose
    @Since(value=1.0)
    private int mStatus;
    @Expose
    @Since(value=1.0)
    private int mTcpPort;
    @Expose
    @Since(value=1.0)
    private int mUdpPort;

    static;

    public NetworkNode();

    static /* synthetic */ OnNetworkNodeStateChangedCallback access$100(NetworkNode var0);

    static /* synthetic */ Set access$1002(NetworkNode var0, Set var1);

    static /* synthetic */ Set access$1102(NetworkNode var0, Set var1);

    static /* synthetic */ int access$202(NetworkNode var0, int var1);

    static /* synthetic */ String access$302(NetworkNode var0, String var1);

    static /* synthetic */ String access$402(NetworkNode var0, String var1);

    static /* synthetic */ int access$502(NetworkNode var0, int var1);

    static /* synthetic */ boolean access$602(NetworkNode var0, boolean var1);

    static /* synthetic */ String access$702(NetworkNode var0, String var1);

    static /* synthetic */ int access$802(NetworkNode var0, int var1);

    static /* synthetic */ int access$902(NetworkNode var0, int var1);

    public static void copy(NetworkNode var0, NetworkNode var1);

    public static NetworkNode decodeFromJson(String var0);

    private static String getWifiP2pDeviceStatusString(int var0);

    private static final boolean isSameStreamSet(Set<Stream> var0, Set<Stream> var1);

    public NetworkNode clone();

    public String encodeToJson();

    public boolean equals(Object var1);

    public boolean equalsWithMacAddress(NetworkNode var1);

    public double getClientApplicationVersionCode();

    public String getIpAddress();

    public String getMacAddress();

    public Set<Stream> getPublicOpenedStreamSet();

    public Set<Stream> getRequiredStreams();

    public String getScreenName();

    public StateUpdator getStateUpdator();

    public int getStatus();

    public int getTcpPort();

    public int getUdpPort();

    public int hashCode();

    public boolean isGroupOwner();

    public void setOnNetworkNodeStateChangedCallback(OnNetworkNodeStateChangedCallback var1);

    public String toString();

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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StateUpdatorImpl
    implements StateUpdator {
        private final NetworkNode mStateBefore;
        final /* synthetic */ NetworkNode this$0;

        private StateUpdatorImpl(NetworkNode var1);

        /* synthetic */ StateUpdatorImpl(NetworkNode var1,  var2);

        @Override
        public void done();

        @Override
        public StateUpdator setClientApplicationVersionCode(int var1);

        @Override
        public StateUpdator setGroupOwner(boolean var1);

        @Override
        public StateUpdator setIpAddress(String var1);

        @Override
        public StateUpdator setMacAddress(String var1);

        @Override
        public StateUpdator setPublicOpenedStreamSet(Set<Stream> var1);

        @Override
        public StateUpdator setRequiredStreamSet(Set<Stream> var1);

        @Override
        public StateUpdator setScreenName(String var1);

        @Override
        public StateUpdator setStatus(int var1);

        @Override
        public StateUpdator setTcpPort(int var1);

        @Override
        public StateUpdator setUdpPort(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Stream {
        public static final int STREAM_ID_BACK_CAMERA = 0;
        public static final int STREAM_ID_FRONT_CAMERA = 1;
        @Expose
        @Since(value=1.0)
        public final int id;
        private volatile int mHashCode;
        @Expose
        @Since(value=1.0)
        public final String macAddress;
        @Expose
        @Since(value=1.0)
        public final String screenName;

        public Stream(String var1, int var2, String var3);

        public boolean equals(Object var1);

        public int hashCode();

        public String toString();
    }

}

