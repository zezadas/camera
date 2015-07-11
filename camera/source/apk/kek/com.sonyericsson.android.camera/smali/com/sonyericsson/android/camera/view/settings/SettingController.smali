.class public Lcom/sonyericsson/android/camera/view/settings/SettingController;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/settings/SettingController$2;,
        Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

.field private final mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

.field private mIsClosedTemporaryControlDialog:Z

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

.field private final mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "settingDialogStack"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mIsClosedTemporaryControlDialog:Z

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController$SettingDialogControllerImpl;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController$1;-><init>(Lcom/sonyericsson/android/camera/view/settings/SettingController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 72
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    .line 73
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mInterceptSettingDialogKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object v0
.end method

.method private checkValueIsSelectable(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Z)Z
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "manager"    # Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .param p3, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p4, "selected"    # Z

    .prologue
    .line 961
    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 964
    .local v0, "selectable":Z
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 983
    :cond_1
    :goto_1
    return v0

    .line 961
    .end local v0    # "selectable":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 966
    .restart local v0    # "selectable":Z
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p3, v1, :cond_3

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 970
    const/4 v0, 0x0

    goto :goto_1

    .line 971
    :cond_3
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 975
    const/4 v0, 0x0

    goto :goto_1

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private generateChildrenSettingItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Z)Ljava/util/List;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p3, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .param p4, "parameterManager"    # Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .param p5, "requestCloseDialog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            "Lcom/sonyericsson/android/camera/parameter/ParameterManager;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getOptions(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v19

    .line 995
    .local v19, "values":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v12

    .line 997
    .local v12, "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    move-object/from16 v10, v19

    .local v10, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_2

    aget-object v6, v10, v14

    .line 998
    .local v6, "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    if-eqz v6, :cond_0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p0

    move/from16 v9, p5

    .line 999
    invoke-static/range {v4 .. v9}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSettingChangeExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;Z)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v13

    .line 1008
    .local v13, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    if-ne v12, v6, :cond_1

    const/16 v18, 0x1

    .line 1009
    .local v18, "selected":Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->checkValueIsSelectable(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Z)Z

    move-result v17

    .line 1012
    .local v17, "selectable":Z
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getTextId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getChildDialogItemType(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v11

    .line 1020
    .local v11, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-virtual {v11}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    .end local v11    # "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    .end local v13    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    .end local v17    # "selectable":Z
    .end local v18    # "selected":Z
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1008
    .restart local v13    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 1024
    .end local v6    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local v13    # "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_2
    return-object v16
.end method

.method private generateGroupItemAdapter(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 7
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 461
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 463
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 464
    sget-object p1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 471
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateStorageSetting()V

    .line 473
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v3, v1, v2

    .line 474
    .local v3, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v5, v3, p1, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectMenuItemExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v5

    invoke-direct {p0, v3, p1, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateParameterKeyItem(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 473
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    .end local v1    # "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "i$":I
    .end local v3    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v4    # "len$":I
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 466
    sget-object p1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    goto :goto_0

    .line 481
    .restart local v1    # "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    return-object v0
.end method

.method private generateParameterKeyItem(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 17
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
        }
    .end annotation

    .prologue
    .line 825
    .local p3, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateChildrenSettingItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Z)Ljava/util/List;

    move-result-object v13

    .line 832
    .local v13, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v8

    .line 834
    .local v8, "current":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v10, -0x1

    .line 835
    .local v10, "iconId":I
    const-string v16, ""

    .line 837
    .local v16, "valueText":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 838
    invoke-interface {v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getIconId()I

    move-result v10

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v16

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getSubText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    .line 843
    .local v15, "subText":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 850
    .end local v15    # "subText":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v14, 0x1

    .line 852
    .local v14, "selectable":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v12, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 854
    .local v12, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getTitleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->text(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getDialogItemType(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    .line 863
    .local v7, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 873
    :cond_2
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    return-object v1

    .line 850
    .end local v7    # "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    .end local v12    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .end local v14    # "selectable":Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 868
    .restart local v7    # "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    .restart local v12    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .restart local v14    # "selectable":Z
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 869
    .local v11, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v7, v11}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    goto :goto_1
.end method

.method private generateShortcutItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 5

    .prologue
    .line 488
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 489
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getSettingShortcutList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 492
    .local v2, "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateShortcutSettingItem(Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    .end local v2    # "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    :cond_0
    return-object v0
.end method

.method private generateShortcutSettingItem(Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 11
    .param p1, "shortcut"    # Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 689
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    .line 690
    .local v5, "parameters":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v4, v5, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 693
    .local v4, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v7, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 812
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Shortcut type[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 695
    :pswitch_0
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFacing()Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    move-result-object v0

    .line 696
    .local v0, "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 816
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingUtil;->getBlankItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    :goto_0
    return-object v7

    .line 699
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    const v8, 0x7f020060

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v10

    invoke-static {v8, v9, v0, v10, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSettingChangeExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto :goto_0

    .line 713
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_1
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {p0, v7, v10}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {p0, v7, v10}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 717
    :cond_2
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v4, v7, :cond_3

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 718
    :cond_3
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getPhotoLight()Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    .line 719
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKeyTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 729
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_4
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    .line 730
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKeyTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 742
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 745
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getEv()Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v0

    .line 746
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getWhiteBalance()Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    move-result-object v1

    .line 748
    .local v1, "currentWhiteBalance":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    if-ne v0, v7, :cond_5

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    if-ne v1, v7, :cond_5

    .line 749
    const v2, 0x7f02004e

    .line 753
    .local v2, "iconId":I
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09005b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 756
    .local v6, "whiteBalanceTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKeyTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isControlDialogOpened()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 751
    .end local v2    # "iconId":I
    .end local v6    # "whiteBalanceTitle":Ljava/lang/String;
    :cond_5
    const v2, 0x7f02004d

    .restart local v2    # "iconId":I
    goto :goto_1

    .line 769
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local v1    # "currentWhiteBalance":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local v2    # "iconId":I
    :pswitch_3
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v0

    .line 770
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 773
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKeyTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {p0, v8}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 784
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_4
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getDefaultTab(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v3

    .line 785
    .local v3, "item":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    const v8, 0x7f020065

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    const v8, 0x7f0900cd

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectMenuShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isMenuDialogOpened()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 794
    .end local v3    # "item":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :pswitch_5
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    .line 795
    .restart local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 798
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getIconId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKeyTextId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {p0, v8}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectShortcutExecutor(Lcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 809
    .end local v0    # "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_6
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingUtil;->getBlankItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v7

    goto/16 :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getChildDialogItemType(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 919
    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 939
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 926
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 929
    :sswitch_2
    const/4 v0, 0x7

    goto :goto_0

    .line 932
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isInMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 933
    goto :goto_0

    .line 919
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private getControlDialogItemType(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)I
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 947
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 955
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 949
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 952
    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDialogItemType(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)I
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 880
    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 911
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 895
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 899
    goto :goto_0

    .line 908
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified list is empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 1033
    .local v1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1040
    .end local v1    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_0
    return-object v1

    :cond_2
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-object v1, v2

    goto :goto_0
.end method

.method private getTabs()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 2

    .prologue
    .line 504
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v0, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 506
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 514
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getSettingTabList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v1

    return-object v1

    .line 508
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0
.end method

.method private isInMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z
    .locals 3
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    const/4 v0, 0x0

    .line 640
    if-nez p1, :cond_0

    .line 651
    :goto_0
    return v0

    .line 644
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingGroup:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isShortcutIconShown(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Z
    .locals 6
    .param p1, "parameterKey"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    const/4 v3, 0x0

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "icon":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    sget-object v4, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 206
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 215
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getSettingShortcutList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 217
    .local v2, "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    const/4 v3, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 210
    goto :goto_1

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isShortcutIconShown(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z
    .locals 4
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 188
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->getSettingShortcutList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 190
    .local v1, "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->getGroup()Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const/4 v2, 0x1

    .line 194
    .end local v1    # "item":Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 607
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v0

    .line 608
    .local v0, "parameterManager":Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getOptions(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    array-length v4, v4

    if-gt v4, v3, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v2

    .line 613
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    :cond_2
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isSystemApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    :cond_3
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v4

    if-nez v4, :cond_0

    .line 629
    :cond_4
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isInMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v4

    if-nez v4, :cond_0

    .line 634
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v1

    .line 635
    .local v1, "selectability":Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-eq v1, v4, :cond_6

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v1, v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private isVisible(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z
    .locals 6
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    const/4 v4, 0x0

    .line 656
    if-nez p1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return v4

    .line 659
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 660
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-direct {p0, v2, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 661
    const/4 v4, 0x1

    goto :goto_0

    .line 659
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private itemCount(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I
    .locals 6
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 1114
    const/4 v2, 0x0

    .line 1116
    .local v2, "itemCount":I
    if-eqz p1, :cond_1

    .line 1117
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v3, v0, v1

    .line 1118
    .local v3, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-direct {p0, v3, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1119
    add-int/lit8 v2, v2, 0x1

    .line 1117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1124
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v1    # "i$":I
    .end local v3    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v4    # "len$":I
    :cond_1
    return v2
.end method

.method private menuDialogMaxItemCount()I
    .locals 6

    .prologue
    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "commonItemCount":I
    const/4 v3, 0x0

    .line 1090
    .local v3, "photoItemCount":I
    const/4 v4, 0x0

    .line 1091
    .local v4, "videoItemCount":I
    const/4 v1, 0x0

    .line 1093
    .local v1, "maxItemCount":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    iget-object v2, v5, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1095
    .local v2, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->itemCount(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I

    move-result v0

    .line 1097
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, v5, :cond_0

    .line 1098
    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->itemCount(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I

    move-result v3

    .line 1099
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1110
    :goto_0
    return v1

    .line 1100
    :cond_0
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, v5, :cond_1

    .line 1101
    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->itemCount(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I

    move-result v4

    .line 1102
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1104
    :cond_1
    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->itemCount(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I

    move-result v3

    .line 1105
    sget-object v5, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->itemCount(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)I

    move-result v4

    .line 1106
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1107
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private updateStorageSetting()V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->hasExtraOutputPath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 686
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    goto :goto_0

    .line 680
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 682
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    goto :goto_0
.end method


# virtual methods
.method public clearShortcutTray()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 424
    return-void
.end method

.method public closeDialogTemporary()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isControlDialogOpened()Z

    move-result v0

    .line 160
    .local v0, "isControlDialogOpened":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 161
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mIsClosedTemporaryControlDialog:Z

    .line 162
    return-void
.end method

.method public closeDialogs()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 393
    return-void
.end method

.method public closeDialogsWithAnimation()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 398
    return-void
.end method

.method public findCommonSettingKeyShownBySettingDialog()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 5

    .prologue
    .line 1078
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1079
    .local v2, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1083
    .end local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :goto_1
    return-object v2

    .line 1078
    .restart local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    .end local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public forgetTemporaryClosedDialog()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mIsClosedTemporaryControlDialog:Z

    .line 169
    return-void
.end method

.method public generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .locals 7
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 445
    new-instance v6, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v6, v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 447
    .local v6, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateChildrenSettingItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->addAll(Ljava/util/Collection;)V

    .line 453
    return-object v6
.end method

.method public getSettingDialogController()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogController:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    return-object v0
.end method

.method public getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    return-object v0
.end method

.method public hideShortcutTray()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->hideShortcutTray()V

    .line 434
    return-void
.end method

.method public onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1050
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1055
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1052
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTabSelected(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    .prologue
    .line 1060
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateSettingMenu(Z)V

    .line 1061
    return-void
.end method

.method public openControlDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V
    .locals 17
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 341
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isShortcutIconShown(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->isMenuAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_0

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutSelected(Ljava/lang/Object;)V

    .line 355
    new-instance v8, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v8, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 356
    .local v8, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v9

    .local v9, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_5

    aget-object v4, v9, v12

    .line 359
    .local v4, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 356
    .end local v12    # "i$":I
    :goto_2
    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_1

    .line 363
    :cond_3
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getControlDialogItemType(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    move-result-object v10

    .line 367
    .local v10, "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v6

    .line 368
    .local v6, "parameterManager":Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateChildrenSettingItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Z)Ljava/util/List;

    move-result-object v15

    .line 371
    .local v15, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12    # "i$":I
    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 372
    .local v16, "settingItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    goto :goto_3

    .line 375
    .end local v16    # "settingItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_4
    invoke-virtual {v10}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 378
    .end local v4    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v6    # "parameterManager":Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .end local v10    # "builder":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    .restart local v12    # "i$":I
    :cond_5
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2, v8}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z

    move-result v13

    .line 380
    .local v13, "isDialogOpen":Z
    if-nez v13, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    goto/16 :goto_0
.end method

.method public openMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V
    .locals 7
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 304
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->isMenuAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isMenuDialogOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutSelected(Ljava/lang/Object;)V

    .line 314
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateGroupItemAdapter(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    .line 315
    .local v1, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getTabs()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->menuDialogMaxItemCount()I

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z

    move-result v6

    .line 323
    .local v6, "isDialogOpen":Z
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getSecondLayerDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 328
    :cond_3
    if-nez v6, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    goto :goto_0
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public openShortcutDialog(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V
    .locals 4
    .param p1, "parameterKey"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isShortcutIconShown(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->isMenuAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z

    move-result v0

    .line 244
    .local v0, "isDialogOpen":Z
    if-nez v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    goto :goto_0
.end method

.method public openShortcutDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V
    .locals 18
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 254
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isShortcutIconShown(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->isMenuAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_0

    .line 264
    :cond_2
    const/4 v10, 0x0

    .line 265
    .local v10, "firstKey":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    new-instance v8, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v8, v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 266
    .local v8, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v9

    .local v9, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_6

    aget-object v4, v9, v12

    .line 267
    .local v4, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 266
    .end local v12    # "i$":I
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .restart local v11    # "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_1

    .line 271
    :cond_4
    if-nez v10, :cond_5

    .line 272
    move-object v10, v4

    .line 275
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateChildrenSettingItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/parameter/ParameterManager;Z)Ljava/util/List;

    move-result-object v15

    .line 282
    .local v15, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12    # "i$":I
    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 283
    .local v16, "settingItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 289
    .end local v4    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    .end local v16    # "settingItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .restart local v12    # "i$":I
    :cond_6
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v10, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v17

    .line 292
    .local v17, "titleTextId":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move/from16 v0, v17

    invoke-virtual {v2, v8, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z

    move-result v13

    .line 294
    .local v13, "isDialogOpen":Z
    if-nez v13, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    goto/16 :goto_0

    .line 289
    .end local v13    # "isDialogOpen":Z
    .end local v17    # "titleTextId":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getTextId()I

    move-result v17

    goto :goto_3
.end method

.method public reopenTemporaryClosedDialog()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mIsClosedTemporaryControlDialog:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateShortcutTray()V

    .line 177
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->openControlDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mIsClosedTemporaryControlDialog:Z

    .line 180
    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setUiOrientation(I)V

    .line 404
    return-void
.end method

.method public showShortcutTray()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->showShortcutTray()V

    .line 429
    return-void
.end method

.method public updatSecondLayerDialog(Z)V
    .locals 9
    .param p1, "resetScrollPosition"    # Z

    .prologue
    .line 572
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getSecondLayerDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v7

    .line 573
    .local v7, "secondLayerDialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    if-nez v7, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 577
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 583
    const/4 v6, 0x0

    .line 584
    .local v6, "newAdapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v1, v3

    .line 585
    .local v4, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v8, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 586
    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v6

    .line 584
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    .end local v4    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_3
    if-eqz v6, :cond_4

    .line 592
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 593
    invoke-virtual {v6, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 598
    .end local v2    # "i":I
    :cond_4
    if-eqz p1, :cond_5

    .line 599
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 601
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateSettingMenu(Z)V
    .locals 10
    .param p1, "resetScrollPosition"    # Z

    .prologue
    .line 522
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v6

    .line 523
    .local v6, "menuDialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    if-nez v6, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 527
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getSelectedTab()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v7

    .line 528
    .local v7, "tab":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateStorageSetting()V

    .line 534
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 537
    sget-object v8, Lcom/sonyericsson/android/camera/view/settings/SettingController$2;->$SwitchMap$com$sonyericsson$cameracommon$setting$dialog$SettingTabs$Tab:[I

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 548
    const/4 v2, 0x0

    .line 551
    .local v2, "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :goto_1
    if-eqz v2, :cond_3

    .line 552
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v4, v1, v3

    .line 553
    .local v4, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->isVisible(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 554
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v8, v4, v2, p0}, Lcom/sonyericsson/android/camera/view/settings/executor/SettingExecutorFactory;->createSelectMenuItemExecutor(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/android/camera/view/settings/SettingController;)Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    move-result-object v8

    invoke-direct {p0, v4, v2, v8}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateParameterKeyItem(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/view/settings/SettingGroup;Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 552
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 539
    .end local v1    # "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .end local v3    # "i$":I
    .end local v4    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v5    # "len$":I
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 540
    .restart local v2    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    goto :goto_1

    .line 542
    .end local v2    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 543
    .restart local v2    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    goto :goto_1

    .line 545
    .end local v2    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :pswitch_2
    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 546
    .restart local v2    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    goto :goto_1

    .line 560
    :cond_3
    if-eqz p1, :cond_4

    .line 561
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateShortcutTray()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingController;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->generateShortcutItemAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 415
    return-void
.end method
