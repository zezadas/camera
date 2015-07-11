.class Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchSettingAppDialogListener"
.end annotation


# instance fields
.field private mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 1
    .param p2, "geotagListener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 1354
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .line 1355
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1383
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1359
    packed-switch p2, :pswitch_data_0

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1361
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    goto :goto_0

    .line 1366
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->this$0:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    # getter for: Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->access$700(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup$LaunchSettingAppDialogListener;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 1376
    :cond_0
    return-void
.end method
