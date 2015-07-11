.class abstract Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;
.super Ljava/lang/Object;
.source "ParameterValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ParameterState"
.end annotation


# instance fields
.field protected mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mOriginalValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V
    .locals 0

    .prologue
    .line 186
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
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
    .line 189
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    .local p2, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p3, "originalValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    .local p4, "recommendedValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 195
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setOriginalValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 196
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->setRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 197
    return-void
.end method


# virtual methods
.method public abstract applyCurrentValue()V
.end method

.method public abstract applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public final getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mOriginalValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public final getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public abstract reset()Z
.end method

.method public final setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    if-eq v0, p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->mChanged:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->access$002(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Z)Z

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 206
    return-void
.end method

.method public final setOriginalValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mOriginalValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 220
    return-void
.end method

.method public final setRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<TT;>.ParameterState;"
    .local p1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder$ParameterState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 228
    return-void
.end method
