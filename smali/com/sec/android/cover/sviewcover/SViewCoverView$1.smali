.class Lcom/sec/android/cover/sviewcover/SViewCoverView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    const-string v0, "SViewCoverView"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->checkFontStyleChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SViewCoverView"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "SViewCoverView"

    const-string v1, "BR checkFontStyleChanged false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFloatingMsgHided()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    :cond_0
    return-void
.end method

.method public onFloatingMsgShowed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    :cond_0
    return-void
.end method

.method public onInsertSPen(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    :cond_0
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v0, 0x1770

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v0, 0xbb8

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->setmTimeOutDuration(I)V

    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteViewUpdated : Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    const-string v1, "new_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "missed_call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->initMultiTouched()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SViewCoverView"

    const-string v1, "onScreenTurnedOn() startScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    :cond_0
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 6

    const/16 v5, 0x64

    const/16 v0, 0x64

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-lt p1, v5, :cond_1

    if-ge p2, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ge p1, v5, :cond_0

    if-lt p2, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public onVolumeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    :cond_0
    return-void
.end method
