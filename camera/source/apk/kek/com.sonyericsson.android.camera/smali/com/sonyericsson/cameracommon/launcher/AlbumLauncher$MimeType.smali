.class final enum Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
.super Ljava/lang/Enum;
.source "AlbumLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

.field public static final enum MP4:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

.field public static final enum MPO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

.field public static final enum PHOTO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

.field public static final enum THREEGPP:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

.field public static final enum UNKOWN:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;


# instance fields
.field final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    const-string v1, "PHOTO"

    const-string v2, "image/jpeg"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    const-string v1, "MPO"

    const-string v2, "image/mpo"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    const-string v1, "MP4"

    const-string v2, "video/mp4"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MP4:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    const-string v1, "THREEGPP"

    const-string v2, "video/3gpp"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->THREEGPP:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    const-string v1, "UNKOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->UNKOWN:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MP4:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->THREEGPP:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->UNKOWN:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->$VALUES:[Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->values()[Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 68
    .local v1, "i":Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    iget-object v4, v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    .end local v1    # "i":Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    :goto_1
    return-object v1

    .line 67
    .restart local v1    # "i":Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->UNKOWN:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->$VALUES:[Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    return-object v0
.end method
