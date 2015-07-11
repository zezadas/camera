.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
.super Ljava/lang/Object;
.source "NetworkNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# static fields
.field public static final STREAM_ID_BACK_CAMERA:I = 0x0

.field public static final STREAM_ID_FRONT_CAMERA:I = 0x1


# instance fields
.field public final id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private volatile mHashCode:I

.field public final macAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field public final screenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "screenName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->mHashCode:I

    .line 116
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->macAddress:Ljava/lang/String;

    .line 117
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->id:I

    .line 118
    iput-object p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->screenName:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "stream"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;

    .line 134
    .local v0, "compareStream":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->macAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->macAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->sameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->id:I

    iget v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->id:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->screenName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->screenName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->sameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 142
    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->mHashCode:I

    .line 143
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 144
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->macAddress:Ljava/lang/String;

    if-nez v4, :cond_1

    move v0, v3

    .line 145
    .local v0, "macHash":I
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->screenName:Ljava/lang/String;

    if-nez v4, :cond_2

    move v1, v3

    .line 146
    .local v1, "nameHash":I
    :goto_1
    const/16 v2, 0x11

    .line 147
    add-int/lit16 v2, v0, 0x20f

    .line 148
    mul-int/lit8 v3, v2, 0x1f

    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->id:I

    add-int v2, v3, v4

    .line 149
    mul-int/lit8 v3, v2, 0x1f

    add-int v2, v3, v1

    .line 150
    iput v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->mHashCode:I

    .line 152
    .end local v0    # "macHash":I
    .end local v1    # "nameHash":I
    :cond_0
    return v2

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->macAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 145
    .restart local v0    # "macHash":I
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->screenName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[MAC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ScreenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
