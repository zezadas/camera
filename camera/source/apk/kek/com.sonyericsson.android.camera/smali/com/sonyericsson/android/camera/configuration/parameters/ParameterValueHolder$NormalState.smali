.class Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;
.super Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
.source "ParameterValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
        "<TT;>.ParameterState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V
    .locals 0

    .prologue
    .line 241
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.NormalState;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 242
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.NormalState;"
    .local p2, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p3, "originalValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p4, "recommendedValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 246
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 247
    return-void
.end method


# virtual methods
.method public applyCurrentValue()V
    .locals 0

    .prologue
    .line 277
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.NormalState;"
    return-void
.end method

.method public applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.NormalState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$102(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$002(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Z)Z

    .line 271
    return-void
.end method

.method public forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.NormalState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    const/4 v5, 0x1

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$102(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z
    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$002(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Z)Z

    .line 255
    return v5
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.NormalState;"
    const/4 v0, 0x0

    return v0
.end method
