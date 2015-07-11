.class public final enum Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
.super Ljava/lang/Enum;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

.field public static final enum UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;


# instance fields
.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_CREATE"

    const-string v2, "[SEQ][START UP]"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_NEW_INTENT"

    const-string v2, "[START UP]"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_START"

    const-string v2, "[START UP]"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_RESTART"

    const-string v2, "[START UP]"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_RESUME"

    const-string v2, "[SEQ][START UP]"

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x5

    const-string v3, "[START UP]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_STOP"

    const/4 v2, 0x6

    const-string v3, "[START UP]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_DESTROY"

    const/4 v2, 0x7

    const-string v3, "[START UP]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "NOTIFY_STORE_COMPLETE"

    const/16 v2, 0x8

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "MSG_ON_STORE_CALLBACK_START"

    const/16 v2, 0x9

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "MSG_ON_STORE_CALLBACK_END"

    const/16 v2, 0xa

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "HANDLE_EVENT"

    const/16 v2, 0xb

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SET_CONTENT_VIEWS"

    const/16 v2, 0xc

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 80
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "INFLATE_VIEWS"

    const/16 v2, 0xd

    const-string v3, "[TASK]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STARTUP_TIME"

    const/16 v2, 0xe

    const-string v3, "[SEQ]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "ON_RESUME_TO_SURFACE_CHANGED"

    const/16 v2, 0xf

    const-string v3, "[SURFACE]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 87
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SURFACE_CHANGED"

    const/16 v2, 0x10

    const-string v3, "[SURFACE]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 89
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SURFACE_CHANGED_TO_LAUNCH"

    const/16 v2, 0x11

    const-string v3, "[SURFACE]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 91
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "RESUME_TO_LAUNCH"

    const/16 v2, 0x12

    const-string v3, "[SEQ]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "LAUNCH"

    const/16 v2, 0x13

    const-string v3, "[SEQ]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 95
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "LAUNCH_TO_DISPATCH_DRAW"

    const/16 v2, 0x14

    const-string v3, "[SEQ]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 97
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "OPEN_CAMERA_DEVICE_TASK"

    const/16 v2, 0x15

    const-string v3, "[TASK][DEVICE]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 99
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SWITCH_CAMERA_DEVICE"

    const/16 v2, 0x16

    const-string v3, "[DEVICE]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 101
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SETUP_CAMERA_DEVICE_TASK"

    const/16 v2, 0x17

    const-string v3, "[TASK]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 103
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "CREATE_EFFECT_RENDERER_PACK"

    const/16 v2, 0x18

    const-string v3, "[TASK]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 105
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "LAZY_INITIALIZATION_TASK"

    const/16 v2, 0x19

    const-string v3, "[TASK]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 107
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "SETTUP_RELATED_TO_SURFACE_SIZE"

    const/16 v2, 0x1a

    const-string v3, "[TASK]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 110
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STOT_TO_SHOT"

    const/16 v2, 0x1b

    const-string v3, "[SHOT]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 112
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STOT_TO_ON_PICT_TAKEN"

    const/16 v2, 0x1c

    const-string v3, "[SHOT]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 114
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "RECORDING_START"

    const/16 v2, 0x1d

    const-string v3, "[SHOT]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 116
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "RECORDING_STOP"

    const/16 v2, 0x1e

    const-string v3, "[SHOT]"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "STORE_DATA_INTO_SD_CARD"

    const/16 v2, 0x1f

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 121
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v1, "UPDATE_REMAIN"

    const/16 v2, 0x20

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 50
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SURFACE_CHANGED_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAUNCH_TO_DISPATCH_DRAW:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->CREATE_EFFECT_RENDERER_PACK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->LAZY_INITIALIZATION_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETTUP_RELATED_TO_SURFACE_SIZE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "tag_in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object v0
.end method
