.class public Lcom/sonyericsson/cameracommon/review/ShareButton;
.super Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
.source "ShareButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mShareIntent:Landroid/content/Intent;

.field private mShareResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/cameracommon/review/ShareButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/review/ShareButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method private getShareResolveInfoList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    const v3, 0x10040

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareResolveInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 82
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ShareButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareIntent:Landroid/content/Intent;

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->startResolvedActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    .line 83
    return-void
.end method

.method public select()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ShareButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/cameracommon/review/ShareButton;->getShareResolveInfoList(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareResolveInfoList:Ljava/util/List;

    .line 46
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareResolveInfoList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 47
    sget-object v2, Lcom/sonyericsson/cameracommon/review/ShareButton;->TAG:Ljava/lang/String;

    const-string v3, "No activity found."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    return-object v1

    .line 51
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ShareButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/review/ShareButton;->mShareResolveInfoList:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/cameracommon/review/ShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 52
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ShareButton;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showShareSelection(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v1

    goto :goto_0
.end method
