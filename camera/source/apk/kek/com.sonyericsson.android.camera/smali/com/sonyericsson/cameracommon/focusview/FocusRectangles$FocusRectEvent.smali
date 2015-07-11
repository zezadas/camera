.class public final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusRectEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum CLEAR_ALL:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_AUTO_FOCUS_STARTED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_FACE_DETECTED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_FACE_LOST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_OBJECT_LOST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_OBJECT_TRACKED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_UI_COMPONENT_OVERLAID:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum ON_UI_COMPONENT_REMOVED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum SET_FOCUS_POSITION:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum START_FACE_DETECTION:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

.field public static final enum START_OBJECT_TRACKING:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_AUTO_FOCUS_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_AUTO_FOCUS_STARTED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 132
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_AUTO_FOCUS_DONE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 133
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "SET_FOCUS_POSITION"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->SET_FOCUS_POSITION:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 134
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "START_FACE_DETECTION"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->START_FACE_DETECTION:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 135
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_FACE_DETECTED"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_FACE_DETECTED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 136
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_FACE_LOST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_FACE_LOST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 137
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "START_OBJECT_TRACKING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->START_OBJECT_TRACKING:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 138
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_OBJECT_TRACKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_OBJECT_TRACKED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 139
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_OBJECT_LOST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_OBJECT_LOST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 140
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "CLEAR_ALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->CLEAR_ALL:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 141
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_UI_COMPONENT_OVERLAID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_UI_COMPONENT_OVERLAID:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 142
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    const-string v1, "ON_UI_COMPONENT_REMOVED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_UI_COMPONENT_REMOVED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    .line 130
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_AUTO_FOCUS_STARTED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->SET_FOCUS_POSITION:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->START_FACE_DETECTION:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_FACE_DETECTED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_FACE_LOST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->START_OBJECT_TRACKING:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_OBJECT_TRACKED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_OBJECT_LOST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->CLEAR_ALL:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_UI_COMPONENT_OVERLAID:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->ON_UI_COMPONENT_REMOVED:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectEvent;

    return-object v0
.end method
