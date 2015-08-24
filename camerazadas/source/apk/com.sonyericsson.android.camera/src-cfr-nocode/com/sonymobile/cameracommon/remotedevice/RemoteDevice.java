/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice;

import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RemoteDevice {
    private static final String API_ACT_TAKE_PICTURE = "actTakePicture";
    private static final String API_AWAIT_TAKE_PICTURE = "awaitTakePicture";
    private static final String API_GET_APPLICATION_INFO = "getApplicationInfo";
    private static final String API_GET_AVAILABLE_API_LIST = "getAvailableApiList";
    private static final String API_GET_AVAILABLE_SHOOT_MODE = "getAvailableShootMode";
    private static final String API_GET_EVENT = "getEvent";
    private static final String API_GET_SUPPORTED_SHOOT_MODE = "getSupportedShootMode";
    private static final String API_RECEIVE_EVENT = "receiveEvent";
    private static final String API_SET_SHOOT_MODE = "setShootMode";
    private static final String API_START_LIVEVIEW = "startLiveview";
    private static final String API_START_MOVIE_REC = "startMovieRec";
    private static final String API_START_REC_MODE = "startRecMode";
    private static final String API_STOP_LIVEVIEW = "stopLiveview";
    private static final String API_STOP_MOVIE_REC = "stopMovieRec";
    private static final String API_STOP_REC_MODE = "stopRecMode";
    private static final String CAMERA_REMOTE_SERVICE = "camera";
    private static final String DD_XML_TAG_DEVICE = "device";
    private static final String DD_XML_TAG_FRIENDLY_NAME = "friendlyName";
    private static final String DD_XML_TAG_ICON = "icon";
    private static final String DD_XML_TAG_ICON_LIST = "iconList";
    private static final String DD_XML_TAG_MIME_TYPE = "mimetype";
    private static final String DD_XML_TAG_MODEL_NAME = "modelName";
    private static final String DD_XML_TAG_ROOT = "root";
    private static final String DD_XML_TAG_UDN = "UDN";
    private static final String DD_XML_TAG_URL = "url";
    private static final String DD_XML_TAG_WEBAPI_ACTIONLIST_URL = "X_ScalarWebAPI_ActionList_URL";
    private static final String DD_XML_TAG_WEBAPI_DEVICE_INFO = "X_ScalarWebAPI_DeviceInfo";
    private static final String DD_XML_TAG_WEBAPI_SERVICE = "X_ScalarWebAPI_Service";
    private static final String DD_XML_TAG_WEBAPI_SERVICE_LIST = "X_ScalarWebAPI_ServiceList";
    private static final String DD_XML_TAG_WEBAPI_SERVICE_TYPE = "X_ScalarWebAPI_ServiceType";
    private static final String DD_XML_VAL_MIME_TYPE_IMAGE_PNG = "image/png";
    public static final int ERROR_ALREADY_RUNNING_POLLING_API = 40402;
    public static final int ERROR_ANY = 1;
    public static final int ERROR_CAMERA_NOT_READY = 40401;
    public static final int ERROR_ILLEGAL_ARGUMENT = 3;
    public static final int ERROR_ILLEGAL_DATA_FORMAT = 4;
    public static final int ERROR_ILLEGAL_REQUEST = 5;
    public static final int ERROR_ILLEGAL_RESPONSE = 6;
    public static final int ERROR_ILLEGAL_STATE = 7;
    public static final int ERROR_ILLEGAL_TYPE = 8;
    public static final int ERROR_INDEX_OUT_OF_BOUNDS = 9;
    public static final int ERROR_NO_SUCH_ELEMENT = 10;
    public static final int ERROR_NO_SUCH_FIELD = 11;
    public static final int ERROR_NO_SUCH_METHOD = 12;
    public static final int ERROR_NULL_POINTER = 13;
    public static final int ERROR_OK = 0;
    public static final int ERROR_SHOOTING_FAIL = 40400;
    public static final int ERROR_STILL_CAPTURING_NOT_FINISHED = 40403;
    public static final int ERROR_TIMEOUT = 2;
    public static final int ERROR_UNSUPPORTED_OPERATION = 15;
    public static final int ERROR_UNSUPPORTED_VERSION = 14;
    private static final boolean IS_DEBUG = false;
    private static final String JSON_RPC_KEY_CAMERA_STATUS = "cameraStatus";
    private static final String JSON_RPC_KEY_CURRENT_SHOOT_MODE = "currentShootMode";
    private static final String JSON_RPC_KEY_ERROR = "error";
    private static final String JSON_RPC_KEY_ID = "id";
    private static final String JSON_RPC_KEY_METHOD = "method";
    private static final String JSON_RPC_KEY_NAMES = "names";
    private static final String JSON_RPC_KEY_PARAMS = "params";
    private static final String JSON_RPC_KEY_RESULT = "result";
    private static final String JSON_RPC_KEY_TYPE = "type";
    private static final String JSON_RPC_KEY_VERSION = "version";
    private static final String JSON_RPC_VAL_AVAILABLE_API_LIST = "availableApiList";
    private static final String JSON_RPC_VAL_CAMERA_STATUS = "cameraStatus";
    private static final String JSON_RPC_VAL_SHOOT_MODE = "shootMode";
    private static final String JSON_RPC_VAL_VERSION = "1.0";
    public static final String SHOOTMODE_MOVIE = "movie";
    public static final String SHOOTMODE_STILL = "still";
    public static final String STATUS_IDLE = "IDLE";
    public static final String STATUS_MOVIE_RECORDING = "MovieRecording";
    private static final String TAG;
    private Set<String> mAvailableShootModes;
    private String mCameraRemoteApiVersion;
    private RemoteService mCameraRemoteService;
    private String mCurrentShootMode;
    private String mDeviceDescriptionUrl;
    private String mFriendlyName;
    private String mModelName;
    private MonitoringCallback mMonitoringCallback;
    private Set<String> mRemoteCameraApiSet;
    private Set<RemoteService> mRemoteServiceSet;
    private int mRequestId;
    private Set<String> mSupportedShootModes;
    private String mUdn;
    private String mUiIconUrl;
    private String mUuid;

    static;

    private RemoteDevice();

    static /* synthetic */ Set access$202(RemoteDevice var0, Set var1);

    private static RemoteDevice createRemoteDevice(String var0, String var1, String var2);

    public static String getCameraStatusFrom(JSONObject var0);

    private static String getDeviceDescriptionXml(String var0);

    public static int getErrorCode(JSONObject var0) throws JSONException;

    public static Set<String> getNewAvailabaleApiSetFrom(JSONObject var0);

    public static String getPostImageUrlFrom(JSONObject var0);

    public static String getShootModeFrom(JSONObject var0);

    public static boolean isErrorResponse(JSONObject var0);

    private boolean isGetApplicationInfoApiAvailable();

    private boolean isGetAvailableShootModeAvailable();

    private boolean isGetEventAvailableLocal();

    private boolean isGetSupportedShootModeAvailable();

    private boolean isReceiveEventAvailableLocal();

    public static RemoteDevice load(String var0, String var1);

    private boolean loadDefaultCapability();

    public static void logError(int var0);

    private static JSONObject requestRpc(String var0, JSONObject var1);

    private static JSONObject rpc(String var0, int var1, String var2, JSONArray var3);

    private JSONObject rpcGetApplicationInfo();

    private JSONObject rpcGetAvailableApiList();

    private JSONObject rpcGetAvailableShootMode();

    private JSONObject rpcGetSupportedShootMode();

    private JSONObject rpcSetShootMode(String var1);

    private JSONObject rpcStartLiveview();

    private JSONObject rpcStartRecMode();

    private JSONObject rpcStopLiveview();

    private JSONObject rpcStopRecMode();

    public boolean changeToMovieMode();

    public boolean changeToStillMode();

    public String getDeviceDescriptionUrl();

    public String getDeviceUuid();

    public MonitoringCallback getEventObserverCallback();

    public String getFriendlyName();

    public String getModelName();

    public int getNextRequestId();

    public String getUdn();

    public String getUiIconUrl();

    public boolean isCamera();

    public boolean isGetEventAvailable();

    public boolean isMovieRecAvailable();

    public boolean isMovieRecSupported();

    public boolean isStillCaptureAvailable();

    public boolean isStillCaptureSupported();

    public void release();

    public JSONObject rpcActTakePicture();

    public JSONObject rpcGetEvent(boolean var1);

    public JSONObject rpcStartMovieRec();

    public JSONObject rpcStopMovieRec();

    public String startLiveview();

    public boolean stopLiveview();

    public String toString();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MonitoringCallback
    implements EventObserverCallback {
        final /* synthetic */ RemoteDevice this$0;

        private MonitoringCallback(RemoteDevice var1);

        /* synthetic */ MonitoringCallback(RemoteDevice var1,  var2);

        @Override
        public void onAvailableApiSetChanged(Set<String> var1);

        @Override
        public void onCameraStatusChanged(String var1);

        @Override
        public void onErrorStopped();

        @Override
        public void onShootModeChanged(String var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class RemoteService {
        private final String mActionListUrl;
        private final String mType;

        private RemoteService(String var1, String var2);

        /* synthetic */ RemoteService(String var1, String var2,  var3);

        public String getEndPointUrl();

        public String toString();
    }

}

