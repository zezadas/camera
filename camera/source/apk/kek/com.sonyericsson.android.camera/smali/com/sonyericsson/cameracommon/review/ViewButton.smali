.class public Lcom/sonyericsson/cameracommon/review/ViewButton;
.super Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
.source "ViewButton.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/cameracommon/review/ViewButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/ViewButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public select()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ViewButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ViewButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ViewButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/sonyericsson/cameracommon/review/ViewButton;->TAG:Ljava/lang/String;

    const-string v2, "launchAlbum: failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
