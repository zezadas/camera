.class public Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;
.super Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForceSoundOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 224
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 8

    .prologue
    .line 182
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 184
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 187
    .local v0, "callState":I
    if-nez v0, :cond_1

    .line 188
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    new-instance v4, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {v4, v5, p0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;)V

    iput-object v4, v3, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "resumedFromIncomingCall":Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v3, :cond_0

    .line 193
    const/4 v1, 0x1

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/ExtendedActivity;->pauseAudioPlayback()V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->dismiss()V

    .line 201
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    # invokes: Lcom/sonyericsson/android/camera/ExtendedActivity;->onActivated(Z)V
    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->access$200(Lcom/sonyericsson/android/camera/ExtendedActivity;Z)V

    .line 213
    .end local v1    # "resumedFromIncomingCall":Z
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-nez v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v4

    const v5, 0x7f090073

    const v6, 0x7f090098

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/android/camera/ExtendedActivity;->mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/ExtendedActivity;->enableAutoOffTimer()V

    .line 211
    iget-object v3, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/ExtendedActivity;->pauseCameraView()V

    goto :goto_0
.end method
