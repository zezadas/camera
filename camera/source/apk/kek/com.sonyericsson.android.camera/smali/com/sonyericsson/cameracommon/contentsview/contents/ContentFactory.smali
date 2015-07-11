.class public Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;
.super Ljava/lang/Object;
.source "ContentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 3
    .param p0, "contentInfo"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources;->get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources;->get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;-><init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/BurstShotContent;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/BurstShotContent;-><init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
