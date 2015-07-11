.class public Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
.super Ljava/lang/Object;
.source "RecorderParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$1;,
        Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    }
.end annotation


# static fields
.field private static final INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsMicrophoneEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mMaxDuration:I

.field private mMaxFileSize:J

.field private mOrientationHint:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    .line 44
    iput-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    .line 45
    iput v3, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mOrientationHint:I

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxFileSize:J

    .line 47
    iput v3, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxDuration:I

    .line 48
    iput-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mOrientationHint:I

    return p1
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxFileSize:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxDuration:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Landroid/media/CamcorderProfile;)Landroid/media/CamcorderProfile;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    return p1
.end method

.method private isValid(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 163
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newRecordParameters()Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;-><init>()V

    .line 39
    .local v0, "parameters":Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    new-instance v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;-><init>(Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$1;)V

    return-object v1
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxDuration()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxDuration:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->isValid(J)Z

    move-result v0

    return v0
.end method

.method public hasMaxFileSize()Z
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxFileSize:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->isValid(J)Z

    move-result v0

    return v0
.end method

.method public hasOrientationHint()Z
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mOrientationHint:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->isValid(J)Z

    move-result v0

    return v0
.end method

.method public isMicrophoneEnabled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mIsMicrophoneEnabled:Z

    return v0
.end method

.method public location()Landroid/location/Location;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public maxDuration()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxDuration:I

    return v0
.end method

.method public maxFileSize()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mMaxFileSize:J

    return-wide v0
.end method

.method public orientationHint()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mOrientationHint:I

    return v0
.end method

.method public outputUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public profile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method
