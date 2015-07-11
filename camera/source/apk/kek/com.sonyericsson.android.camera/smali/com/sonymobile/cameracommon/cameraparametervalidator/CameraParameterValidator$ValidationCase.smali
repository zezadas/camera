.class Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationCase"
.end annotation


# instance fields
.field private mBaseConditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckConditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;-><init>()V

    return-void
.end method


# virtual methods
.method public addBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V
    .locals 1
    .param p1, "set"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V
    .locals 1
    .param p1, "set"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public checkInvalid(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 149
    iget-object v3, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 150
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    iget-object v3, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "realValue":Ljava/lang/String;
    iget-object v3, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    new-instance v3, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraParameterValidator ERROR : [KEY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  INVALID  : [VALUE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    .end local v1    # "realValue":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_1
    return-void
.end method

.method public checkValid(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 129
    iget-object v3, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 130
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    iget-object v3, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "realValue":Ljava/lang/String;
    iget-object v3, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    new-instance v3, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraParameterValidator ERROR : [KEY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  EXPECTED : [VALUE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ACTUAL   : [VALUE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v1    # "realValue":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_1
    return-void
.end method

.method public isBaseCondition(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 119
    iget-object v3, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 120
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    iget-object v3, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "realValue":Ljava/lang/String;
    iget-object v3, v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    const/4 v3, 0x0

    .line 125
    .end local v1    # "realValue":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "ValidationSet :\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v3, "  BaseConditionList :\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v3, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 173
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 178
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_0
    const-string v3, "  CheckConditionList :\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v3, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 180
    .restart local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 185
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
