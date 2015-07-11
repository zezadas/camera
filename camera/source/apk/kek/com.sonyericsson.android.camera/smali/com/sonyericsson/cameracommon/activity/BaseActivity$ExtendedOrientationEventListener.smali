.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 621
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 622
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, -0x1

    .line 626
    if-eq p1, v1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$402(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$500(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$502(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I

    .line 635
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$500(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 636
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$500(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I

    move-result v1

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$602(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v1

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$700(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    goto :goto_0
.end method
