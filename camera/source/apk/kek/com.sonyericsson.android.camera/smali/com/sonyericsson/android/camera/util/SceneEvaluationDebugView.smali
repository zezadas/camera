.class public final Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;
.super Ljava/lang/Object;
.source "SceneEvaluationDebugView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static instance:Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mDebugSceneInfomation:Landroid/widget/TextView;

.field private mDisplayed:Z

.field private mWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static debug(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "win"    # Lcom/sonyericsson/android/camera/view/CameraWindow;
    .param p2, "dev"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->instance:Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->instance:Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;

    .line 47
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->instance:Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->set(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    .line 48
    return-void
.end method

.method private dispDebugSceneEvaluation()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDisplayed:Z

    if-nez v1, :cond_1

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDisplayed:Z

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "SCENE EVALUATION INFORMATION\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "White Balance Info\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, "     WB R-Gain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDebugSceneInfomation:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method private set(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/CameraWindow;Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "win"    # Lcom/sonyericsson/android/camera/view/CameraWindow;
    .param p3, "dev"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mContext:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->instance:Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->instance:Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->unset()V

    .line 54
    :cond_0
    return-void
.end method

.method private unset()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 78
    .local v0, "win":Lcom/sonyericsson/android/camera/view/CameraWindow;
    if-eqz v0, :cond_0

    .line 81
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->mDisplayed:Z

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/SceneEvaluationDebugView;->dispDebugSceneEvaluation()V

    .line 62
    return-void
.end method
