.class public Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;
.super Ljava/lang/Object;
.source "DefaultLayoutPatternApplier.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;,
        Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;
    }
.end annotation


# static fields
.field public static final D:I = 0x3

.field public static final H:I = 0x2

.field public static final N:I = 0x0

.field public static final S:I = 0x1


# instance fields
.field protected mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

.field protected mPatternComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 5
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 65
    .local v1, "visiblities":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    .local v0, "visibility":I
    packed-switch v0, :pswitch_data_0

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->isTouched()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 83
    :goto_0
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CONTENT_VIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    packed-switch v0, :pswitch_data_1

    .line 95
    :goto_1
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_SELECTOR_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    packed-switch v0, :pswitch_data_2

    .line 107
    :goto_2
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_METHOD_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    packed-switch v0, :pswitch_data_3

    .line 119
    :goto_3
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    packed-switch v0, :pswitch_data_4

    .line 131
    :goto_4
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->GEOTAG_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    packed-switch v0, :pswitch_data_5

    .line 143
    :goto_5
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->STORAGE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    packed-switch v0, :pswitch_data_6

    .line 155
    :goto_6
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->ZOOM_BAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    packed-switch v0, :pswitch_data_7

    .line 170
    :goto_7
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->BALLOON_TIPS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    packed-switch v0, :pswitch_data_8

    .line 184
    :cond_0
    :goto_8
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RECORDING_PROGRESS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    packed-switch v0, :pswitch_data_9

    .line 196
    :goto_9
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RIGHT_BOTTOM_CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    packed-switch v0, :pswitch_data_a

    .line 208
    :goto_a
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->THERMAL_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    packed-switch v0, :pswitch_data_b

    .line 220
    :goto_b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->refresh()V

    .line 221
    return-void

    .line 68
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 71
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    goto/16 :goto_1

    .line 89
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    goto/16 :goto_1

    .line 98
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 101
    :pswitch_5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 110
    :pswitch_6
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 113
    :pswitch_7
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 122
    :pswitch_8
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 125
    :pswitch_9
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 134
    :pswitch_a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    goto/16 :goto_5

    .line 137
    :pswitch_b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto/16 :goto_5

    .line 146
    :pswitch_c
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    goto/16 :goto_6

    .line 149
    :pswitch_d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto/16 :goto_6

    .line 158
    :pswitch_e
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->show()V

    goto/16 :goto_7

    .line 161
    :pswitch_f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hide()V

    goto/16 :goto_7

    .line 164
    :pswitch_10
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideDelayed()V

    goto/16 :goto_7

    .line 173
    :pswitch_11
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->isBalloonTipsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->show()V

    goto/16 :goto_8

    .line 178
    :pswitch_12
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->hide()V

    goto/16 :goto_8

    .line 187
    :pswitch_13
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto/16 :goto_9

    .line 190
    :pswitch_14
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto/16 :goto_9

    .line 199
    :pswitch_15
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonGroup()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 202
    :pswitch_16
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonGroup()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 211
    :pswitch_17
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    goto/16 :goto_b

    .line 214
    :pswitch_18
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto/16 :goto_b

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 96
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 108
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 120
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 132
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 144
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 156
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 171
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 185
    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 197
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 209
    :pswitch_data_b
    .packed-switch 0x1
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method protected set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .locals 9
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .param p2, "visibility"    # [I

    .prologue
    .line 288
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    move-result-object v6

    array-length v6, v6

    array-length v7, p2

    if-eq v6, v7, :cond_0

    .line 290
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not equal components count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " visibility count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    :cond_0
    const/4 v4, 0x0

    .line 296
    .local v4, "index":I
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 297
    .local v2, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 298
    .local v1, "component":Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;
    aget v6, p2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "component":Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;
    :cond_1
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;Z)V
    .locals 0
    .param p1, "baseLayout"    # Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .param p2, "isOneshot"    # Z

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->setupLayoutPattern()V

    .line 51
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->setupVisibilities(Z)V

    .line 52
    return-void
.end method

.method protected setupLayoutPattern()V
    .locals 6

    .prologue
    .line 55
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 56
    .local v3, "pattern":Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "pattern":Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    :cond_0
    return-void
.end method

.method protected setupVisibilities(Z)V
    .locals 3
    .param p1, "oneshot"    # Z

    .prologue
    const/16 v2, 0xc

    .line 236
    if-eqz p1, :cond_0

    .line 250
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 251
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 252
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 253
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 254
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 255
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 256
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 257
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 258
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 259
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 260
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 261
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 277
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 265
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 266
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 267
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 268
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 269
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 270
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 271
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 272
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 273
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 274
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_16

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 275
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_17

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    goto :goto_0

    .line 250
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 252
    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 253
    :array_3
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 254
    :array_4
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 255
    :array_5
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 256
    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
        0x2
        0x1
        0x2
        0x1
    .end array-data

    .line 257
    :array_7
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 258
    :array_8
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 259
    :array_9
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 260
    :array_a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 261
    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
        0x2
        0x1
        0x2
        0x1
    .end array-data

    .line 264
    :array_c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x0
        0x2
        0x2
        0x1
    .end array-data

    .line 265
    :array_d
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 266
    :array_e
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 267
    :array_f
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 268
    :array_10
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 269
    :array_11
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 270
    :array_12
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data

    .line 271
    :array_13
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 272
    :array_14
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 273
    :array_15
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 274
    :array_16
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 275
    :array_17
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data
.end method
