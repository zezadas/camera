.class public final enum Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StaticEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_FACE_IDENTEFIED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_PHOTO_STACK_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 433
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 434
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_SCENE_MODE_CHANGED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 435
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_FACE_DETECTED"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 436
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_FACE_IDENTEFIED"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_FACE_IDENTEFIED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 437
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_OBJECT_TRACKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 438
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_ORIENTATION_CHANGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 439
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_LAZY_INITIALIZATION_TASK_RUN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    .line 431
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_FACE_IDENTEFIED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 431
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->$VALUES:[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    return-object v0
.end method
