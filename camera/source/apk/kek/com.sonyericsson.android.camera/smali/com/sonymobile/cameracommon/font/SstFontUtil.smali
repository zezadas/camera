.class public Lcom/sonymobile/cameracommon/font/SstFontUtil;
.super Ljava/lang/Object;
.source "SstFontUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "type"    # Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    # getter for: Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->mPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->access$000(Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 42
    :cond_1
    # getter for: Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->mPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->access$000(Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0
.end method
