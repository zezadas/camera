.class Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;
.super Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
.source "ParameterValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceChangedState"
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
    .line 288
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ForceChangedState;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 289
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    .line 290
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
    .line 292
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ForceChangedState;"
    .local p2, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p3, "originalValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p4, "recommendedValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 293
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 294
    return-void
.end method


# virtual methods
.method public applyCurrentValue()V
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ForceChangedState;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 333
    :cond_0
    return-void
.end method

.method public applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ForceChangedState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 318
    return-void
.end method

.method public forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ForceChangedState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public reset()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ForceChangedState;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$NormalState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$102(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$002(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Z)Z

    .line 310
    return v4
.end method
