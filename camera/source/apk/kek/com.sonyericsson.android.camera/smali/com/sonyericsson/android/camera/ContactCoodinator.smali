.class public final Lcom/sonyericsson/android/camera/ContactCoodinator;
.super Landroid/app/Activity;
.source "ContactCoodinator.java"


# static fields
.field private static final SEQ_FIRST:I = 0x1

.field private static final SEQ_SECOND:I = 0x2

.field private static final SEQ_THIRD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactCoodinator"


# instance fields
.field private mSeq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/ContactCoodinator;->mSeq:I

    .line 65
    return-void
.end method

.method private launchCropper(Landroid/content/Intent;)V
    .locals 4
    .param p1, "income"    # Landroid/content/Intent;

    .prologue
    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v1, "goout":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 103
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/ContactCoodinator;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ContactCoodinator"

    const-string v3, "Cropper start failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setContactPhoto(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "photo_bitmap"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/ContactCoodinator;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ContactCoodinator"

    const-string v4, "Setting to the contact failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 145
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inline-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->finish()V

    goto :goto_0

    .line 152
    :cond_1
    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 153
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->finish()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->setContactPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 164
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->finish()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    iget v1, p0, Lcom/sonyericsson/android/camera/ContactCoodinator;->mSeq:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "income":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->launchCropper(Landroid/content/Intent;)V

    .line 78
    iput v3, p0, Lcom/sonyericsson/android/camera/ContactCoodinator;->mSeq:I

    .line 86
    .end local v0    # "income":Landroid/content/Intent;
    :goto_0
    return-void

    .line 79
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera/ContactCoodinator;->mSeq:I

    if-ne v1, v3, :cond_1

    .line 81
    const/4 v1, 0x3

    iput v1, p0, Lcom/sonyericsson/android/camera/ContactCoodinator;->mSeq:I

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ContactCoodinator;->finish()V

    goto :goto_0
.end method
