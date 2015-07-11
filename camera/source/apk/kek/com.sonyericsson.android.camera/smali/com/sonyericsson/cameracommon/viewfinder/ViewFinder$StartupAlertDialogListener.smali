.class public Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StartupAlertDialogListener"
.end annotation


# instance fields
.field private final mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field private final mSharedPrefsKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V
    .locals 0
    .param p2, "shardPrefs"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p3, "sharedPrefsKey"    # Ljava/lang/String;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 730
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->mSharedPrefsKey:Ljava/lang/String;

    .line 731
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "isShow":Z
    if-eqz p2, :cond_0

    .line 742
    const/4 v0, 0x1

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->mSharedPrefsKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Z)V

    .line 745
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->setAlertDialogIsOpened(Z)V

    .line 736
    return-void
.end method
