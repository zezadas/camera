.class public Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
.super Ljava/lang/Object;
.source "PreviewFrameRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$1;,
        Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;,
        Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;,
        Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;,
        Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

.field private mIsPreviewCallbackRegistered:Z

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    .line 64
    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mIsPreviewCallbackRegistered:Z

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->unregisterPreviewCallback()V

    return-void
.end method

.method private findWithListener(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    .locals 3
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .prologue
    .line 175
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    .line 176
    .local v0, "i":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    iget-object v2, v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;->callback:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    if-ne v2, p1, :cond_0

    .line 180
    .end local v0    # "i":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerPreviewCallback()V
    .locals 3

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mIsPreviewCallbackRegistered:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mIsPreviewCallbackRegistered:Z

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$1;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 162
    :cond_0
    return-void
.end method

.method private unregisterPreviewCallback()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mIsPreviewCallbackRegistered:Z

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public attachCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->attachCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 70
    return-void
.end method

.method public attachCamera(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->dettachCamera()V

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    .line 76
    new-instance v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;-><init>(III)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    .line 81
    return-void
.end method

.method public dettachCamera()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->unregisterPreviewCallback()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mCamera:Landroid/hardware/Camera;

    .line 89
    return-void
.end method

.method public getPreviewInfo()Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    return-object v0
.end method

.method public removeRequest(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->findWithListener(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    move-result-object v0

    .line 142
    .local v0, "request":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->unregisterPreviewCallback()V

    .line 150
    :cond_1
    return-void
.end method

.method public request(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->findWithListener(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 111
    .local v0, "alreadyRequested":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 118
    :goto_1
    return v1

    .end local v0    # "alreadyRequested":Z
    :cond_0
    move v0, v1

    .line 110
    goto :goto_0

    .line 115
    .restart local v0    # "alreadyRequested":Z
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    new-instance v4, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    invoke-direct {v4, v1, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;-><init>(ZLcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->registerPreviewCallback()V

    move v1, v2

    .line 118
    goto :goto_1
.end method

.method public requestPeriodic(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Z
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->findWithListener(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 128
    .local v0, "alreadyRequested":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    :goto_1
    return v1

    .end local v0    # "alreadyRequested":Z
    :cond_0
    move v0, v1

    .line 127
    goto :goto_0

    .line 132
    .restart local v0    # "alreadyRequested":Z
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    new-instance v3, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;

    invoke-direct {v3, v2, p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$Request;-><init>(ZLcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->registerPreviewCallback()V

    move v1, v2

    .line 135
    goto :goto_1
.end method

.method public setPreviewInfo(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->format:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->format:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    iget v0, v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    iget v1, p1, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->mInfo:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    .line 103
    :cond_1
    return-void
.end method
