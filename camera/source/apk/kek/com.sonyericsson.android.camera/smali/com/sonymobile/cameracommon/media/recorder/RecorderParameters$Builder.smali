.class public Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
.super Ljava/lang/Object;
.source "RecorderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;-><init>(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$100(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$600(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$202(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Landroid/location/Location;)Landroid/location/Location;

    .line 125
    return-object p0
.end method

.method public setMaxDuration(I)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxDuration:I
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$502(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;I)I

    .line 140
    return-object p0
.end method

.method public setMaxFileSize(J)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxFileSize:J
    invoke-static {v0, p1, p2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$402(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;J)J

    .line 135
    return-object p0
.end method

.method public setMicrophoneEnabled(Z)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$702(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Z)Z

    .line 150
    return-object p0
.end method

.method public setOrientationHint(I)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mOrientationHint:I
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$302(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;I)I

    .line 130
    return-object p0
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$602(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Landroid/media/CamcorderProfile;)Landroid/media/CamcorderProfile;

    .line 145
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->mParameters:Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->access$102(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Landroid/net/Uri;)Landroid/net/Uri;

    .line 120
    return-object p0
.end method
