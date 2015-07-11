.class public abstract Lcom/sonymobile/coversupport/CoverActivity;
.super Landroid/app/Activity;
.source "CoverActivity.java"

# interfaces
.implements Lcom/sonymobile/coversupport/OnCoverModeChangedListener;


# instance fields
.field private mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWindowInfo()Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->getWindowInfo()Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method protected isCoverMode()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->isCoverModeActive()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->updateCoverModePadding()V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/sonymobile/coversupport/CoverModeHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/sonymobile/coversupport/CoverModeHandler;-><init>(Landroid/app/Activity;Lcom/sonymobile/coversupport/OnCoverModeChangedListener;Z)V

    iput-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    .line 30
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 36
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->start()V

    .line 37
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 42
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->stop()V

    .line 43
    return-void
.end method

.method protected setBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/coversupport/CoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/coversupport/CoverModeHandler;->setBackground(I)V

    .line 77
    return-void
.end method
