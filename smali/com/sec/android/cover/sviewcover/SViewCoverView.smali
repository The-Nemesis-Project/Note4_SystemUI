.class public Lcom/sec/android/cover/sviewcover/SViewCoverView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
.implements Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverView$5;,
        Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverView"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

.field private mIsAddedMissedEventWidget:Z

.field private mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

.field private mNeedToAddMissedEventWidget:Z

.field private mNormalContentRootView:Landroid/view/ViewGroup;

.field private mPendingIntent:Landroid/content/Intent;

.field private mPinWindowContentRootView:Landroid/view/ViewGroup;

.field private mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

.field private mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

.field private mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 74
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 75
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 94
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 95
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 96
    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    .line 98
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 207
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 235
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    .line 236
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/widget/CoverHideEffectView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private ensureEffectViewHidden()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->removeView(Landroid/view/View;)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->addView(Landroid/view/View;I)V

    .line 901
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    .line 905
    :cond_1
    return-void
.end method

.method private gotoOpenPage()V
    .locals 3

    .prologue
    .line 655
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoMissedPage current page index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHomeMissedEventWidget.getMissedCallCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->NotiPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    :cond_1
    return-void
.end method

.method private hideCoverUi()V
    .locals 5

    .prologue
    .line 597
    const-string v2, "SViewCoverView"

    const-string v3, "hideCoverUi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_0

    .line 600
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideCoverUi : SViewPager Count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 604
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 608
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 610
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 611
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 613
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 614
    .local v0, "callState":I
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-nez v0, :cond_2

    .line 617
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 631
    .end local v0    # "callState":I
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 632
    return-void

    .line 620
    :cond_3
    const-string v2, "SViewCoverView"

    const-string v3, "handleMessage : Screen is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 635
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 639
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 641
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 643
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 645
    .local v3, "width":I
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 647
    .local v0, "height":I
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSViewMeasureSpec width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->measure(II)V

    .line 652
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private playAnimationAndHide()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 857
    const/4 v4, 0x0

    .line 858
    .local v4, "quickShowHide":Z
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_0

    move v3, v5

    .line 859
    .local v3, "portrait":Z
    :goto_0
    const/4 v3, 0x0

    .line 860
    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 863
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setDrawingCacheEnabled(Z)V

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 866
    .local v2, "cache":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 873
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_1

    .line 874
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 876
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 877
    .local v1, "c":Landroid/graphics/Canvas;
    const/16 v5, 0xff

    invoke-virtual {v1, v5, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 878
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 882
    .end local v1    # "c":Landroid/graphics/Canvas;
    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v5, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 883
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v5, v6}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setVisibility(I)V

    .line 884
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v5}, Lcom/sec/android/cover/widget/CoverHideEffectView;->startHideAnimation()V

    .line 889
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setDrawingCacheEnabled(Z)V

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->destroyDrawingCache()V

    .line 894
    .end local v2    # "cache":Landroid/graphics/Bitmap;
    :goto_3
    return-void

    .end local v3    # "portrait":Z
    :cond_0
    move v3, v6

    .line 858
    goto :goto_0

    .line 880
    .restart local v2    # "cache":Landroid/graphics/Bitmap;
    .restart local v3    # "portrait":Z
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 886
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    goto :goto_2

    .line 892
    .end local v2    # "cache":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    goto :goto_3
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 987
    const-string v1, "SViewCoverView"

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 990
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    return-void
.end method

.method private sendCoverEventProcessingFinishedNotification()V
    .locals 5

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    .line 737
    .local v0, "coverOpen":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 741
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cover event processing notification sent : coverOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method private showCoverUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 508
    const-string v1, "SViewCoverView"

    const-string v2, "showCoverUi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const-string v1, "SViewCoverView"

    const-string v2, "showCoverUi : Cover is opend -> Ignore showCoverUi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 594
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/widget/CoverHideEffectView;->stopAnimation(Z)V

    .line 519
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_2

    .line 523
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewPager Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    .line 527
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showWallPaperSetting()V

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 530
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V

    .line 531
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 533
    .local v0, "isKidsMode":Z
    if-ne v0, v6, :cond_5

    .line 534
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 536
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 538
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 573
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 575
    invoke-virtual {p0, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 579
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 580
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 581
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 593
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto/16 :goto_0

    .line 541
    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_6

    .line 543
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 544
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 545
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 547
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_1

    .line 548
    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 549
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_7

    .line 550
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 552
    :cond_7
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_3

    .line 553
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 554
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 557
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_1

    .line 560
    :cond_8
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9

    .line 561
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 563
    :cond_9
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 565
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 566
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 567
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 568
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_1
.end method

.method private showWallPaperSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 426
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 427
    const-string v4, "SViewCoverView"

    const-string v5, "showWallPaperSetting() return because of pin window"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v0

    .line 434
    .local v0, "currentCoverColor":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    .line 435
    .local v3, "wallpaperMgr":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCallActive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 436
    invoke-virtual {v3, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isWallpaperNeedToSetup(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 440
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 441
    :cond_4
    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : Wallpaper color is not setup yet -> Show wallpaper setup activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 444
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 445
    const/high16 v4, 0x10010000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    const-string v4, "wallpaper_initialize"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v4, "SViewCoverView"

    const-string v5, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    .end local v1    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateViewVisibleState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 462
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v0

    .line 464
    .local v0, "isKidsMode":Z
    if-ne v0, v5, :cond_1

    .line 465
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 467
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 468
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 469
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 470
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 503
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 504
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 505
    return-void

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 475
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 476
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 477
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 478
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 480
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 483
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 485
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 486
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 487
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_0

    .line 490
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 491
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 493
    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 495
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 496
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 497
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 498
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 400
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 403
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentPageIndex()Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    return-object v0
.end method

.method public getTopmostVisibleView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 415
    sget v1, Lcom/sec/android/sviewcover/R$id;->sview_cover_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 416
    .local v0, "topmostVisibleView":Landroid/view/ViewGroup;
    return-object v0
.end method

.method public isCoverOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 726
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideAllHandlerMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 730
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToMainPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 922
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 924
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 926
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    .line 928
    :cond_0
    return-void
.end method

.method public moveToPage(IZ)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 931
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 933
    .local v1, "enumIndex":Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v2, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 935
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-ne v2, v0, :cond_1

    .line 936
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 943
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 944
    return-void

    .line 937
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-ne v2, v0, :cond_2

    .line 938
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0

    .line 939
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-ne v2, v0, :cond_0

    .line 940
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0
.end method

.method public moveToPage(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;Z)V
    .locals 4
    .param p1, "pageIndex"    # Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 947
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-nez v1, :cond_0

    .line 984
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move to page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    .line 954
    const/4 v0, 0x0

    .line 956
    .local v0, "movePageIndex":I
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$5;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 970
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 975
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 976
    const-string v1, "SViewCoverView"

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v0, 0x0

    .line 980
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 981
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_0

    .line 958
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 962
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 966
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 983
    :cond_3
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    goto :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "SViewCoverView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onAttachedToWindow()V

    .line 350
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 351
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 366
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 368
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 370
    .local v0, "isCoverOpen":Z
    :goto_0
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverEvent :  isCoverOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " coverColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isLGTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    const-string v1, "lock"

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    const-string v1, "SViewCoverView"

    const-string v2, "onCoverEvent : missing_phone_lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_1
    return-void

    .line 368
    .end local v0    # "isCoverOpen":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    .restart local v0    # "isCoverOpen":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 384
    if-eqz v0, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->gotoOpenPage()V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->playAnimationAndHide()V

    .line 394
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->sendCoverEventProcessingFinishedNotification()V

    goto :goto_1

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->showCoverUi()V

    .line 389
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    .line 390
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->coverEventFinished()V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 355
    const-string v0, "SViewCoverView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onDetachedFromWindow()V

    .line 358
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 361
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 241
    invoke-super {p0}, Lcom/sec/android/cover/CoverMainFrameView;->onFinishInflate()V

    .line 242
    const-string v0, "SViewCoverView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 246
    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_normal:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    .line 247
    sget v0, Lcom/sec/android/sviewcover/R$id;->content_root_pin_window:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    .line 249
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mScreenOffTimerHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V

    .line 252
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    .line 256
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 257
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVolumeWarningRemoteViewContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 270
    sget v0, Lcom/sec/android/sviewcover/R$id;->voice_recorder_dialog_contatiner:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 271
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v1, "voice_recorder_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mVoiceRecorderDialogContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->removeAllViews()V

    .line 284
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    .line 285
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 288
    :cond_1
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_hide_effect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    .line 291
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->setListener(Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_7

    .line 296
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 300
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_page_navigation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .line 301
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/sec/android/cover/sviewcover/SViewCoverPager;)V

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_shortcuts:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    .line 306
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mShortcuts:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 311
    :cond_4
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .line 312
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    if-eqz v0, :cond_5

    .line 313
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    .line 317
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_camera_layout:I

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    .line 322
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mCameraPage:Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverCameraArea;->setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEvent()V

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 333
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestRemoteViews()V

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateContentRootViewVisibility()V

    .line 335
    return-void
.end method

.method public onHideAnimationFinished()V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hideCoverUi()V

    .line 854
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 911
    :cond_0
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 2
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 915
    if-nez p2, :cond_0

    .line 916
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    .line 919
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 342
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onWindowFocusChanged(Z)V

    .line 343
    return-void
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPendingIntent:Landroid/content/Intent;

    .line 999
    return-void
.end method

.method public updateContentRootViewVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1002
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    .line 1021
    :cond_1
    :goto_0
    return-void

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNormalContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mPinWindowContentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1019
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->requestLayout()V

    goto :goto_0
.end method

.method public updateMissedEvent()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x1

    .line 801
    const-string v2, "SViewCoverView"

    const-string v4, "updateMissedEvent()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v11

    .line 805
    .local v11, "coverRemoteViewManager":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v2, "new_message"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v12

    .line 807
    .local v12, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    const-string v2, "missed_call"

    invoke-virtual {v11, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 810
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->clearMissedEvent()V

    .line 813
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 816
    if-eqz v12, :cond_0

    iget-boolean v2, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    .line 817
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 818
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v12, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 825
    .local v1, "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 829
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_1

    .line 830
    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 831
    new-instance v1, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mTime:J

    iget-object v6, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v7, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mSecureModeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v8, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iget v9, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mCount:I

    iget-object v10, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;-><init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJLandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 837
    .restart local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->addMissedEvent(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)V

    .line 840
    .end local v1    # "remoteViewsItem":Lcom/sec/android/cover/manager/CoverMissedEventManager$RemoteViewsItem;
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v2, :cond_2

    .line 841
    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 842
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 849
    :goto_0
    return-void

    .line 846
    :cond_2
    iput-boolean v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 847
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    goto :goto_0
.end method

.method public updateMissedEventWidget()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 751
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 753
    .local v0, "isKeyguardSecureMode":Z
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 754
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-nez v4, :cond_4

    .line 755
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-eqz v4, :cond_0

    .line 759
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 760
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 761
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 762
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 763
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 764
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageNavigationVisibility(I)V

    .line 765
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0

    .line 767
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    .line 773
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v4, :cond_0

    .line 774
    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 776
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 780
    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v4, :cond_0

    .line 781
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedEventCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 782
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 783
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    goto :goto_0

    .line 786
    :cond_6
    const/4 v2, 0x0

    .line 787
    .local v2, "missedCallCount":I
    const/4 v3, 0x0

    .line 788
    .local v3, "unreadMessage":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v2

    .line 789
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v3

    .line 790
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiPageButton(II)V

    goto/16 :goto_0
.end method

.method public updateSViewCoverUnlockArea(Z)V
    .locals 5
    .param p1, "visibility"    # Z

    .prologue
    .line 693
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-nez v3, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 698
    .local v0, "homeIndex":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/cover/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 699
    if-eqz p1, :cond_3

    .line 700
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleShow()V

    .line 701
    const/4 v1, 0x0

    .line 702
    .local v1, "missedCallCount":I
    const/4 v2, 0x0

    .line 703
    .local v2, "unreadMessage":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    .line 704
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    .line 705
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 706
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 710
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 711
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0

    .line 708
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    goto :goto_1

    .line 713
    .end local v1    # "missedCallCount":I
    .end local v2    # "unreadMessage":I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->handleHide()V

    goto :goto_0

    .line 715
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 716
    const/4 v1, 0x0

    .line 717
    .restart local v1    # "missedCallCount":I
    const/4 v2, 0x0

    .line 718
    .restart local v2    # "unreadMessage":I
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v1

    .line 719
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mMainPage:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v2

    .line 720
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->updateNotiArea(II)V

    goto :goto_0
.end method
