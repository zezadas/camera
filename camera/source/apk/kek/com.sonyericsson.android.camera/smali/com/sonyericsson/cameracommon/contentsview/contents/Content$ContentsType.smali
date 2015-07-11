.class public final enum Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
.super Ljava/lang/Enum;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum SOUND_PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public static final enum VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 51
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "TIME_SHIFT"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "TIME_SHIFT_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "TIME_SHIFT_VIDEO_120F"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "VIDEO_4K"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    const-string v1, "SOUND_PHOTO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SOUND_PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->TIME_SHIFT_VIDEO_120F:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO_4K:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->SOUND_PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->$VALUES:[Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object v0
.end method
