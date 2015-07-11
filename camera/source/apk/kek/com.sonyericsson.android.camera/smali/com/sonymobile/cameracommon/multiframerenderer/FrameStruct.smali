.class public Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
.super Ljava/lang/Object;
.source "FrameStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;
    }
.end annotation


# instance fields
.field private mFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;

.field private mFrameData:Lcom/sonymobile/cameracommon/opengl/FrameData;

.field private mFrameId:Ljava/lang/String;

.field private mIsMirrored:Z

.field private mNeedToTextureUpdate:Z

.field private mVisibility:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;ZLcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;
    .param p3, "frameBaseFactory"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;
    .param p4, "needToTextureUpdate"    # Z
    .param p5, "visibility"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mIsMirrored:Z

    .line 66
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameData:Lcom/sonymobile/cameracommon/opengl/FrameData;

    .line 68
    iput-object p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;

    .line 69
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mNeedToTextureUpdate:Z

    .line 70
    iput-object p5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mVisibility:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .line 71
    return-void
.end method


# virtual methods
.method public getFrameBaseFactory()Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;

    return-object v0
.end method

.method public getFrameData()Lcom/sonymobile/cameracommon/opengl/FrameData;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameData:Lcom/sonymobile/cameracommon/opengl/FrameData;

    return-object v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameId:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mVisibility:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    return-object v0
.end method

.method public isMirrored()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mIsMirrored:Z

    return v0
.end method

.method public isTextureRequiredToUpdate()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mNeedToTextureUpdate:Z

    return v0
.end method

.method public setMirrored(Z)V
    .locals 0
    .param p1, "isMirrored"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mIsMirrored:Z

    .line 137
    return-void
.end method

.method public setVisibility(Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V
    .locals 0
    .param p1, "visibility"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mVisibility:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .line 156
    return-void
.end method

.method public updateFrameData(Lcom/sonymobile/cameracommon/opengl/FrameData;)V
    .locals 0
    .param p1, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->mFrameData:Lcom/sonymobile/cameracommon/opengl/FrameData;

    .line 119
    return-void
.end method
