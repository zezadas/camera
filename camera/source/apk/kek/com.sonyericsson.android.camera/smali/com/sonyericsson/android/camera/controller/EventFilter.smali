.class public final enum Lcom/sonyericsson/android/camera/controller/EventFilter;
.super Ljava/lang/Enum;
.source "EventFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/EventFilter$EventFilterMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/controller/EventFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

.field private static sStateTransitionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/controller/EventFilter;",
            "[",
            "Lcom/sonyericsson/android/camera/controller/EventFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "PREVIEWING"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "TOUCH_FOCUS_DRAGGING"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "SELF_TIMER_RUNNING"

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "KEY_ZOOMING"

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "PINCH_ZOOMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    const-string v1, "TOUCH_CAPTURE_HOLDING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->$VALUES:[Lcom/sonyericsson/android/camera/controller/EventFilter;

    .line 44
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera/controller/EventFilter;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_FOCUS_DRAGGING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->SELF_TIMER_RUNNING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->KEY_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    const/16 v2, 0xb

    new-array v2, v2, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PINCH_ZOOMING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->TOUCH_CAPTURE_HOLDING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/sonyericsson/android/camera/controller/EventFilter;->PREVIEWING:Lcom/sonyericsson/android/camera/controller/EventFilter;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public static getEventFilter(Lcom/sonyericsson/android/camera/controller/EventFilter;I)Lcom/sonyericsson/android/camera/controller/EventFilter;
    .locals 1
    .param p0, "current"    # Lcom/sonyericsson/android/camera/controller/EventFilter;
    .param p1, "event"    # I

    .prologue
    .line 142
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->sStateTransitionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/EventFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/EventFilter;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/EventFilter;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventFilter;->$VALUES:[Lcom/sonyericsson/android/camera/controller/EventFilter;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/EventFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/EventFilter;

    return-object v0
.end method
