.class Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 317
    packed-switch p1, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;->onRinging()V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;->onOffHook()V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
