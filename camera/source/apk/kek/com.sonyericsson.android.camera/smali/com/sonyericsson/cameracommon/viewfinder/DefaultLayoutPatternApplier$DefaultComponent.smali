.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;
.super Ljava/lang/Enum;
.source "DefaultLayoutPatternApplier.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DefaultComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum BALLOON_TIPS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum CAPTURE_METHOD_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum CONTENT_VIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum GEOTAG_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum MODE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum MODE_SELECTOR_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum RECORDING_PROGRESS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum RIGHT_BOTTOM_CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum STORAGE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum THERMAL_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

.field public static final enum ZOOM_BAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "CAPTURE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "CAPTURE_METHOD_INDICATORS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_METHOD_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "MODE_INDICATORS"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "GEOTAG_INDICATORS"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->GEOTAG_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "STORAGE_INDICATORS"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->STORAGE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "ZOOM_BAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->ZOOM_BAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "CONTENT_VIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CONTENT_VIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "MODE_SELECTOR_BUTTON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_SELECTOR_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 40
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "BALLOON_TIPS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->BALLOON_TIPS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 41
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "RECORDING_PROGRESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RECORDING_PROGRESS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "RIGHT_BOTTOM_CAPTURE_BUTTON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RIGHT_BOTTOM_CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    const-string v1, "THERMAL_INDICATORS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->THERMAL_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    .line 31
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_METHOD_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->GEOTAG_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->STORAGE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->ZOOM_BAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CONTENT_VIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_SELECTOR_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->BALLOON_TIPS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RECORDING_PROGRESS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RIGHT_BOTTOM_CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->THERMAL_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    return-object v0
.end method
