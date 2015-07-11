.class public Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
.super Ljava/lang/Object;
.source "RemoteDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$1;,
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;,
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;
    }
.end annotation


# static fields
.field private static final API_ACT_TAKE_PICTURE:Ljava/lang/String; = "actTakePicture"

.field private static final API_AWAIT_TAKE_PICTURE:Ljava/lang/String; = "awaitTakePicture"

.field private static final API_GET_APPLICATION_INFO:Ljava/lang/String; = "getApplicationInfo"

.field private static final API_GET_AVAILABLE_API_LIST:Ljava/lang/String; = "getAvailableApiList"

.field private static final API_GET_AVAILABLE_SHOOT_MODE:Ljava/lang/String; = "getAvailableShootMode"

.field private static final API_GET_EVENT:Ljava/lang/String; = "getEvent"

.field private static final API_GET_SUPPORTED_SHOOT_MODE:Ljava/lang/String; = "getSupportedShootMode"

.field private static final API_RECEIVE_EVENT:Ljava/lang/String; = "receiveEvent"

.field private static final API_SET_SHOOT_MODE:Ljava/lang/String; = "setShootMode"

.field private static final API_START_LIVEVIEW:Ljava/lang/String; = "startLiveview"

.field private static final API_START_MOVIE_REC:Ljava/lang/String; = "startMovieRec"

.field private static final API_START_REC_MODE:Ljava/lang/String; = "startRecMode"

.field private static final API_STOP_LIVEVIEW:Ljava/lang/String; = "stopLiveview"

.field private static final API_STOP_MOVIE_REC:Ljava/lang/String; = "stopMovieRec"

.field private static final API_STOP_REC_MODE:Ljava/lang/String; = "stopRecMode"

.field private static final CAMERA_REMOTE_SERVICE:Ljava/lang/String; = "camera"

.field private static final DD_XML_TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final DD_XML_TAG_FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field private static final DD_XML_TAG_ICON:Ljava/lang/String; = "icon"

.field private static final DD_XML_TAG_ICON_LIST:Ljava/lang/String; = "iconList"

.field private static final DD_XML_TAG_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field private static final DD_XML_TAG_MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final DD_XML_TAG_ROOT:Ljava/lang/String; = "root"

.field private static final DD_XML_TAG_UDN:Ljava/lang/String; = "UDN"

.field private static final DD_XML_TAG_URL:Ljava/lang/String; = "url"

.field private static final DD_XML_TAG_WEBAPI_ACTIONLIST_URL:Ljava/lang/String; = "X_ScalarWebAPI_ActionList_URL"

.field private static final DD_XML_TAG_WEBAPI_DEVICE_INFO:Ljava/lang/String; = "X_ScalarWebAPI_DeviceInfo"

.field private static final DD_XML_TAG_WEBAPI_SERVICE:Ljava/lang/String; = "X_ScalarWebAPI_Service"

.field private static final DD_XML_TAG_WEBAPI_SERVICE_LIST:Ljava/lang/String; = "X_ScalarWebAPI_ServiceList"

.field private static final DD_XML_TAG_WEBAPI_SERVICE_TYPE:Ljava/lang/String; = "X_ScalarWebAPI_ServiceType"

.field private static final DD_XML_VAL_MIME_TYPE_IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final ERROR_ALREADY_RUNNING_POLLING_API:I = 0x9dd2

.field public static final ERROR_ANY:I = 0x1

.field public static final ERROR_CAMERA_NOT_READY:I = 0x9dd1

.field public static final ERROR_ILLEGAL_ARGUMENT:I = 0x3

.field public static final ERROR_ILLEGAL_DATA_FORMAT:I = 0x4

.field public static final ERROR_ILLEGAL_REQUEST:I = 0x5

.field public static final ERROR_ILLEGAL_RESPONSE:I = 0x6

.field public static final ERROR_ILLEGAL_STATE:I = 0x7

.field public static final ERROR_ILLEGAL_TYPE:I = 0x8

.field public static final ERROR_INDEX_OUT_OF_BOUNDS:I = 0x9

.field public static final ERROR_NO_SUCH_ELEMENT:I = 0xa

.field public static final ERROR_NO_SUCH_FIELD:I = 0xb

.field public static final ERROR_NO_SUCH_METHOD:I = 0xc

.field public static final ERROR_NULL_POINTER:I = 0xd

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_SHOOTING_FAIL:I = 0x9dd0

.field public static final ERROR_STILL_CAPTURING_NOT_FINISHED:I = 0x9dd3

.field public static final ERROR_TIMEOUT:I = 0x2

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0xf

.field public static final ERROR_UNSUPPORTED_VERSION:I = 0xe

.field private static final IS_DEBUG:Z = false

.field private static final JSON_RPC_KEY_CAMERA_STATUS:Ljava/lang/String; = "cameraStatus"

.field private static final JSON_RPC_KEY_CURRENT_SHOOT_MODE:Ljava/lang/String; = "currentShootMode"

.field private static final JSON_RPC_KEY_ERROR:Ljava/lang/String; = "error"

.field private static final JSON_RPC_KEY_ID:Ljava/lang/String; = "id"

.field private static final JSON_RPC_KEY_METHOD:Ljava/lang/String; = "method"

.field private static final JSON_RPC_KEY_NAMES:Ljava/lang/String; = "names"

.field private static final JSON_RPC_KEY_PARAMS:Ljava/lang/String; = "params"

.field private static final JSON_RPC_KEY_RESULT:Ljava/lang/String; = "result"

.field private static final JSON_RPC_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final JSON_RPC_KEY_VERSION:Ljava/lang/String; = "version"

.field private static final JSON_RPC_VAL_AVAILABLE_API_LIST:Ljava/lang/String; = "availableApiList"

.field private static final JSON_RPC_VAL_CAMERA_STATUS:Ljava/lang/String; = "cameraStatus"

.field private static final JSON_RPC_VAL_SHOOT_MODE:Ljava/lang/String; = "shootMode"

.field private static final JSON_RPC_VAL_VERSION:Ljava/lang/String; = "1.0"

.field public static final SHOOTMODE_MOVIE:Ljava/lang/String; = "movie"

.field public static final SHOOTMODE_STILL:Ljava/lang/String; = "still"

.field public static final STATUS_IDLE:Ljava/lang/String; = "IDLE"

.field public static final STATUS_MOVIE_RECORDING:Ljava/lang/String; = "MovieRecording"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableShootModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraRemoteApiVersion:Ljava/lang/String;

.field private mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

.field private mCurrentShootMode:Ljava/lang/String;

.field private mDeviceDescriptionUrl:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;

.field private mRemoteCameraApiSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteServiceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestId:I

.field private mSupportedShootModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUdn:Ljava/lang/String;

.field private mUiIconUrl:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUuid:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mDeviceDescriptionUrl:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mFriendlyName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUiIconUrl:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mModelName:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUdn:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteApiVersion:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteServiceSet:Ljava/util/Set;

    .line 60
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    .line 68
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCurrentShootMode:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRequestId:I

    .line 1330
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;

    .line 1401
    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    return-object p1
.end method

.method private static createRemoteDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .locals 19
    .param p0, "deviceUuid"    # Ljava/lang/String;
    .param p1, "deviceDescriptionUrl"    # Ljava/lang/String;
    .param p2, "deviceDescriptionXml"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-direct {v11}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;-><init>()V

    .line 374
    .local v11, "remoteDevice":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    move-object/from16 v0, p0

    iput-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUuid:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mDeviceDescriptionUrl:Ljava/lang/String;

    .line 378
    invoke-static/range {p2 .. p2}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->parse(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v12

    .line 379
    .local v12, "rootElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    if-eqz v12, :cond_3

    const-string v17, "root"

    invoke-virtual {v12}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 381
    const-string v17, "device"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v2

    .line 382
    .local v2, "deviceElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    if-eqz v2, :cond_3

    .line 383
    const-string v17, "friendlyName"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mFriendlyName:Ljava/lang/String;

    .line 385
    const-string v17, "modelName"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mModelName:Ljava/lang/String;

    .line 386
    const-string v17, "UDN"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUdn:Ljava/lang/String;

    .line 389
    const-string v17, "iconList"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v8

    .line 390
    .local v8, "iconListElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    if-eqz v8, :cond_1

    .line 391
    const-string v17, "icon"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 392
    .local v7, "iconElms":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .line 394
    .local v3, "eachElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    const-string v17, "image/png"

    const-string v18, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 396
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "locUri":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Uri;->getHostFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "hostUrl":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUiIconUrl:Ljava/lang/String;

    goto :goto_0

    .line 404
    .end local v3    # "eachElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .end local v5    # "hostUrl":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "iconElms":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;>;"
    .end local v9    # "locUri":Ljava/lang/String;
    :cond_1
    const-string v17, "X_ScalarWebAPI_DeviceInfo"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v14

    .line 405
    .local v14, "webApiElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    if-eqz v14, :cond_3

    .line 406
    const-string v17, "X_ScalarWebAPI_ServiceList"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v16

    .line 408
    .local v16, "webApiServiceListElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    if-eqz v16, :cond_3

    .line 409
    const-string v17, "X_ScalarWebAPI_Service"

    invoke-virtual/range {v16 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 411
    .local v15, "webApiServiceElms":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;>;"
    if-eqz v15, :cond_3

    .line 412
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    .line 413
    .local v4, "eachWebApiServiceElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    const-string v17, "X_ScalarWebAPI_ServiceType"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 416
    .local v13, "serviceType":Ljava/lang/String;
    const-string v17, "X_ScalarWebAPI_ActionList_URL"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getChild(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "actionUrl":Ljava/lang/String;
    new-instance v10, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v13, v1, v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$1;)V

    .line 421
    .local v10, "remService":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;
    iget-object v0, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteServiceSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    const-string v17, "camera"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 425
    iput-object v10, v11, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    goto :goto_1

    .line 434
    .end local v1    # "actionUrl":Ljava/lang/String;
    .end local v2    # "deviceElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .end local v4    # "eachWebApiServiceElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "iconListElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .end local v10    # "remService":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;
    .end local v13    # "serviceType":Ljava/lang/String;
    .end local v14    # "webApiElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    .end local v15    # "webApiServiceElms":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;>;"
    .end local v16    # "webApiServiceListElm":Lcom/sonymobile/cameracommon/remotedevice/util/XmlElement;
    :cond_3
    return-object v11
.end method

.method public static getCameraStatusFrom(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .param p0, "resJson"    # Lorg/json/JSONObject;

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 708
    .local v0, "cameraStatus":Ljava/lang/String;
    const/4 v2, 0x1

    .line 711
    .local v2, "indexOfCameraStatus":I
    :try_start_0
    const-string v6, "result"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 712
    .local v4, "resultJson":Lorg/json/JSONArray;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 713
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 714
    .local v3, "newCameraStatusJson":Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "type":Ljava/lang/String;
    const-string v6, "cameraStatus"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    const-string v6, "cameraStatus"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .end local v3    # "newCameraStatusJson":Lorg/json/JSONObject;
    .end local v4    # "resultJson":Lorg/json/JSONArray;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 718
    .restart local v3    # "newCameraStatusJson":Lorg/json/JSONObject;
    .restart local v4    # "resultJson":Lorg/json/JSONArray;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v7, "getCameraStatusFrom() : Type is not available"

    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 723
    .end local v3    # "newCameraStatusJson":Lorg/json/JSONObject;
    .end local v4    # "resultJson":Lorg/json/JSONArray;
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v7, "getCameraStatusFrom() : Failed to read resJson"

    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 721
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "resultJson":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    sget-object v6, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v7, "getCameraStatusFrom() : Invalid Index"

    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getDeviceDescriptionXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "deviceDescriptionUrl"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 345
    .local v2, "result":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 346
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v4, "load() : Failed to load description XML."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 351
    :cond_0
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->readInputStreamAsString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "deviceDescXml":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 353
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v4, "load() : Failed to read description XML."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v4, "load() : Failed to close InputStream."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getErrorCode(Lorg/json/JSONObject;)I
    .locals 3
    .param p0, "resJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1310
    const/4 v0, 0x0

    .line 1312
    .local v0, "err":I
    if-eqz p0, :cond_1

    const-string v2, "error"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1313
    const-string v2, "error"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1314
    .local v1, "errorJson":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 1320
    .end local v1    # "errorJson":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return v0

    .line 1315
    :cond_1
    if-nez p0, :cond_0

    .line 1317
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getNewAvailabaleApiSetFrom(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 10
    .param p0, "resJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 673
    .local v5, "newApiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 676
    .local v2, "indexOfAvailableApi":I
    :try_start_0
    const-string v8, "result"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 677
    .local v6, "resultJson":Lorg/json/JSONArray;
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 678
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 679
    .local v4, "newApiListJson":Lorg/json/JSONObject;
    const-string v8, "type"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 680
    .local v7, "type":Ljava/lang/String;
    const-string v8, "availableApiList"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 681
    const-string v8, "names"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 682
    .local v3, "newApiJson":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 683
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v1    # "i":I
    .end local v3    # "newApiJson":Lorg/json/JSONArray;
    :cond_0
    sget-object v8, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v9, "getNewAvailableApiSetFrom() : Type is not available"

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .end local v4    # "newApiListJson":Lorg/json/JSONObject;
    .end local v6    # "resultJson":Lorg/json/JSONArray;
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 689
    .restart local v6    # "resultJson":Lorg/json/JSONArray;
    :cond_2
    sget-object v8, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v9, "getNewAvailableApiSetFrom() : Invalid Index"

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 691
    .end local v6    # "resultJson":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v9, "getNewAvailableApiSetFrom() : Failed to read resJson"

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPostImageUrlFrom(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p0, "resJson"    # Lorg/json/JSONObject;

    .prologue
    .line 1026
    const/4 v1, 0x0

    .line 1029
    .local v1, "postImageUrl":Ljava/lang/String;
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1030
    .local v2, "resultJson":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 1031
    .local v3, "urlJson":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1032
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1041
    .end local v2    # "resultJson":Lorg/json/JSONArray;
    .end local v3    # "urlJson":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get post image URL."

    invoke-static {v4, v5}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getShootModeFrom(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .param p0, "resJson"    # Lorg/json/JSONObject;

    .prologue
    .line 738
    const/4 v4, 0x0

    .line 740
    .local v4, "shootMode":Ljava/lang/String;
    const/16 v1, 0x15

    .line 743
    .local v1, "indexOfShootMode":I
    :try_start_0
    const-string v6, "result"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 744
    .local v3, "resultJson":Lorg/json/JSONArray;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 745
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 746
    .local v2, "newShootModeJson":Lorg/json/JSONObject;
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, "type":Ljava/lang/String;
    const-string v6, "shootMode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 748
    const-string v6, "currentShootMode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    .end local v2    # "newShootModeJson":Lorg/json/JSONObject;
    .end local v3    # "resultJson":Lorg/json/JSONArray;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 750
    .restart local v2    # "newShootModeJson":Lorg/json/JSONObject;
    .restart local v3    # "resultJson":Lorg/json/JSONArray;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v7, "getShootModeFrom() : Type is not available"

    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    .end local v2    # "newShootModeJson":Lorg/json/JSONObject;
    .end local v3    # "resultJson":Lorg/json/JSONArray;
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v7, "getShootModeFrom() : Failed to read resJson"

    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 753
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "resultJson":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    sget-object v6, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v7, "getShootModeFrom() : Invalid Index"

    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isErrorResponse(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "resJson"    # Lorg/json/JSONObject;

    .prologue
    .line 1299
    if-eqz p0, :cond_0

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGetApplicationInfoApiAvailable()Z
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    const-string v1, "getApplicationInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGetAvailableShootModeAvailable()Z
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    const-string v1, "getAvailableShootMode"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGetEventAvailableLocal()Z
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    const-string v1, "getEvent"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGetSupportedShootModeAvailable()Z
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    const-string v1, "getSupportedShootMode"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isReceiveEventAvailableLocal()Z
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    const-string v1, "receiveEvent"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .locals 6
    .param p0, "deviceUuid"    # Ljava/lang/String;
    .param p1, "deviceDescriptionUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-static {p1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getDeviceDescriptionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "deviceDescriptionXml":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 318
    sget-object v4, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v5, "Failed to getDeviceDescriptionXml."

    invoke-static {v4, v5}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 339
    :cond_0
    :goto_0
    return-object v2

    .line 323
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->createRemoteDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    move-result-object v2

    .line 329
    .local v2, "remoteDevice":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    invoke-direct {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->loadDefaultCapability()Z

    move-result v1

    .line 330
    .local v1, "isSuccess":Z
    if-nez v1, :cond_0

    .line 331
    sget-object v4, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v5, "Failed to load capability."

    invoke-static {v4, v5}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->release()V

    move-object v2, v3

    .line 333
    goto :goto_0
.end method

.method private loadDefaultCapability()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isCamera()Z

    move-result v10

    if-nez v10, :cond_0

    .line 441
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v10, "Camera remote service is not supported"

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    return v8

    .line 445
    :cond_0
    const/4 v4, 0x0

    .line 448
    .local v4, "resJson":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcGetAvailableApiList()Lorg/json/JSONObject;

    move-result-object v4

    .line 449
    if-eqz v4, :cond_1

    .line 451
    :try_start_0
    const-string v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 452
    .local v5, "resultJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 454
    .local v1, "apiListJsonArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 455
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 456
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "api":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 460
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "apiListJsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "resultJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 468
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isGetApplicationInfoApiAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 469
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcGetApplicationInfo()Lorg/json/JSONObject;

    move-result-object v4

    .line 470
    if-eqz v4, :cond_2

    .line 472
    :try_start_1
    const-string v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteApiVersion:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isGetSupportedShootModeAvailable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 484
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcGetSupportedShootMode()Lorg/json/JSONObject;

    move-result-object v4

    .line 485
    if-eqz v4, :cond_3

    .line 487
    :try_start_2
    const-string v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 488
    .restart local v5    # "resultJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    .line 490
    .local v7, "shootModeListJsonArray":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 491
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 492
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "shootMode":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 474
    .end local v3    # "i":I
    .end local v5    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v6    # "shootMode":Ljava/lang/String;
    .end local v7    # "shootModeListJsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    .line 476
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 496
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 497
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v10, "Failed to get supported shoot modes."

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 503
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isGetAvailableShootModeAvailable()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 504
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcGetAvailableShootMode()Lorg/json/JSONObject;

    move-result-object v4

    .line 505
    if-eqz v4, :cond_4

    .line 507
    :try_start_3
    const-string v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 510
    .restart local v5    # "resultJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCurrentShootMode:Ljava/lang/String;

    .line 513
    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 514
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    .line 515
    .restart local v7    # "shootModeListJsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 516
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 518
    .restart local v6    # "shootMode":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 520
    .end local v3    # "i":I
    .end local v5    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v6    # "shootMode":Ljava/lang/String;
    .end local v7    # "shootModeListJsonArray":Lorg/json/JSONArray;
    :catch_3
    move-exception v2

    .line 521
    .restart local v2    # "e":Lorg/json/JSONException;
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v10, "Failed to get available shoot modes."

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    move v8, v9

    .line 534
    goto/16 :goto_0
.end method

.method public static logError(I)V
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 1205
    sparse-switch p0, :sswitch_data_0

    .line 1287
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Unexpected ErrorCode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :goto_0
    :sswitch_0
    return-void

    .line 1211
    :sswitch_1
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ANY"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :sswitch_2
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :sswitch_3
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ILLEGAL_ARGUMENT"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    :sswitch_4
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ILLEGAL_DATA_FORMAT"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :sswitch_5
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ILLEGAL_REQUEST"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :sswitch_6
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ILLEGAL_RESPONSE"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1235
    :sswitch_7
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ILLEGAL_STATE"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :sswitch_8
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ILLEGAL_TYPE"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    :sswitch_9
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_INDEX_OUT_OF_BOUNDS"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    :sswitch_a
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_NO_SUCH_ELEMENT"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1251
    :sswitch_b
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_NO_SUCH_FIELD"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    :sswitch_c
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_NO_SUCH_METHOD"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1259
    :sswitch_d
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_NULL_POINTER"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1263
    :sswitch_e
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_UNSUPPORTED_VERSION"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1267
    :sswitch_f
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_UNSUPPORTED_OPERATION"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :sswitch_10
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_SHOOTING_FAIL"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1275
    :sswitch_11
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_CAMERA_NOT_READY"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1279
    :sswitch_12
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_ALREADY_RUNNING_POLLING_API"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1283
    :sswitch_13
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v1, "ErrorCode = ERROR_STILL_CAPTURING_NOT_FINISHED"

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1205
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x9dd0 -> :sswitch_10
        0x9dd1 -> :sswitch_11
        0x9dd2 -> :sswitch_12
        0x9dd3 -> :sswitch_13
    .end sparse-switch
.end method

.method private static requestRpc(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "requestJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 1135
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1141
    .local v3, "result":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1142
    .local v2, "resJsonString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1143
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get input stream."

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1175
    :goto_0
    return-object v1

    .line 1147
    :cond_0
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->readInputStreamAsString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    if-nez v2, :cond_1

    .line 1150
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to read result."

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v4

    .line 1160
    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to close InputStream."

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1165
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    .line 1167
    .local v1, "resJson":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "resJson":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "resJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 1168
    .end local v1    # "resJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 1169
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to create return result JSON."

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v4

    .line 1171
    goto :goto_0
.end method

.method private static rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "requestId"    # I
    .param p2, "rpcMethod"    # Ljava/lang/String;
    .param p3, "rpcParams"    # Lorg/json/JSONArray;

    .prologue
    .line 1109
    const/4 v1, 0x0

    .line 1111
    .local v1, "reqJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "method"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "params"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1122
    invoke-static {p0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->requestRpc(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1125
    :goto_0
    return-object v2

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v4, "Failed to create request JSON."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private rpcGetApplicationInfo()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 564
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "getApplicationInfo"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 571
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcGetAvailableApiList()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 547
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "getAvailableApiList"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 554
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcGetAvailableShootMode()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 598
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "getAvailableShootMode"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 605
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcGetSupportedShootMode()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 581
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "getSupportedShootMode"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 588
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcSetShootMode(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "shootMode"    # Ljava/lang/String;

    .prologue
    .line 960
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 961
    .local v0, "params":Lorg/json/JSONArray;
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 964
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v3

    const-string v4, "setShootMode"

    invoke-static {v2, v3, v4, v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v1

    .line 971
    .local v1, "resJson":Lorg/json/JSONObject;
    return-object v1
.end method

.method private rpcStartLiveview()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 829
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "startLiveview"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 836
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcStartRecMode()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 855
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "startRecMode"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 862
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcStopLiveview()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 842
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "stopLiveview"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 849
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method private rpcStopRecMode()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 868
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "stopRecMode"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 875
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method


# virtual methods
.method public changeToMovieMode()Z
    .locals 3

    .prologue
    .line 943
    const-string v1, "movie"

    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcSetShootMode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 945
    .local v0, "resJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change ShootMode to movie"

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/4 v1, 0x0

    .line 951
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public changeToStillMode()Z
    .locals 3

    .prologue
    .line 925
    const-string v1, "still"

    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcSetShootMode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 927
    .local v0, "resJson":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v2, "Failed to change ShootMode to still"

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/4 v1, 0x0

    .line 933
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeviceDescriptionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mDeviceDescriptionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventObserverCallback()Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getNextRequestId()I
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method public getUiIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUiIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGetEventAvailable()Z
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isGetEventAvailableLocal()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isReceiveEventAvailableLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovieRecAvailable()Z
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    const-string v1, "movie"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMovieRecSupported()Z
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    const-string v1, "movie"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStillCaptureAvailable()Z
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    const-string v1, "still"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isStillCaptureSupported()Z
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    const-string v1, "still"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUuid:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mDeviceDescriptionUrl:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mFriendlyName:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUiIconUrl:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mModelName:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUdn:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    .line 132
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteApiVersion:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteServiceSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 139
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCurrentShootMode:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public rpcActTakePicture()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 985
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v4

    const-string v5, "actTakePicture"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    .line 992
    .local v2, "resJson":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const/4 v1, 0x1

    .line 995
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getErrorCode(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1001
    :goto_0
    const v3, 0x9dd3

    if-ne v1, v3, :cond_0

    .line 1005
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v4

    const-string v5, "awaitTakePicture"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1014
    .end local v1    # "errorCode":I
    :cond_0
    return-object v2

    .line 996
    .restart local v1    # "errorCode":I
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get response"

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public rpcGetEvent(Z)Lorg/json/JSONObject;
    .locals 5
    .param p1, "isImmediateReturnRequired"    # Z

    .prologue
    .line 639
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 640
    .local v1, "reqArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    .line 641
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 648
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isReceiveEventAvailableLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    const-string v0, "receiveEvent"

    .line 654
    .local v0, "api":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v4

    invoke-static {v3, v4, v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    .line 661
    .local v2, "resJson":Lorg/json/JSONObject;
    return-object v2

    .line 643
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "resJson":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_0

    .line 651
    :cond_1
    const-string v0, "getEvent"

    .restart local v0    # "api":Ljava/lang/String;
    goto :goto_1
.end method

.method public rpcStartMovieRec()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "startMovieRec"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1066
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method public rpcStopMovieRec()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->getEndPointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNextRequestId()I

    move-result v2

    const-string v3, "stopMovieRec"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpc(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1089
    .local v0, "resJson":Lorg/json/JSONObject;
    return-object v0
.end method

.method public startLiveview()Ljava/lang/String;
    .locals 7

    .prologue
    .line 774
    const/4 v1, 0x0

    .line 775
    .local v1, "liveviewUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 777
    .local v3, "resJson":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcStartRecMode()Lorg/json/JSONObject;

    move-result-object v3

    .line 778
    invoke-static {v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 779
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to startRecMode()"

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcStartLiveview()Lorg/json/JSONObject;

    move-result-object v3

    .line 783
    invoke-static {v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 784
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to rpcStartLiveview()"

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 799
    .end local v1    # "liveviewUrl":Ljava/lang/String;
    .local v2, "liveviewUrl":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 789
    .end local v2    # "liveviewUrl":Ljava/lang/String;
    .restart local v1    # "liveviewUrl":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 790
    .local v4, "result":Lorg/json/JSONArray;
    const/4 v5, 0x1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 792
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v4    # "result":Lorg/json/JSONArray;
    :cond_2
    :goto_1
    move-object v2, v1

    .line 799
    .end local v1    # "liveviewUrl":Ljava/lang/String;
    .restart local v2    # "liveviewUrl":Ljava/lang/String;
    goto :goto_0

    .line 794
    .end local v2    # "liveviewUrl":Ljava/lang/String;
    .restart local v1    # "liveviewUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get Liveview URL"

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopLiveview()Z
    .locals 4

    .prologue
    .line 808
    const/4 v1, 0x1

    .line 809
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 811
    .local v0, "resJson":Lorg/json/JSONObject;
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcStopLiveview()Lorg/json/JSONObject;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    sget-object v2, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v3, "Failed to rpcStopLiveview()"

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const/4 v1, 0x0

    .line 817
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcStopRecMode()Lorg/json/JSONObject;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isErrorResponse(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    sget-object v2, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->TAG:Ljava/lang/String;

    const-string v3, "Failed to rpcStopRecMode()"

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v1, 0x0

    .line 823
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  UUID        : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  DD URL      : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mDeviceDescriptionUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  UI LABEL    : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  UI ICON URL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUiIconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  MODEL NAME  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mModelName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  UDN         : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mUdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  CAM RPC VER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteApiVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteServiceSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    .line 95
    .local v2, "eachRemoteService":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    .end local v2    # "eachRemoteService":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;
    :cond_0
    const-string v5, "Camera RemoteService:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCameraRemoteService:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;

    invoke-virtual {v6}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$RemoteService;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v5, "RemoteCameraAPI:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "eachApi":Ljava/lang/String;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 106
    .end local v1    # "eachApi":Ljava/lang/String;
    :cond_1
    const-string v5, "------------------------------------------------------------\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v5, "ShootModes : Supported ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mSupportedShootModes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "eachShootMode":Ljava/lang/String;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 111
    .end local v3    # "eachShootMode":Ljava/lang/String;
    :cond_2
    const-string v5, "ShootModes : Available ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mAvailableShootModes:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    .restart local v3    # "eachShootMode":Ljava/lang/String;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 115
    .end local v3    # "eachShootMode":Ljava/lang/String;
    :cond_3
    const-string v5, "ShootMode  : Current = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mCurrentShootMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v5, "------------------------------------------------------------\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
