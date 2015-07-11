.class public abstract Lcom/sonyericsson/android/camera/parameter/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/Parameters$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Parameters"


# instance fields
.field public final capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public final isOneShotVideo:Z

.field protected mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

.field protected mHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isOneShotVideo"    # Z
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 107
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->isOneShotVideo:Z

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    .line 109
    iput-object p3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 110
    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p1, "isOneShotVideo"    # Z
    .param p2, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 71
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/Parameters$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/SceneRecognitionParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/NormalParameters;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/NormalParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/SuperiorFrontParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    goto :goto_0

    .line 79
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/FrontPhotoParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    goto :goto_0

    .line 81
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/VideoParameters;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/VideoParameters;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static createStringMap(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<*>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 245
    .local v0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    .line 246
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->createValueString()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v0    # "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    .end local v2    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static parseStringMap(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 261
    .local v0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    .line 262
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->parseValueString(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .end local v0    # "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    .end local v2    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearHolder()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 177
    return-void
.end method

.method public commit()V
    .locals 3

    .prologue
    .line 657
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 658
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->hasChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->onApplied()V

    goto :goto_0

    .line 662
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_1
    return-void
.end method

.method public getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAutoReview:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method

.method public getAutoUpload()Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
    .locals 1

    .prologue
    .line 673
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    return-object v0
.end method

.method public getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBurst:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v0
.end method

.method public getCaptureFrameShape()Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCaptureFrameShape:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    return-object v0
.end method

.method public getChangedValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 296
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_1
    return-object v2
.end method

.method public getChangedValues(Ljava/util/EnumMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "currentParameters":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getParameters()Ljava/util/EnumMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 313
    .local v3, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-interface {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .line 314
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    if-eq v4, v5, :cond_0

    .line 316
    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_0

    .line 318
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v3    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_2
    return-object v2
.end method

.method public getEv()Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v0
.end method

.method public getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    return-object v0
.end method

.method public getFacing()Lcom/sonyericsson/android/camera/configuration/parameters/Facing;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFacing:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    return-object v0
.end method

.method public getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1

    .prologue
    .line 689
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public getFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method

.method public getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method

.method public getGeotag()Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 1

    .prologue
    .line 701
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mGeotag:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-object v0
.end method

.method public getHdr()Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    return-object v0
.end method

.method public getIso()Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object v0
.end method

.method public getMetering()Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMetering:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object v0
.end method

.method public getMicrophone()Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMicrophone:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    return-object v0
.end method

.method public getOptions(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0
.end method

.method public getParameters()Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 279
    .local v3, "values":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 280
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    .line 281
    .local v2, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_0
    return-object v3
.end method

.method public getPhotoLight()Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object v0
.end method

.method public getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v0
.end method

.method public getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    return-object v0
.end method

.method public getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    return-object v0
.end method

.method public getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 1

    .prologue
    .line 737
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object v0
.end method

.method public getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object v0
.end method

.method public getSoftSkin()Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object v0
.end method

.method public getStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    return-object v0
.end method

.method public getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSuperResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    return-object v0
.end method

.method public abstract getTargetParameters()Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;"
        }
    .end annotation
.end method

.method public getTouchCapture()Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-object v0
.end method

.method public getUpdatedResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 3
    .param p1, "hdr"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 205
    const/4 v0, 0x1

    .line 206
    .local v0, "hdrOn":Z
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p1, v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getHdrResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;ZI)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    return-object v1
.end method

.method public getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoAutoReview:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    return-object v0
.end method

.method public getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method

.method public getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    return-object v0
.end method

.method public getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method

.method public getVideoSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object v0
.end method

.method public getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method

.method public getVolumeKey()Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1

    .prologue
    .line 781
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mVolumeKey:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method

.method public getWhiteBalance()Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mWhiteBalance:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object v0
.end method

.method protected abstract prepare()V
.end method

.method public prepareHolder(ZZLcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V
    .locals 3
    .param p1, "isOneShot"    # Z
    .param p2, "isOneShotVideo"    # Z
    .param p3, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;
    .param p4, "sharedPrefs"    # Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .prologue
    .line 123
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->init(ZZLcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V

    .line 126
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->values()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->putHolders(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->values()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->putHolders(Ljava/util/List;)V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->prepare()V

    .line 131
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->registerKey(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected putHolders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 137
    .local v0, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    goto :goto_0

    .line 139
    .end local v0    # "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    :cond_0
    return-void
.end method

.method public readSharedPrefs(Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V
    .locals 5
    .param p1, "sharedPrefs"    # Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .prologue
    .line 221
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 224
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->values()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->parseStringMap(Ljava/util/List;Ljava/util/Map;)V

    .line 225
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 343
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 344
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->reset()Z

    .line 345
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V

    goto :goto_0

    .line 347
    .end local v1    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 348
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mAutoReview:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 512
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    .prologue
    .line 613
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 614
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mBurst:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 522
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCaptureFrameShape:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 547
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 353
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .prologue
    .line 618
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 619
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .prologue
    .line 379
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 380
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 383
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mEv:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 386
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 387
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 388
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .prologue
    .line 532
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 534
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 537
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 540
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 541
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 542
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Facing;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .prologue
    .line 363
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .prologue
    .line 623
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 624
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFlash:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 369
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 406
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 409
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 412
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 413
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 414
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .prologue
    .line 628
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mGeotag:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 629
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 449
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 452
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 453
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 456
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 459
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 460
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 461
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .prologue
    .line 466
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 469
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 470
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 473
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mIso:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 476
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 477
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 478
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMetering:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 483
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mMicrophone:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 608
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mPhotoLight:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 374
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 399
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 358
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 419
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 421
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 424
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 427
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 428
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 429
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 633
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 634
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 434
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 436
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 439
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 442
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 443
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 444
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSoftSkin:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 507
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    .line 489
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 492
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 494
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 497
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 500
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 501
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 502
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSuperResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 527
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    .prologue
    .line 648
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchBlock:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 649
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .prologue
    .line 638
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 639
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoAutoReview:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 517
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .prologue
    .line 589
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 590
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 593
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 596
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 597
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 598
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 569
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 553
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->isOneShotVideo:Z

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 556
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 559
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 562
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->isOneShotVideo:Z

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 563
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 564
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 574
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v1

    .line 576
    .local v1, "previous":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 579
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 582
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;

    move-result-object v0

    .line 583
    .local v0, "dependency":Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;->apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V

    .line 584
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 603
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .prologue
    .line 643
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mVolumeKey:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 644
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mWhiteBalance:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 393
    return-void
.end method

.method protected updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 149
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-eq v1, v2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateLocalResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V
    .locals 6
    .param p1, "hdr"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "localHolder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;>;"
    const/4 v1, 0x1

    .line 187
    .local v1, "hdrOn":Z
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p1, v5, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 192
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v5, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mResolution:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 193
    .local v2, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;>;"
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    .line 194
    .local v0, "cameraId":I
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v5, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getHdrDependentOptions([Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;ZI)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    .line 196
    .local v3, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {p2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v5

    invoke-static {v5, v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getHdrResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;ZI)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v4

    .line 201
    .local v4, "resolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {p2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 202
    return-void
.end method

.method protected abstract updatePhotoLight()V
.end method

.method protected abstract updateSelectability()V
.end method

.method protected writeSharedPrefs(Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V
    .locals 5
    .param p1, "sharedPrefs"    # Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .prologue
    .line 235
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->values()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->createStringMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 238
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->setStringMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    return-void
.end method
