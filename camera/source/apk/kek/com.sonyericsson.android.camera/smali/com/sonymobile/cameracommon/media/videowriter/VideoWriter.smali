.class public Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;,
        Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ENABLE_MONITOR_FPS:Z = false

.field private static final I_FRAME_INTERVAL:I = 0x1

.field static final TAG:Ljava/lang/String;

.field private static final VIDEO_MIMETYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

.field private mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

.field private final mFpsMonitor:Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private final mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

.field private mOutputPath:Ljava/lang/String;

.field private mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    .line 75
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    .line 77
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mFpsMonitor:Lcom/sonymobile/cameracommon/media/utility/FpsMonitor;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mListener:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$VideoWriterListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    return-object v0
.end method

.method private createAudioFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;
    .locals 3
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 201
    iget v1, p2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iget v2, p2, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-static {p1, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 205
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    iget v2, p2, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 207
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 210
    return-object v0
.end method

.method private createAudioInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .locals 6
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v3, "audio/mp4a-latm"

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createAudioFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 227
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v3, "audio/mp4a-latm"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 228
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 230
    new-instance v2, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;

    const-string v3, "sample-rate"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v4, "channel-count"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;-><init>(Landroid/media/MediaCodec;III)V

    .line 236
    .local v2, "source":Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;
    invoke-static {v1, v0, v2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v3

    return-object v3
.end method

.method private createVideoFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;
    .locals 3
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;

    .prologue
    .line 187
    iget v1, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p1, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 191
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 193
    const-string v1, "bitrate"

    iget v2, p2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 194
    const-string v1, "frame-rate"

    iget v2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 196
    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 197
    return-object v0
.end method

.method private createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .locals 5
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    const-string v3, "video/avc"

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createVideoFormat(Ljava/lang/String;Landroid/media/CamcorderProfile;)Landroid/media/MediaFormat;

    move-result-object v1

    .line 216
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 217
    .local v0, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 218
    new-instance v2, Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;-><init>(Landroid/media/MediaCodec;)V

    .line 219
    .local v2, "source":Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/view/Surface;)V

    .line 221
    invoke-static {v1, v0, v2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v3

    return-object v3
.end method

.method private startEncode(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V
    .locals 8
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p7, "encodeStateListener"    # Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;

    .line 136
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 137
    .local v1, "muxer":Landroid/media/MediaMuxer;
    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 138
    if-eqz p3, :cond_1

    .line 139
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 144
    :cond_1
    new-instance v2, Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-direct {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 145
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    new-instance v3, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v3}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    sget-object v4, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    invoke-virtual {v2, v3, v4, p6}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 151
    if-eqz p4, :cond_2

    .line 152
    const/4 v2, 0x2

    new-array v0, v2, [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    invoke-direct {p0, p5}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-direct {p0, p5}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createAudioInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v2

    aput-object v2, v0, v7

    .line 161
    .local v0, "inputs":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :goto_0
    new-instance v2, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {v2, v0, v1, p7}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;-><init>([Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;)V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .line 163
    iput-boolean v7, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    .line 164
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->start()V

    .line 166
    return-void

    .line 157
    .end local v0    # "inputs":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_2
    new-array v0, v7, [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    invoke-direct {p0, p5}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->createVideoInputStreamInfo(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v2

    aput-object v2, v0, v6

    .restart local v0    # "inputs":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    goto :goto_0
.end method


# virtual methods
.method public elapsedTimeMillis()J
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEglController()Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mIsRunning:Z

    return v0
.end method

.method public start(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 8
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v7, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    invoke-direct {v7, p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->startEncode(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 99
    return-void
.end method

.method public start(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;JJ)V
    .locals 9
    .param p1, "outputPath"    # Ljava/lang/String;
    .param p2, "orientationHint"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "isMicrophoneEnabled"    # Z
    .param p5, "profile"    # Landroid/media/CamcorderProfile;
    .param p6, "sharedEglContext"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p7, "maxDurationMills"    # J
    .param p9, "maxFileSizeBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;

    move-object v1, p0

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;JJ)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->startEncode(Ljava/lang/String;ILandroid/location/Location;ZLandroid/media/CamcorderProfile;Ljavax/microedition/khronos/egl/EGLContext;Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V

    .line 118
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 119
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mReferenceClock:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->stop()V

    .line 176
    return-void
.end method
