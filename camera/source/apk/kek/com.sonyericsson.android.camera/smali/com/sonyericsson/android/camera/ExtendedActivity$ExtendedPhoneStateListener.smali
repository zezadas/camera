.class Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/ExtendedActivity$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 408
    packed-switch p1, :pswitch_data_0

    .line 429
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 415
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mDelayedOnResume:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;->resume()V

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
