.class public Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
.super Ljava/lang/Object;
.source "FaceInformationList.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNamedFaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSmileGuage:Z

.field private mUserTouchUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUserTouchUuid:Ljava/lang/String;

    return-void
.end method

.method public static dumpFaceInformationList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V
    .locals 5
    .param p0, "list"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    const-string v3, "dumpFaceInformationList() argument is null"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpFaceInformationList use smile guage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->isUseSmileGuage()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    const-string v3, "################"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 88
    .local v0, "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " smileScore = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    .end local v0    # "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    const-string v3, "################"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addNamedFace(Lcom/sonyericsson/cameracommon/focusview/NamedFace;)V
    .locals 1
    .param p1, "namedFace"    # Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public addNamedFaceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "namedFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/focusview/NamedFace;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    return-void
.end method

.method public clearNamedFaceList()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    return-void
.end method

.method public getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 45
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNamedFace index overflow index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    goto :goto_0
.end method

.method public getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, "returnFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 70
    .local v0, "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    move-object v2, v0

    .line 75
    .end local v0    # "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_1
    return-object v2
.end method

.method public getNamedFaceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    return-object v0
.end method

.method public getUserSelectedUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUserTouchUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isUseSmileGuage()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    return v0
.end method

.method public setNamedFaceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "namedFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/focusview/NamedFace;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setUseSmileGuage(Z)V
    .locals 0
    .param p1, "useSmileGuage"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    .line 57
    return-void
.end method

.method public setUserTouchUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUserTouchUuid:Ljava/lang/String;

    .line 25
    return-void
.end method
