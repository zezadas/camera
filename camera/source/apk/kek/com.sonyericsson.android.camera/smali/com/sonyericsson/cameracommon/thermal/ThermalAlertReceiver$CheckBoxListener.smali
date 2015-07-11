.class public Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckBoxListener"
.end annotation


# instance fields
.field private final mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field private final mSharedPrefsKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V
    .locals 0
    .param p2, "shardPrefs"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .param p3, "sharedPrefsKey"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;->mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 466
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;->mSharedPrefsKey:Ljava/lang/String;

    .line 467
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "isShow":Z
    if-eqz p2, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;->mSharedPrefs:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$CheckBoxListener;->mSharedPrefsKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Z)V

    .line 476
    return-void
.end method
