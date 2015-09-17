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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    .line 64
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setAutoHomeTimezone(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    return-void
.end method

.method private refreshOwnerInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 358
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    .line 364
    .local v1, "isShowInformation":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v3

    .line 365
    .local v3, "ownerInfoEnabled":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "ownerInfo":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 368
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const-string v4, "ko"

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 374
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v5, 0x41980000    # 19.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 379
    .local v0, "isAdditionalInfoEnabled":Z
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

    .prologue
    const/4 v2, 0x4

    .line 384
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isTravelWallpaperSet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getTravelLocationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "locationName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 401
    .end local v0    # "locationName":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAutoHomeTimezone(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4

    .line 424
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-nez v2, :cond_2

    .line 425
    const-string v1, "Asia/Shanghai"

    .line 426
    .local v1, "hometz":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 433
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 435
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

    .line 441
    .end local v1    # "hometz":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 428
    .restart local v1    # "hometz":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "homecity_timezone"

    const-string v4, "Asia/Seoul"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 439
    .end local v1    # "hometz":Ljava/lang/String;
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

    .prologue
    .line 256
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 257
    .local v3, "rs":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 259
    .local v0, "leftMargin":I
    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 260
    .local v2, "rightMargin":I
    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 261
    .local v4, "topMargin":I
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 268
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    return-void
.end method

.method private setDualClockLayoutParams()V
    .locals 6

    .prologue
    .line 239
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, "rs":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 242
    .local v0, "leftMargin":I
    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 243
    .local v2, "rightMargin":I
    sget v5, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 244
    .local v4, "topMargin":I
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    return-void
.end method

.method private setSingleClockImageLayoutParams()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 222
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 223
    .local v3, "rs":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    .local v0, "leftMargin":I
    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 226
    .local v2, "rightMargin":I
    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 227
    .local v5, "topMargin":I
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKProject()Z

    move-result v6

    if-nez v6, :cond_0

    .line 230
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    sget v6, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_image:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 232
    .local v4, "singleClockView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 234
    .end local v4    # "singleClockView":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method private setSingleClockLayoutParams()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 205
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 206
    .local v3, "rs":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 208
    .local v0, "leftMargin":I
    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 209
    .local v2, "rightMargin":I
    sget v6, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 210
    .local v5, "topMargin":I
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 212
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 214
    sget v6, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 215
    .local v4, "singleClockView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 217
    .end local v4    # "singleClockView":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected handleUpdateClock()V
    .locals 0

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    .line 274
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 140
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 148
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockView$4;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    .line 170
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 172
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dualclock_menu_settings"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homecity_timezone"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    .line 184
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    .line 185
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    .line 186
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 202
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 113
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_holder:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    .line 114
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    .line 115
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 116
    sget v1, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 120
    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->keyguard_travel_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homecity_timezone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 124
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 134
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

    .line 136
    return-void
.end method

.method protected updateClock()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 277
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    .line 278
    .local v0, "isDualClockSet":Z
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    move v2, v10

    .line 279
    .local v2, "isHomeTimeZoneExist":Z
    :goto_0
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 281
    .local v1, "isEasyUxOn":Z
    const/4 v3, 0x0

    .line 282
    .local v3, "isNetworkRoaming":Z
    const/4 v4, 0x0

    .line 283
    .local v4, "isNetworkRoamingForMultiSIM":Z
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v5

    .line 284
    .local v5, "isShowInfomation":Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 285
    sget-boolean v12, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v12, :cond_4

    .line 286
    const/4 v8, 0x0

    .local v8, "simSlotNum":I
    :goto_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v12

    if-ge v8, v12, :cond_4

    .line 287
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-static {v13, v8}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 288
    .local v6, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move v4, v10

    .line 286
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v1    # "isEasyUxOn":Z
    .end local v2    # "isHomeTimeZoneExist":Z
    .end local v3    # "isNetworkRoaming":Z
    .end local v4    # "isNetworkRoamingForMultiSIM":Z
    .end local v5    # "isShowInfomation":Z
    .end local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v8    # "simSlotNum":I
    :cond_1
    move v2, v11

    .line 278
    goto :goto_0

    .restart local v1    # "isEasyUxOn":Z
    .restart local v2    # "isHomeTimeZoneExist":Z
    .restart local v3    # "isNetworkRoaming":Z
    .restart local v4    # "isNetworkRoamingForMultiSIM":Z
    .restart local v5    # "isShowInfomation":Z
    .restart local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v8    # "simSlotNum":I
    :cond_2
    move v4, v11

    .line 288
    goto :goto_2

    .line 292
    .end local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v8    # "simSlotNum":I
    :cond_3
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 293
    .restart local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_4

    .line 294
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    .line 296
    .end local v6    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    if-nez v3, :cond_5

    if-eqz v4, :cond_8

    :cond_5
    move v12, v10

    :goto_3
    iput-boolean v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsNetworkRoaming:Z

    .line 298
    if-eqz v0, :cond_9

    iget-boolean v12, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsNetworkRoaming:Z

    if-eqz v12, :cond_9

    if-eqz v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v5, :cond_9

    move v7, v10

    .line 303
    .local v7, "shouldShowDualClock":Z
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

    .line 304
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShowImageClock:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_d

    .line 305
    :cond_6
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_7

    .line 306
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 307
    if-eqz v7, :cond_b

    .line 308
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_view:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 310
    .local v9, "targetClock":Landroid/view/View;
    if-eqz v9, :cond_a

    .line 311
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 312
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockLayoutParams()V

    .line 355
    .end local v9    # "targetClock":Landroid/view/View;
    :cond_7
    :goto_5
    return-void

    .end local v7    # "shouldShowDualClock":Z
    :cond_8
    move v12, v11

    .line 296
    goto :goto_3

    :cond_9
    move v7, v11

    .line 298
    goto :goto_4

    .line 314
    .restart local v7    # "shouldShowDualClock":Z
    .restart local v9    # "targetClock":Landroid/view/View;
    :cond_a
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 317
    .end local v9    # "targetClock":Landroid/view/View;
    :cond_b
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_view:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 320
    .restart local v9    # "targetClock":Landroid/view/View;
    if-eqz v9, :cond_c

    .line 321
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockLayoutParams()V

    goto :goto_5

    .line 324
    :cond_c
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 329
    .end local v9    # "targetClock":Landroid/view/View;
    :cond_d
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_7

    .line 330
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 331
    if-eqz v7, :cond_f

    .line 332
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_image:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 334
    .restart local v9    # "targetClock":Landroid/view/View;
    if-eqz v9, :cond_e

    .line 335
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockImageLayoutParams()V

    goto :goto_5

    .line 338
    :cond_e
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock Image null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 341
    .end local v9    # "targetClock":Landroid/view/View;
    :cond_f
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_image:I

    invoke-static {v10, v11, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 344
    .restart local v9    # "targetClock":Landroid/view/View;
    if-eqz v9, :cond_10

    .line 345
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 346
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockImageLayoutParams()V

    goto :goto_5

    .line 348
    :cond_10
    const-string v10, "SecKeyguardClockView"

    const-string v11, "clock Image null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
