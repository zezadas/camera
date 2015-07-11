.class public Lcom/sonyericsson/android/camera/ShutterToneGenerator;
.super Ljava/lang/Object;
.source "ShutterToneGenerator.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;,
        Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    }
.end annotation


# static fields
.field public static final MAX_VOLUME:I = 0x7

.field private static final SOUND_HOME:Ljava/lang/String; = "/system/media/audio/camera/"

.field private static final SOUND_STREAM:I = 0x7

.field private static final TAG:Ljava/lang/String;

.field public static final VANILLA_SHUTTER_SOUND_FILE_PATH:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field public static final VANILLA_VIDEO_RECORD_SOUND_FILE_PATH:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"


# instance fields
.field private mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

.field private final mLedBlinkerHandler:Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

.field private final mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 124
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;-><init>(Lcom/sonyericsson/android/camera/ShutterToneGenerator;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/ShutterToneGenerator;)Lcom/sonyericsson/android/camera/device/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    return-object v0
.end method

.method public static getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .param p1, "shutterSound"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v0, "soundFile":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "/system/media/audio/camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->isCommonSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getDirectoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 218
    :cond_1
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static play(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 2
    .param p0, "player"    # Landroid/media/MediaPlayer;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v1, 0x40e00000    # 7.0f

    .line 236
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 237
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 239
    invoke-virtual {p0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 240
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 241
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 242
    return-void
.end method


# virtual methods
.method public blink()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOnLight()V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    return-void
.end method

.method public cancelPlayAndBlink()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOffLight()V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 264
    return-void
.end method

.method public clearBlink()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;->removeMessages(I)V

    .line 271
    return-void
.end method

.method public play(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V
    .locals 3
    .param p1, "type"    # Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->play(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 192
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method public playRecordingSound()V
    .locals 3

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->play(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 304
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method public prepare(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 133
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    .line 135
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$LedBlinkerHandler;->removeMessages(I)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 162
    return-void
.end method

.method public releaseResources()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 152
    :cond_1
    return-void
.end method

.method public setShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 0
    .param p1, "sound"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 171
    return-void
.end method

.method public testSound(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 279
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
