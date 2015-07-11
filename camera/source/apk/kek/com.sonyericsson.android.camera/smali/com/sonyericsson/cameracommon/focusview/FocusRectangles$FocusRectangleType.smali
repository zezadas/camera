.class final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FocusRectangleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

.field public static final enum FACE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

.field public static final enum FAST_OBJECT_TRACKING:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

.field public static final enum FAST_SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

.field public static final enum FAST_TOUCH:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FACE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    .line 283
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    const-string v1, "FAST_SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FAST_SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    .line 284
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    const-string v1, "FAST_OBJECT_TRACKING"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FAST_OBJECT_TRACKING:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    .line 285
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    const-string v1, "FAST_TOUCH"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FAST_TOUCH:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    .line 281
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FACE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FAST_SINGLE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FAST_OBJECT_TRACKING:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->FAST_TOUCH:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

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
    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 281
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusRectangleType;

    return-object v0
.end method
