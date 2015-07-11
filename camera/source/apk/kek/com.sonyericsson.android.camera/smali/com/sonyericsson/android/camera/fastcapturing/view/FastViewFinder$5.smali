.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0

    .prologue
    .line 4016
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 12
    .param p1, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    const/4 v5, 0x0

    .line 4019
    if-eqz p1, :cond_0

    .line 4020
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v10

    .line 4021
    .local v10, "ci":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    iget-object v0, v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4023
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$3000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    const v1, 0x7f0f006c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 4025
    .local v11, "viewFinder":Landroid/widget/FrameLayout;
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4028
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$3100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setDuration(J)V

    .line 4030
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$3100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showRightIcons(Ljava/lang/Boolean;)V

    .line 4031
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mAutoReview:Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$3100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v1

    iget-object v2, v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v3, v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    new-instance v4, Landroid/graphics/Rect;

    iget v6, v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    iget v7, v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v10, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z

    .line 4047
    .end local v10    # "ci":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .end local v11    # "viewFinder":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 4044
    .restart local v10    # "ci":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$5;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->viewContent(Landroid/app/Activity;)V

    goto :goto_0
.end method
