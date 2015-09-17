.class public Lcom/android/keyguard/sec/SecKeyguardClockView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockView.java"


# static fields
.field private static final FONT_SIZE_EASY_MODE_KOREAN_OWNER_INFO:I = 0x10

.field private static final FONT_SIZE_EASY_MODE_OWNER_INFO:I = 0x13

.field private static final MSG_CONTENT_UPDATED:I = 0x12cb

.field private static final MSG_TRAVEL_INFO_SETTINGS_CHANGED:I = 0x12cc

.field private static final TAG:Ljava/lang/String; = "SecKeyguardClockView"


# instance fields
.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mClockViewSettingsObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsNetworkRoaming:Z

.field private mKeyguardClockView:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mShowImageClock:Ljava/lang/Boolean;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setAutoHomeTimezone(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    return-void
.end method

.method private refreshOwnerInfo()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ko"

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v5, 0x41980000    # 19.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private refreshTravelInfo()V
    .locals 3

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isTravelWallpaperSet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getTravelLocationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAutoHomeTimezone(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "Asia/Shanghai"

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_1
    const-string v2, "SecKeyguardClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set homecity_timezone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "homecity_timezone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    const-string v4, "Asia/Seoul"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v2, "SecKeyguardClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoHomeTimezone() - autoHomeTimeZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDualClockImageLayoutParams()V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setDualClockLayoutParams()V
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSingleClockImageLayoutParams()V
    .locals 8

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKProject()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v6, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_image:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSingleClockLayoutParams()V
    .locals 8

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v6, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected handleUpdateClock()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockView$4;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dualclock_menu_settings"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homecity_timezone"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_holder:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->keyguard_travel_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homecity_timezone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    return-void
.end method

.method protected updateClock()V
    .locals 15

    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    move v2, v10

    :goto_0
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v12

    if-eqz v12, :cond_3

    sget-boolean v12, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v12, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v12

    if-ge v8, v12, :cond_4

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-static {v13, v8}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move v4, v10

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v2, v11

    goto :goto_0

    :cond_2
    move v4, v11

    goto :goto_2

    :cond_3
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_8

    :cond_5
    move v12, v10

    :goto_3
    iput-boolean v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsNetworkRoaming:Z

    if-eqz v0, :cond_9

    iget-boolean v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsNetworkRoaming:Z

    if-eqz v12, :cond_9

    if-eqz v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v5, :cond_9

    move v7, v10

    :goto_4
    const-string v10, "SecKeyguardClockView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateClock with mShowImageClock :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_d

    :cond_6
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_view:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockLayoutParams()V

    :cond_7
    :goto_5
    return-void

    :cond_8
    move v12, v11

    goto :goto_3

    :cond_9
    move v7, v11

    goto :goto_4

    :cond_a
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_view:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockLayoutParams()V

    goto :goto_5

    :cond_c
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz v7, :cond_f

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_image:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockImageLayoutParams()V

    goto :goto_5

    :cond_e
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock Image null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_image:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockImageLayoutParams()V

    goto :goto_5

    :cond_10
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock Image null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
