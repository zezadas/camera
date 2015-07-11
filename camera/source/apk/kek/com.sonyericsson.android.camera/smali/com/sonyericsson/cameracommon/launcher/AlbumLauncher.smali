.class public final Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;
.super Landroid/app/Activity;
.source "AlbumLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$1;,
        Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    }
.end annotation


# static fields
.field public static final EXTRA_BURST_BUCKETID:Ljava/lang/String; = "burst_bucketId"

.field public static final EXTRA_PLAYBACK:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field private static final EXTRA_PLAYBACK_DEFAULT:Z = false

.field public static final EXTRA_SOMCTYPE:Ljava/lang/String; = "somc_type"

.field private static final PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z

    .prologue
    .line 152
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.album.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    if-ne v2, v3, :cond_3

    .line 160
    sget-object v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :goto_1
    if-eqz p4, :cond_0

    .line 167
    const-string v2, "burst_bucketId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 173
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_1

    .line 174
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setViewerLaunched()V

    .line 178
    :cond_1
    return-void

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isActivityAvailable":Z
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v2, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 214
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    :cond_0
    return-void
.end method

.method private launchPlayer(Landroid/net/Uri;Ljava/lang/String;IZ)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z

    .prologue
    const/4 v0, 0x0

    .line 184
    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$1;->$SwitchMap$com$sonyericsson$cameracommon$launcher$AlbumLauncher$MimeType:[I

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 196
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 197
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->playMpo(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private playMpo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.android.camera3d"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 234
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "mimetype":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V

    .line 143
    return-void

    .line 135
    :pswitch_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 85
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "mimetype":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 87
    .local v4, "playback":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "somc_type"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 90
    .local v5, "somcType":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    const/4 v2, 0x1

    .line 92
    .local v2, "isBurst":Z
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "burst_bucketId"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "bucketId":I
    if-eqz v4, :cond_2

    .line 105
    :try_start_0
    invoke-direct {p0, v6, v3, v0, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/net/Uri;Ljava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    invoke-static {p0, v6, v3, v0, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V

    goto :goto_0
.end method
