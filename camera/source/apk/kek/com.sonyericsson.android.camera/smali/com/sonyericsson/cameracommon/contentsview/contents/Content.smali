.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/contents/optionmenu/OptionOperating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;,
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCountText:Ljava/lang/String;

.field private final mExtraIconId:I

.field protected final mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

.field private final mPlayableIconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V
    .locals 0
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .param p2, "extraIconId"    # I
    .param p3, "playIconId"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 110
    iput p2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    .line 111
    iput p3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    .line 112
    return-void
.end method


# virtual methods
.method public getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    return-object v0
.end method

.method public getCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mCountText:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraIconResourceId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    return v0
.end method

.method public getPlayIconResourceId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->getSnapShot()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public shouldShowExtraIcon()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowPlayableIcon()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewContent(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget v2, v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 170
    return-void
.end method
