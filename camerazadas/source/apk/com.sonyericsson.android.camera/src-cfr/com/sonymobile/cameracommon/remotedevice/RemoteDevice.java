/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice;

import com.sonymobile.cameracommon.remotedevice.event.EventObserverCallback;
import com.sonymobile.cameracommon.remotedevice.util.Log;
import com.sonymobile.cameracommon.remotedevice.util.Util;
import com.sonymobile.cameracommon.remotedevice.util.XmlElement;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

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
    private static final String TAG = RemoteDevice.class.getSimpleName();
    private Set<String> mAvailableShootModes = new HashSet<String>();
    private String mCameraRemoteApiVersion = null;
    private RemoteService mCameraRemoteService = null;
    private String mCurrentShootMode = null;
    private String mDeviceDescriptionUrl = null;
    private String mFriendlyName = null;
    private String mModelName = null;
    private MonitoringCallback mMonitoringCallback;
    private Set<String> mRemoteCameraApiSet = new HashSet<String>();
    private Set<RemoteService> mRemoteServiceSet = new HashSet<RemoteService>();
    private int mRequestId = 0;
    private Set<String> mSupportedShootModes = new HashSet<String>();
    private String mUdn = null;
    private String mUiIconUrl = null;
    private String mUuid = null;

    private RemoteDevice() {
        this.mMonitoringCallback = new MonitoringCallback();
    }

    private static RemoteDevice createRemoteDevice(String object, String string, String object2) {
        RemoteDevice remoteDevice = new RemoteDevice();
        remoteDevice.mUuid = object;
        remoteDevice.mDeviceDescriptionUrl = string;
        object = XmlElement.parse((String)object2);
        if (object != null && "root".equals(object.getTag()) && (object = object.getChild("device")) != null) {
            remoteDevice.mFriendlyName = object.getChild("friendlyName").getValue();
            remoteDevice.mModelName = object.getChild("modelName").getValue();
            remoteDevice.mUdn = object.getChild("UDN").getValue();
            object2 = object.getChild("iconList");
            if (object2 != null) {
                object2 = object2.getChildren("icon").iterator();
                while (object2.hasNext()) {
                    Object object3 = object2.next();
                    if (!"image/png".equals(object3.getChild("mimetype").getValue())) continue;
                    object3 = object3.getChild("url").getValue();
                    String string2 = Util.Uri.getHostFrom(string);
                    remoteDevice.mUiIconUrl = string2 + (String)object3;
                }
            }
            if ((object = object.getChild("X_ScalarWebAPI_DeviceInfo")) != null && (object = object.getChild("X_ScalarWebAPI_ServiceList")) != null && (object = object.getChildren("X_ScalarWebAPI_Service")) != null) {
                object = object.iterator();
                while (object.hasNext()) {
                    object2 = (XmlElement)object.next();
                    string = object2.getChild("X_ScalarWebAPI_ServiceType").getValue();
                    object2 = new RemoteService(string, object2.getChild("X_ScalarWebAPI_ActionList_URL").getValue());
                    remoteDevice.mRemoteServiceSet.add((RemoteService)object2);
                    if (!"camera".equals(string)) continue;
                    remoteDevice.mCameraRemoteService = object2;
                }
            }
        }
        return remoteDevice;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String getCameraStatusFrom(JSONObject object) {
        try {
            object = object.getJSONArray("result");
            if (!object.isNull(1)) {
                if ("cameraStatus".equals((object = object.getJSONObject(1)).getString("type"))) {
                    return object.getString("cameraStatus");
                }
                Log.logError(TAG, "getCameraStatusFrom() : Type is not available");
                return null;
            }
            Log.logError(TAG, "getCameraStatusFrom() : Invalid Index");
            return null;
        }
        catch (JSONException var0_1) {
            Log.logError(TAG, "getCameraStatusFrom() : Failed to read resJson");
            var0_1.printStackTrace();
            return null;
        }
    }

    private static String getDeviceDescriptionXml(String string) {
        InputStream inputStream = Util.Http.get(TAG, string);
        if (inputStream == null) {
            Log.logError(TAG, "load() : Failed to load description XML.");
            return null;
        }
        string = Util.readInputStreamAsString(TAG, inputStream);
        if (string == null) {
            Log.logError(TAG, "load() : Failed to read description XML.");
        }
        try {
            inputStream.close();
            return string;
        }
        catch (IOException var1_2) {
            Log.logError(TAG, "load() : Failed to close InputStream.");
            var1_2.printStackTrace();
            return string;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static int getErrorCode(JSONObject jSONObject) throws JSONException {
        int n = 0;
        if (jSONObject != null && jSONObject.has("error")) {
            return jSONObject.getJSONArray("error").getInt(0);
        }
        if (jSONObject != null) return n;
        return 1;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Set<String> getNewAvailabaleApiSetFrom(JSONObject object) {
        HashSet<String> hashSet;
        block6 : {
            block7 : {
                hashSet = new HashSet<String>();
                object = object.getJSONArray("result");
                if (object.isNull(0)) break block6;
                if (!"availableApiList".equals((object = object.getJSONObject(0)).getString("type"))) break block7;
                object = object.getJSONArray("names");
                int n = 0;
                do {
                    if (n >= object.length()) return hashSet;
                    hashSet.add(object.getString(n));
                    ++n;
                    continue;
                    break;
                } while (true);
            }
            Log.logError(TAG, "getNewAvailableApiSetFrom() : Type is not available");
            return hashSet;
        }
        try {
            Log.logError(TAG, "getNewAvailableApiSetFrom() : Invalid Index");
            return hashSet;
        }
        catch (JSONException var0_1) {
            Log.logError(TAG, "getNewAvailableApiSetFrom() : Failed to read resJson");
            var0_1.printStackTrace();
        }
        return hashSet;
    }

    public static String getPostImageUrlFrom(JSONObject object) {
        JSONArray jSONArray;
        Object var1_2 = null;
        try {
            jSONArray = object.getJSONArray("result").getJSONArray(0);
            object = var1_2;
        }
        catch (JSONException var0_1) {
            Log.logError(TAG, "Failed to get post image URL.");
            var0_1.printStackTrace();
            return null;
        }
        if (jSONArray.length() > 0) {
            object = jSONArray.getString(0);
        }
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static String getShootModeFrom(JSONObject object) {
        try {
            object = object.getJSONArray("result");
            if (!object.isNull(21)) {
                if ("shootMode".equals((object = object.getJSONObject(21)).getString("type"))) {
                    return object.getString("currentShootMode");
                }
                Log.logError(TAG, "getShootModeFrom() : Type is not available");
                return null;
            }
            Log.logError(TAG, "getShootModeFrom() : Invalid Index");
            return null;
        }
        catch (JSONException var0_1) {
            Log.logError(TAG, "getShootModeFrom() : Failed to read resJson");
            var0_1.printStackTrace();
            return null;
        }
    }

    public static boolean isErrorResponse(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.has("error")) {
            return true;
        }
        return false;
    }

    private boolean isGetApplicationInfoApiAvailable() {
        return this.mRemoteCameraApiSet.contains("getApplicationInfo");
    }

    private boolean isGetAvailableShootModeAvailable() {
        return this.mRemoteCameraApiSet.contains("getAvailableShootMode");
    }

    private boolean isGetEventAvailableLocal() {
        return this.mRemoteCameraApiSet.contains("getEvent");
    }

    private boolean isGetSupportedShootModeAvailable() {
        return this.mRemoteCameraApiSet.contains("getSupportedShootMode");
    }

    private boolean isReceiveEventAvailableLocal() {
        return this.mRemoteCameraApiSet.contains("receiveEvent");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static RemoteDevice load(String object, String object2) {
        String string = RemoteDevice.getDeviceDescriptionXml((String)object2);
        if (string == null) {
            Log.logError(TAG, "Failed to getDeviceDescriptionXml.");
            return null;
        }
        object = object2 = RemoteDevice.createRemoteDevice((String)object, (String)object2, string);
        if (object2.loadDefaultCapability()) return object;
        Log.logError(TAG, "Failed to load capability.");
        object2.release();
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private boolean loadDefaultCapability() {
        if (!this.isCamera()) {
            Log.logError(RemoteDevice.TAG, "Camera remote service is not supported");
            return false;
        }
        var2_1 = this.rpcGetAvailableApiList();
        if (var2_1 != null) {
            try {
                var2_1 = var2_1.getJSONArray("result").getJSONArray(0);
                this.mRemoteCameraApiSet.clear();
                for (var1_6 = 0; var1_6 < var2_1.length(); ++var1_6) {
                    var3_7 = var2_1.getString(var1_6);
                    this.mRemoteCameraApiSet.add(var3_7);
                }
            }
            catch (JSONException var2_2) {
                var2_2.printStackTrace();
                return false;
            }
        }
        if (this.isGetApplicationInfoApiAvailable() && (var2_1 = this.rpcGetApplicationInfo()) != null) {
            this.mCameraRemoteApiVersion = var2_1.getJSONArray("result").getString(1);
        }
        if (this.isGetSupportedShootModeAvailable() && (var2_1 = this.rpcGetSupportedShootMode()) != null) {
            var2_1 = var2_1.getJSONArray("result").getJSONArray(0);
            this.mSupportedShootModes.clear();
            for (var1_6 = 0; var1_6 < var2_1.length(); ++var1_6) {
                var3_7 = var2_1.getString(var1_6);
                this.mSupportedShootModes.add(var3_7);
            }
        } else {
            ** GOTO lbl36
        }
        ** GOTO lbl36
        catch (JSONException var2_3) {
            var2_3.printStackTrace();
            return false;
        }
        catch (JSONException var2_4) {
            Log.logError(RemoteDevice.TAG, "Failed to get supported shoot modes.");
            var2_4.printStackTrace();
            return false;
        }
lbl36: // 3 sources:
        if (this.isGetAvailableShootModeAvailable() == false) return true;
        var2_1 = this.rpcGetAvailableShootMode();
        if (var2_1 == null) return true;
        try {
            var2_1 = var2_1.getJSONArray("result");
            this.mCurrentShootMode = var2_1.getString(0);
            this.mAvailableShootModes.clear();
            var2_1 = var2_1.getJSONArray(1);
            for (var1_6 = 0; var1_6 < var2_1.length(); ++var1_6) {
                var3_7 = var2_1.getString(var1_6);
                this.mAvailableShootModes.add(var3_7);
            }
            return true;
        }
        catch (JSONException var2_5) {
            Log.logError(RemoteDevice.TAG, "Failed to get available shoot modes.");
            var2_5.printStackTrace();
            return false;
        }
    }

    public static void logError(int n) {
        switch (n) {
            default: {
                Log.logError(TAG, "ErrorCode = " + n + " : Unexpected ErrorCode.");
            }
            case 0: {
                return;
            }
            case 1: {
                Log.logError(TAG, "ErrorCode = ERROR_ANY");
                return;
            }
            case 2: {
                Log.logError(TAG, "ErrorCode = ERROR_TIMEOUT");
                return;
            }
            case 3: {
                Log.logError(TAG, "ErrorCode = ERROR_ILLEGAL_ARGUMENT");
                return;
            }
            case 4: {
                Log.logError(TAG, "ErrorCode = ERROR_ILLEGAL_DATA_FORMAT");
                return;
            }
            case 5: {
                Log.logError(TAG, "ErrorCode = ERROR_ILLEGAL_REQUEST");
                return;
            }
            case 6: {
                Log.logError(TAG, "ErrorCode = ERROR_ILLEGAL_RESPONSE");
                return;
            }
            case 7: {
                Log.logError(TAG, "ErrorCode = ERROR_ILLEGAL_STATE");
                return;
            }
            case 8: {
                Log.logError(TAG, "ErrorCode = ERROR_ILLEGAL_TYPE");
                return;
            }
            case 9: {
                Log.logError(TAG, "ErrorCode = ERROR_INDEX_OUT_OF_BOUNDS");
                return;
            }
            case 10: {
                Log.logError(TAG, "ErrorCode = ERROR_NO_SUCH_ELEMENT");
                return;
            }
            case 11: {
                Log.logError(TAG, "ErrorCode = ERROR_NO_SUCH_FIELD");
                return;
            }
            case 12: {
                Log.logError(TAG, "ErrorCode = ERROR_NO_SUCH_METHOD");
                return;
            }
            case 13: {
                Log.logError(TAG, "ErrorCode = ERROR_NULL_POINTER");
                return;
            }
            case 14: {
                Log.logError(TAG, "ErrorCode = ERROR_UNSUPPORTED_VERSION");
                return;
            }
            case 15: {
                Log.logError(TAG, "ErrorCode = ERROR_UNSUPPORTED_OPERATION");
                return;
            }
            case 40400: {
                Log.logError(TAG, "ErrorCode = ERROR_SHOOTING_FAIL");
                return;
            }
            case 40401: {
                Log.logError(TAG, "ErrorCode = ERROR_CAMERA_NOT_READY");
                return;
            }
            case 40402: {
                Log.logError(TAG, "ErrorCode = ERROR_ALREADY_RUNNING_POLLING_API");
                return;
            }
            case 40403: 
        }
        Log.logError(TAG, "ErrorCode = ERROR_STILL_CAPTURING_NOT_FINISHED");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static JSONObject requestRpc(String object, JSONObject object2) {
        if ((object = Util.Http.post(TAG, (String)object, object2.toString())) == null) {
            Log.logError(TAG, "Failed to get input stream.");
            return null;
        }
        object2 = Util.readInputStreamAsString(TAG, (InputStream)object);
        if (object2 == null) {
            Log.logError(TAG, "Failed to read result.");
            try {
                object.close();
                do {
                    return null;
                    break;
                } while (true);
            }
            catch (IOException var0_1) {
                Log.logError(TAG, "Failed to close InputStream.");
                var0_1.printStackTrace();
                return null;
            }
        }
        try {
            return new JSONObject((String)object2);
        }
        catch (JSONException var0_2) {
            Log.logError(TAG, "Failed to create return result JSON.");
            var0_2.printStackTrace();
            return null;
        }
    }

    private static JSONObject rpc(String string, int n, String object, JSONArray jSONArray) {
        try {
            object = new JSONObject().put("method", object).put("params", jSONArray).put("id", n).put("version", "1.0");
        }
        catch (JSONException var0_1) {
            Log.logError(TAG, "Failed to create request JSON.");
            return null;
        }
        return RemoteDevice.requestRpc(string, (JSONObject)object);
    }

    private JSONObject rpcGetApplicationInfo() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "getApplicationInfo", new JSONArray());
    }

    private JSONObject rpcGetAvailableApiList() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "getAvailableApiList", new JSONArray());
    }

    private JSONObject rpcGetAvailableShootMode() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "getAvailableShootMode", new JSONArray());
    }

    private JSONObject rpcGetSupportedShootMode() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "getSupportedShootMode", new JSONArray());
    }

    private JSONObject rpcSetShootMode(String string) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(string);
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "setShootMode", jSONArray);
    }

    private JSONObject rpcStartLiveview() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "startLiveview", new JSONArray());
    }

    private JSONObject rpcStartRecMode() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "startRecMode", new JSONArray());
    }

    private JSONObject rpcStopLiveview() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "stopLiveview", new JSONArray());
    }

    private JSONObject rpcStopRecMode() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "stopRecMode", new JSONArray());
    }

    public boolean changeToMovieMode() {
        if (RemoteDevice.isErrorResponse(this.rpcSetShootMode("movie"))) {
            Log.logError(TAG, "Failed to change ShootMode to movie");
            return false;
        }
        return true;
    }

    public boolean changeToStillMode() {
        if (RemoteDevice.isErrorResponse(this.rpcSetShootMode("still"))) {
            Log.logError(TAG, "Failed to change ShootMode to still");
            return false;
        }
        return true;
    }

    public String getDeviceDescriptionUrl() {
        return this.mDeviceDescriptionUrl;
    }

    public String getDeviceUuid() {
        return this.mUuid;
    }

    public MonitoringCallback getEventObserverCallback() {
        return this.mMonitoringCallback;
    }

    public String getFriendlyName() {
        return this.mFriendlyName;
    }

    public String getModelName() {
        return this.mModelName;
    }

    public int getNextRequestId() {
        synchronized (this) {
            int n;
            this.mRequestId = n = this.mRequestId + 1;
            return n;
        }
    }

    public String getUdn() {
        return this.mUdn;
    }

    public String getUiIconUrl() {
        return this.mUiIconUrl;
    }

    public boolean isCamera() {
        if (this.mCameraRemoteService != null) {
            return true;
        }
        return false;
    }

    public boolean isGetEventAvailable() {
        if (this.isGetEventAvailableLocal() || this.isReceiveEventAvailableLocal()) {
            return true;
        }
        return false;
    }

    public boolean isMovieRecAvailable() {
        return this.mAvailableShootModes.contains("movie");
    }

    public boolean isMovieRecSupported() {
        return this.mSupportedShootModes.contains("movie");
    }

    public boolean isStillCaptureAvailable() {
        return this.mAvailableShootModes.contains("still");
    }

    public boolean isStillCaptureSupported() {
        return this.mSupportedShootModes.contains("still");
    }

    public void release() {
        this.mUuid = null;
        this.mDeviceDescriptionUrl = null;
        this.mFriendlyName = null;
        this.mUiIconUrl = null;
        this.mModelName = null;
        this.mUdn = null;
        this.mCameraRemoteService = null;
        this.mCameraRemoteApiVersion = null;
        this.mRemoteServiceSet.clear();
        this.mRemoteCameraApiSet.clear();
        this.mSupportedShootModes.clear();
        this.mAvailableShootModes.clear();
        this.mCurrentShootMode = null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public JSONObject rpcActTakePicture() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = jSONObject = RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "actTakePicture", new JSONArray());
        if (!RemoteDevice.isErrorResponse(jSONObject)) return jSONObject2;
        int n = 1;
        try {
            int n2;
            n = n2 = RemoteDevice.getErrorCode(jSONObject);
        }
        catch (JSONException var3_3) {
            Log.logError(TAG, "Failed to get response");
            var3_3.printStackTrace();
        }
        jSONObject2 = jSONObject;
        if (n != 40403) return jSONObject2;
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "awaitTakePicture", new JSONArray());
    }

    /*
     * Enabled aggressive block sorting
     */
    public JSONObject rpcGetEvent(boolean bl) {
        String string;
        JSONArray jSONArray = new JSONArray();
        if (bl) {
            jSONArray.put(false);
        } else {
            jSONArray.put(true);
        }
        if (this.isReceiveEventAvailableLocal()) {
            string = "receiveEvent";
            return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), string, jSONArray);
        }
        string = "getEvent";
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), string, jSONArray);
    }

    public JSONObject rpcStartMovieRec() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "startMovieRec", new JSONArray());
    }

    public JSONObject rpcStopMovieRec() {
        return RemoteDevice.rpc(this.mCameraRemoteService.getEndPointUrl(), this.getNextRequestId(), "stopMovieRec", new JSONArray());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String startLiveview() {
        Object object;
        JSONArray jSONArray;
        Object var2_1 = null;
        if (RemoteDevice.isErrorResponse(this.rpcStartRecMode())) {
            Log.logError(TAG, "Failed to startRecMode()");
        }
        if (RemoteDevice.isErrorResponse((JSONObject)(object = this.rpcStartLiveview()))) {
            Log.logError(TAG, "Failed to rpcStartLiveview()");
            return null;
        }
        try {
            jSONArray = object.getJSONArray("result");
            object = var2_1;
        }
        catch (JSONException var1_3) {
            Log.logError(TAG, "Failed to get Liveview URL");
            var1_3.printStackTrace();
            return var2_1;
        }
        if (1 > jSONArray.length()) return object;
        return jSONArray.getString(0);
    }

    public boolean stopLiveview() {
        boolean bl = true;
        if (RemoteDevice.isErrorResponse(this.rpcStopLiveview())) {
            Log.logError(TAG, "Failed to rpcStopLiveview()");
            bl = false;
        }
        if (RemoteDevice.isErrorResponse(this.rpcStopRecMode())) {
            Log.logError(TAG, "Failed to rpcStopRecMode()");
            bl = false;
        }
        return bl;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder().append("RemoteDevice:").append(super.toString()).append("\n").append("  UUID        : ").append(this.mUuid).append("\n").append("  DD URL      : ").append(this.mDeviceDescriptionUrl).append("\n").append("  UI LABEL    : ").append(this.mFriendlyName).append("\n").append("  UI ICON URL : ").append(this.mUiIconUrl).append("\n").append("  MODEL NAME  : ").append(this.mModelName).append("\n").append("  UDN         : ").append(this.mUdn).append("\n").append("  CAM RPC VER : ").append(this.mCameraRemoteApiVersion).append("\n");
        Iterator iterator = this.mRemoteServiceSet.iterator();
        while (iterator.hasNext()) {
            stringBuilder.append(iterator.next().toString());
        }
        stringBuilder.append("Camera RemoteService:").append("\n").append(this.mCameraRemoteService.toString());
        stringBuilder.append("RemoteCameraAPI:").append("\n");
        for (String string22 : this.mRemoteCameraApiSet) {
            stringBuilder.append("  ").append(string22).append("\n");
        }
        stringBuilder.append("------------------------------------------------------------\n");
        stringBuilder.append("ShootModes : Supported =").append("\n");
        for (String string22 : this.mSupportedShootModes) {
            stringBuilder.append("  ").append(string22).append("\n");
        }
        stringBuilder.append("ShootModes : Available =").append("\n");
        for (String string22 : this.mAvailableShootModes) {
            stringBuilder.append("  ").append(string22).append("\n");
        }
        stringBuilder.append("ShootMode  : Current = ").append(this.mCurrentShootMode).append("\n");
        stringBuilder.append("------------------------------------------------------------\n");
        return stringBuilder.toString();
    }

    private class MonitoringCallback
    implements EventObserverCallback {
        private MonitoringCallback() {
        }

        @Override
        public void onAvailableApiSetChanged(Set<String> set) {
            RemoteDevice.this.mRemoteCameraApiSet = set;
        }

        @Override
        public void onCameraStatusChanged(String string) {
        }

        @Override
        public void onErrorStopped() {
        }

        @Override
        public void onShootModeChanged(String string) {
        }
    }

    public static class RemoteService {
        private final String mActionListUrl;
        private final String mType;

        private RemoteService(String string, String string2) {
            this.mType = string;
            this.mActionListUrl = string2;
        }

        public String getEndPointUrl() {
            if (this.mType == null || this.mActionListUrl == null) {
                return null;
            }
            if (this.mActionListUrl.endsWith("/")) {
                return this.mActionListUrl + this.mType;
            }
            return this.mActionListUrl + "/" + this.mType;
        }

        public String toString() {
            return "RemoteService:\n  TYPE :" + this.mType + "\n" + "  URL  :" + this.mActionListUrl + "\n";
        }
    }

}

