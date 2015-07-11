.class public final enum Lcom/sonyericsson/android/camera/controller/ZoomDirection;
.super Ljava/lang/Enum;
.source "ZoomDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/controller/ZoomDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/ZoomDirection;

.field public static final enum IN:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

.field public static final enum IN_OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

.field public static final enum OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;


# instance fields
.field private mScaleLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    const-string v1, "IN_OUT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN_OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN_OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->$VALUES:[Lcom/sonyericsson/android/camera/controller/ZoomDirection;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(FF)Lcom/sonyericsson/android/camera/controller/ZoomDirection;
    .locals 1
    .param p0, "currentLength"    # F
    .param p1, "lastLength"    # F

    .prologue
    .line 36
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 41
    :goto_0
    return-object v0

    .line 38
    :cond_0
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    goto :goto_0
.end method

.method public static get(ILcom/sonyericsson/android/camera/ExtendedActivity;)Lcom/sonyericsson/android/camera/controller/ZoomDirection;
    .locals 3
    .param p0, "keyCode"    # I
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/ExtendedActivity;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 26
    .local v0, "isLandscape":Z
    :goto_0
    const/16 v1, 0x18

    if-ne p0, v1, :cond_1

    .line 27
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .line 31
    :goto_1
    return-object v1

    .line 23
    .end local v0    # "isLandscape":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    .restart local v0    # "isLandscape":Z
    :cond_1
    const/16 v1, 0x19

    if-ne p0, v1, :cond_2

    .line 29
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    goto :goto_1

    .line 31
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->NONE:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/ZoomDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/ZoomDirection;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->$VALUES:[Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/ZoomDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    return-object v0
.end method


# virtual methods
.method public getScaleLength()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->mScaleLength:F

    return v0
.end method

.method public setScaleLength(F)V
    .locals 0
    .param p1, "length"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->mScaleLength:F

    .line 47
    return-void
.end method
