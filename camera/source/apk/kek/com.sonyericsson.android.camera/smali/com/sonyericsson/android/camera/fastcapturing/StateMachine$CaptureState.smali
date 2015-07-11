.class public final enum Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_FINALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_HI_SPEED_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_ZOOMING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_ZOOMING_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_STANDBY_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING_STARTING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_ZOOMING_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_ZOOMING_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

.field public static final enum STATE_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;


# instance fields
.field final mCanApplicationBeFinished:Z

.field final mCanHandleAsynchronizedTask:Z

.field final mCanHandleWearableCaptureRequest:Z

.field final mCanSwitchPhotoVideoMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v1, "STATE_NONE"

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 209
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_INITIALIZE"

    move v5, v10

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 211
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_RESUME"

    move v5, v11

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 213
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_CAMERA_SWITCHING"

    move v5, v12

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 215
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_BASE"

    move v5, v13

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 217
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_ZOOMING_BASE"

    const/4 v5, 0x5

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 219
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_STANDBY"

    const/4 v5, 0x6

    move v6, v10

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 221
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_READY_FOR_RECORDING"

    const/4 v5, 0x7

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 223
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_SELFTIMER_COUNTDOWN"

    const/16 v5, 0x8

    move v6, v10

    move v7, v2

    move v8, v2

    move v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 225
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_ZOOMING"

    const/16 v5, 0x9

    move v6, v2

    move v7, v10

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 227
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_ZOOMING_IN_TOUCH"

    const/16 v5, 0xa

    move v6, v2

    move v7, v10

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 229
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_STANDBY_DIALOG"

    const/16 v5, 0xb

    move v6, v10

    move v7, v10

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 231
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START"

    const/16 v5, 0xc

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 233
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_AF_SEARCH"

    const/16 v5, 0xd

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 235
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_AF_SEARCH_IN_TOUCH"

    const/16 v5, 0xe

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 237
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION"

    const/16 v5, 0xf

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 239
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_AF_DONE"

    const/16 v5, 0x10

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 241
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_AF_DONE_IN_TOUCH"

    const/16 v5, 0x11

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 243
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v5, 0x12

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 245
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_CAPTURE"

    const/16 v5, 0x13

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 247
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE"

    const/16 v5, 0x14

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 249
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST"

    const/16 v5, 0x15

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 251
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_CAPTURE_HI_SPEED_BURST"

    const/16 v5, 0x16

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_HI_SPEED_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 253
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PHOTO_STORE"

    const/16 v5, 0x17

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 255
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_BASE"

    const/16 v5, 0x18

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 257
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_ZOOMING_BASE"

    const/16 v5, 0x19

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 259
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_RECORDING_STARTING"

    const/16 v5, 0x1a

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_STARTING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 261
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_RECORDING"

    const/16 v5, 0x1b

    move v6, v10

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 263
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_CAPTURE_WHILE_RECORDING"

    const/16 v5, 0x1c

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 265
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING"

    const/16 v5, 0x1d

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 267
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_ZOOMING_WHILE_RECORDING"

    const/16 v5, 0x1e

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 269
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING"

    const/16 v5, 0x1f

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 271
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_STORE"

    const/16 v5, 0x20

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 273
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_PAUSE"

    const/16 v5, 0x21

    move v6, v2

    move v7, v10

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 275
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_WARNING"

    const/16 v5, 0x22

    move v6, v10

    move v7, v10

    move v8, v10

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 277
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_FINALIZE"

    const/16 v5, 0x23

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 279
    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_RECORDING_PAUSING"

    const/16 v5, 0x24

    move v6, v10

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZZ)V

    sput-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 206
    const/16 v0, 0x25

    new-array v0, v0, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_HI_SPEED_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_BASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_STARTING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZ)V
    .locals 0
    .param p3, "canHandleLazyInitializationTask"    # Z
    .param p4, "canBeFinished"    # Z
    .param p5, "canSwitchPhotoVideoMode"    # Z
    .param p6, "canHandleWearableCaptureRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ)V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 301
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    .line 302
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    .line 303
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanSwitchPhotoVideoMode:Z

    .line 304
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanHandleWearableCaptureRequest:Z

    .line 305
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    return-object v0
.end method


# virtual methods
.method public canApplicationBeFinished()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    return v0
.end method

.method public canHandleAsynchronizedTask()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    return v0
.end method

.method public canHandleWearableCaptureRequest()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanHandleWearableCaptureRequest:Z

    return v0
.end method

.method public canSwitchPhotoVideoMode()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->mCanSwitchPhotoVideoMode:Z

    return v0
.end method
