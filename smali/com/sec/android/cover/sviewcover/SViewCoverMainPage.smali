.class public Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
.super Landroid/widget/LinearLayout;
.source "SViewCoverMainPage.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/SViewCoverPager$SViewCoverPageCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewCoverMainPage"


# instance fields
.field private mBasicWidgetContainer:Landroid/view/ViewGroup;

.field private mBatteryCharingText:Landroid/widget/TextView;

.field private mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mClockWidget:Landroid/view/View;

.field private mDisasterAlertText:Landroid/widget/TextView;

.field private mDualClockWidget:Landroid/view/View;

.field private mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThemeDualImageClock:Landroid/view/View;

.field private mThemeImageClock:Landroid/view/View;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mUseThemeClocks:Z

.field private mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mWeatherHealthContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    .line 80
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 114
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 282
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 123
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    .line 80
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 114
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 282
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 128
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    .line 80
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 114
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 282
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 133
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    return-void
.end method

.method private adjustWidgetVisibility()V
    .locals 20

    .prologue
    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 465
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    .line 466
    .local v7, "isEmergencyMode":Z
    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v8

    .line 467
    .local v8, "isKidsMode":Z
    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCarMode(Landroid/content/Context;)Z

    move-result v6

    .line 469
    .local v6, "isCarMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v11

    .line 470
    .local v11, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v17, "music_controller"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v12

    .line 471
    .local v12, "musicPlayerAvailable":Z
    const-string v17, "kids_music_controller"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v9

    .line 473
    .local v9, "kidsMusicPlayerAvailable":Z
    const-string v17, "voice_recorder"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v15

    .line 474
    .local v15, "voiceRecorderAvailable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v13

    .line 476
    .local v13, "stylizedClockAvailable":Z
    const/16 v16, 0x0

    .line 477
    .local v16, "weatherHealthContatinerVisibility":I
    const/4 v3, 0x0

    .line 478
    .local v3, "batteryContainerVisibility":I
    const/4 v2, 0x0

    .line 479
    .local v2, "basicWidgetContainerVisibility":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v14, 0x0

    .line 482
    .local v14, "stylizedClockVisibility":I
    :goto_0
    if-eqz v7, :cond_5

    .line 483
    const/16 v16, 0x8

    .line 484
    const/16 v3, 0x8

    .line 485
    const/16 v14, 0x8

    .line 486
    const/4 v12, 0x0

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 533
    :cond_0
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 535
    :cond_1
    const/16 v14, 0x8

    .line 536
    const/16 v2, 0x8

    .line 539
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    .line 544
    if-nez v16, :cond_3

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateWeatherHealthContainer()V

    .line 548
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 549
    return-void

    .line 479
    .end local v14    # "stylizedClockVisibility":I
    :cond_4
    const/16 v14, 0x8

    goto :goto_0

    .line 489
    .restart local v14    # "stylizedClockVisibility":I
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 493
    :cond_6
    if-eqz v8, :cond_7

    .line 494
    const/16 v16, 0x8

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 500
    :cond_7
    if-eqz v6, :cond_8

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 502
    const-string v17, "SViewCoverMainPage"

    const-string v18, "Hide MusicPlayerContainer by Carmode"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v12, 0x0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 508
    :cond_8
    const-string v17, "battery"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v10

    .line 509
    .local v10, "lowBattery":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v10, :cond_9

    iget-boolean v0, v10, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 510
    const/16 v16, 0x8

    .line 513
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->isSHealthInstalled()Z

    move-result v17

    if-nez v17, :cond_a

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    .line 526
    :goto_2
    if-eqz v13, :cond_0

    .line 527
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v17

    const-string v18, "lock_additional_steps"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_b

    const/4 v5, 0x1

    .line 518
    .local v5, "healthWidgetEnabled":Z
    :goto_3
    const-string v17, "SViewCoverMainPage"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Is checked S_health ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-eqz v5, :cond_c

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_2

    .line 516
    .end local v5    # "healthWidgetEnabled":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    .line 522
    .restart local v5    # "healthWidgetEnabled":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_2
.end method

.method private getTTSonlyTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 145
    .local v2, "mCalendar":Ljava/util/Calendar;
    const-string v0, ""

    .line 150
    .local v0, "TTSMessage":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "mIs24HTime":Z
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 155
    :cond_0
    if-eqz v3, :cond_1

    .line 156
    const-string v5, "kk:mm"

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "mTTSTime":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 169
    return-object v0

    .line 159
    .end local v4    # "mTTSTime":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4    # "mTTSTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "currentLanguage":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AA"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 165
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AA"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private isSHealthInstalled()Z
    .locals 3

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 455
    .local v0, "isInstalled":Z
    if-nez v0, :cond_0

    .line 456
    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return v0

    .line 458
    :cond_0
    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setClockVisibility()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 292
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 295
    .local v0, "isDualClock":Z
    :goto_0
    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming()Z

    move-result v1

    .line 297
    .local v1, "isRoaming":Z
    const-string v3, "SViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClockVisibility : isDualClock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 301
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isDualClock":Z
    .end local v1    # "isRoaming":Z
    :cond_2
    move v0, v2

    .line 292
    goto :goto_0

    .line 309
    .restart local v0    # "isDualClock":Z
    .restart local v1    # "isRoaming":Z
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 314
    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_6

    .line 319
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 322
    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupChildViews()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 173
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_home_widget:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v2, v9, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->addView(Landroid/view/View;II)V

    .line 177
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 178
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sec/android/sviewcover/R$bool;->sview_cover_theme_clock_image_type:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    .line 185
    :goto_0
    sget v4, Lcom/sec/android/sviewcover/R$id;->theme_clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    .line 186
    sget v4, Lcom/sec/android/sviewcover/R$id;->theme_dual_clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    .line 187
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 191
    :cond_2
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    .line 192
    sget v4, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    .line 194
    sget v4, Lcom/sec/android/sviewcover/R$id;->default_home_widget:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    .line 196
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 197
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 199
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    .line 201
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    .line 205
    .local v1, "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    sget v4, Lcom/sec/android/sviewcover/R$id;->disaster_alert:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    .line 206
    const-string v4, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 207
    .local v0, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v0, :cond_3

    .line 208
    iget-object v4, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    .line 212
    :cond_3
    sget v4, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    .line 213
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_4

    .line 215
    iget-object v4, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    .line 218
    :cond_4
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 219
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v4, v6, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 221
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_weather_health_container:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    .line 224
    sget v4, Lcom/sec/android/sviewcover/R$id;->clear_shealth_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 225
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "shealth"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 226
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 233
    sget v4, Lcom/sec/android/sviewcover/R$id;->clear_battery_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 234
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "battery"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 235
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 242
    sget v4, Lcom/sec/android/sviewcover/R$id;->music_player_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 243
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "music_controller"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 244
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 252
    sget v4, Lcom/sec/android/sviewcover/R$id;->kids_music_player_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 253
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "kids_music_controller"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 254
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 261
    sget v4, Lcom/sec/android/sviewcover/R$id;->voice_recorder_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 262
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "voice_recorder"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 263
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    .line 270
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_container:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 273
    .local v3, "root":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 274
    new-instance v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    .line 275
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    .line 278
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    .line 280
    return-void

    .line 181
    .end local v0    # "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    .end local v1    # "bcm":Lcom/sec/android/cover/manager/CoverBroadcastManager;
    .end local v3    # "root":Landroid/widget/LinearLayout;
    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    goto/16 :goto_0
.end method

.method private setupStylizedClockStyle()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBatteryStateWidgetState(Ljava/lang/Object;)V
    .locals 11
    .param p1, "bcItem"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 331
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 332
    const-string v5, "SViewCoverMainPage"

    const-string v6, "mBatteryCharingText is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return-void

    .line 336
    :cond_0
    if-nez p1, :cond_1

    .line 337
    const-string v5, "SViewCoverMainPage"

    const-string v6, "updateBatteryStateWidget : Intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_1
    const/4 v1, 0x0

    .line 344
    .local v1, "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    instance-of v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 345
    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 348
    :cond_2
    if-nez v1, :cond_3

    .line 349
    const-string v5, "SViewCoverMainPage"

    const-string v6, "batteryStatus is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_3
    iget v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    .line 355
    .local v2, "level":I
    iget v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    .line 356
    .local v3, "plugged":I
    iget v4, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    .line 357
    .local v4, "status":I
    const-string v5, "SViewCoverMainPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBatteryStateWidget : Plugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 360
    if-eqz v3, :cond_6

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "batteryCharging":Ljava/lang/String;
    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v5

    if-ne v5, v10, :cond_5

    .line 366
    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 370
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 376
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 379
    :cond_7
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateDisasterAlertWidgetState(Ljava/lang/Object;)V
    .locals 4
    .param p1, "bcItem"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x8

    .line 384
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 385
    const-string v1, "SViewCoverMainPage"

    const-string v2, "mDisasterAlertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 389
    :cond_0
    if-nez p1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    .line 396
    .local v0, "alertText":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 397
    check-cast v0, Ljava/lang/String;

    .line 400
    :cond_2
    if-nez v0, :cond_3

    .line 401
    const-string v1, "SViewCoverMainPage"

    const-string v2, "alertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_3
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlertVisibility show = true, alert text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWeatherHealthContainer()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contextual_holder:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 555
    .local v1, "weatherView":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 557
    .local v0, "bScoverHealth":Z
    :goto_0
    const-string v3, "SViewCoverMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is checked S_health ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz v0, :cond_1

    .line 559
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    .line 564
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getRemoteView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 567
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_shealth_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPaddingRelative(IIII)V

    .line 573
    :goto_2
    return-void

    .end local v0    # "bScoverHealth":Z
    :cond_0
    move v0, v2

    .line 555
    goto :goto_0

    .line 561
    .restart local v0    # "bScoverHealth":Z
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_1

    .line 571
    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPadding(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public getMissedCallCount()I
    .locals 4

    .prologue
    .line 416
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v0

    .line 418
    .local v0, "missedCallCount":I
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missedCallCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 4

    .prologue
    .line 423
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v0

    .line 425
    .local v0, "unreadMessageCount":I
    const-string v1, "SViewCoverMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unreadMessageCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v0
.end method

.method public onActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 587
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 433
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 434
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 440
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 441
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 138
    const-string v0, "SViewCoverMainPage"

    const-string v1, "main onPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    .line 449
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 450
    return-void
.end method
