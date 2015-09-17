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

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "SViewCoverView"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->checkFontStyleChanged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "SViewCoverView"

    const-string v1, "ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 116
    :cond_1
    return-void

    .line 107
    :cond_2
    const-string v0, "SViewCoverView"

    const-string v1, "BR checkFontStyleChanged false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFloatingMsgHided()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 188
    :cond_0
    return-void
.end method

.method public onFloatingMsgShowed()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 194
    :cond_0
    return-void
.end method

.method public onInsertSPen(Z)V
    .locals 1
    .param p1, "penInserted"    # Z

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 144
    :cond_0
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 5

    .prologue
    .line 175
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

    .line 177
    .local v1, "powersavingState":I
    const/16 v0, 0x1770

    .line 178
    .local v0, "duration":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 179
    const/16 v0, 0xbb8

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->setmTimeOutDuration(I)V

    .line 182
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 197
    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 198
    .local v0, "type":Ljava/lang/String;
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

    .line 199
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 200
    const-string v1, "new_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "missed_call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    .line 204
    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->initMultiTouched()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 138
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "SViewCoverView"

    const-string v1, "onScreenTurnedOn() startScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 125
    :cond_0
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 6
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    const/16 v5, 0x64

    .line 154
    const/16 v0, 0x64

    .line 155
    .local v0, "KNOX_USER_ID":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 156
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 159
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    if-lt p1, v5, :cond_1

    if-ge p2, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 166
    .end local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_1
    if-ge p1, v5, :cond_0

    if-lt p2, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public onVolumeChanged()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 172
    :cond_0
    return-void
.end method
