.class Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;
.super Ljava/lang/Object;
.source "VideoSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mFrameRate:Ljava/lang/Integer;

.field private mInOutputFormat:Ljava/lang/Integer;

.field private mInQuality:Ljava/lang/Integer;

.field private mIsProfileLoaded:Z

.field private mPreloadProfile:Landroid/media/CamcorderProfile;

.field private mResultExt:Ljava/lang/String;

.field private mResultMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    .line 626
    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    .line 627
    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mFrameRate:Ljava/lang/Integer;

    .line 628
    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mIsProfileLoaded:Z

    return-void
.end method

.method private setupOutputFormatWithFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 717
    packed-switch p1, :pswitch_data_0

    .line 724
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 725
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    .line 728
    :goto_0
    return-void

    .line 719
    :pswitch_0
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 720
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setupOutputFormatWithQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 701
    packed-switch p1, :pswitch_data_0

    .line 710
    :pswitch_0
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 711
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    .line 714
    :goto_0
    return-void

    .line 705
    :pswitch_1
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 706
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method build()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;
    .locals 4

    .prologue
    .line 670
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 671
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Don\'t set parameters."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_0
    const/4 v0, 0x0

    .line 675
    .local v0, "profile":Landroid/media/CamcorderProfile;
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mIsProfileLoaded:Z

    if-eqz v1, :cond_2

    .line 676
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 677
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 691
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 692
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->setupOutputFormatWithQuality(I)V

    .line 697
    :goto_1
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultExt:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mResultMimeType:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_1

    .line 681
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mFrameRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 684
    iget v1, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mFrameRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 686
    const v1, 0x1c9c380

    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 694
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->setupOutputFormatWithFormat(I)V

    goto :goto_1
.end method

.method frameRate(I)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "frameRate"    # I

    .prologue
    .line 660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mFrameRate:Ljava/lang/Integer;

    .line 661
    return-object p0
.end method

.method outputFormat(I)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 665
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInOutputFormat:Ljava/lang/Integer;

    .line 666
    return-object p0
.end method

.method preloadProfile(Landroid/media/CamcorderProfile;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "preloadProfile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mPreloadProfile:Landroid/media/CamcorderProfile;

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mIsProfileLoaded:Z

    .line 656
    return-object p0
.end method

.method quality(I)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 649
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    .line 650
    return-object p0
.end method

.method quality(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;
    .locals 1
    .param p1, "quality"    # I
    .param p2, "defaultQuality"    # I

    .prologue
    .line 636
    invoke-static {p1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    .line 641
    :goto_0
    return-object p0

    .line 639
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile$Builder;->mInQuality:Ljava/lang/Integer;

    goto :goto_0
.end method
