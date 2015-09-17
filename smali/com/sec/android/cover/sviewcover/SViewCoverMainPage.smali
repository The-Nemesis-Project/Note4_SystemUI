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

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$8;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupChildViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    return-void
.end method

.method private adjustWidgetVisibility()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isCarMode(Landroid/content/Context;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v11

    const-string v17, "music_controller"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v12

    const-string v17, "kids_music_controller"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v9

    const-string v17, "voice_recorder"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v13

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v14, 0x0

    :goto_0
    if-eqz v7, :cond_5

    const/16 v16, 0x8

    const/16 v3, 0x8

    const/16 v14, 0x8

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

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

    :cond_1
    const/16 v14, 0x8

    const/16 v2, 0x8

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    if-nez v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateWeatherHealthContainer()V

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const/16 v14, 0x8

    goto :goto_0

    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    :cond_6
    if-eqz v8, :cond_7

    const/16 v16, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_7
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    const-string v17, "SViewCoverMainPage"

    const-string v18, "Hide MusicPlayerContainer by Carmode"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    :cond_8
    const-string v17, "battery"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-boolean v0, v10, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v16, 0x8

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->isSHealthInstalled()Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    :goto_2
    if-eqz v13, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

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

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_2
.end method

.method private getTTSonlyTime()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v0, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_1

    const-string v5, "kk:mm"

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_1
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.shealth"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "SViewCoverMainPage"

    const-string v2, "isSHealthInstalled : SHealth is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setClockVisibility()V
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_0
    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming()Z

    move-result v1

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

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupChildViews()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_home_widget:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v9, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->addView(Landroid/view/View;II)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v6

    if-eqz v6, :cond_5

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

    :goto_0
    sget v4, Lcom/sec/android/sviewcover/R$id;->theme_clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    sget v4, Lcom/sec/android/sviewcover/R$id;->theme_dual_clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeImageClock:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mThemeDualImageClock:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    sget v4, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    sget v4, Lcom/sec/android/sviewcover/R$id;->default_home_widget:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBasicWidgetContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mClockWidget:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDualClockWidget:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    sget v4, Lcom/sec/android/sviewcover/R$id;->disaster_alert:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    const-string v4, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateDisasterAlertWidgetState(Ljava/lang/Object;)V

    :cond_3
    sget v4, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->updateBatteryStateWidgetState(Ljava/lang/Object;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v4, v6, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_weather_health_container:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/sec/android/sviewcover/R$id;->clear_shealth_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "shealth"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$3;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->clear_battery_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "battery"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$4;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->music_player_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "music_controller"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$5;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->kids_music_player_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "kids_music_controller"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v6, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$6;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->voice_recorder_contatiner:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v6, "voice_recorder"

    invoke-virtual {v4, v6, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mVoiceRecorderContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    new-instance v5, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;

    invoke-direct {v5, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$7;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V

    sget v4, Lcom/sec/android/sviewcover/R$id;->clock_container:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    new-instance v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setupStylizedClockStyle()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    return-void

    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUseThemeClocks:Z

    goto/16 :goto_0
.end method

.method private setupStylizedClockStyle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->updateStyle()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mStylizedClockView:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBatteryStateWidgetState(Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v5, :cond_0

    const-string v5, "SViewCoverMainPage"

    const-string v6, "mBatteryCharingText is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v5, "SViewCoverMainPage"

    const-string v6, "updateBatteryStateWidget : Intent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    instance-of v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v5, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    :cond_2
    if-nez v1, :cond_3

    const-string v5, "SViewCoverMainPage"

    const-string v6, "batteryStatus is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    iget v4, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

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

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    const/16 v5, 0x64

    if-lt v2, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v5

    if-ne v5, v10, :cond_5

    const-string v5, "SViewCoverMainPage"

    const-string v6, "Detected wireless charging"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_6
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateDisasterAlertWidgetState(Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v1, "SViewCoverMainPage"

    const-string v2, "mDisasterAlertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "SViewCoverMainPage"

    const-string v2, "alertText is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

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

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mDisasterAlertText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWeatherHealthContainer()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mWeatherHealthContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contextual_holder:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

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

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->showRemoteView()V

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

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_shealth_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPaddingRelative(IIII)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hideRemoteView()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mSHealthContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->setPadding(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public getMissedCallCount()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventCallCount()I

    move-result v0

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

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getMissedCallCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getUnreadMessageCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverMissedEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->getMissedEventMessageCount()I

    move-result v0

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

    return v0
.end method

.method public onActive(Z)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-string v0, "SViewCoverMainPage"

    const-string v1, "main onPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->getTTSonlyTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->adjustWidgetVisibility()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method
