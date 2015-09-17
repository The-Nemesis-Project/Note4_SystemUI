.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field mDummyMobileGroupForVZW:Landroid/widget/ImageView;

.field private mHasService:Z

.field private mIsAirplaneMode:Z

.field private mIsMobileTypeIconWide:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field mMobileData:Landroid/widget/ImageView;

.field mMobileDataGroup:Landroid/view/ViewGroup;

.field mMobileDataIcon:Landroid/widget/ImageView;

.field private mMobileDataState:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNWBoosterActivity:Landroid/widget/ImageView;

.field private mNWBoosterActivityId:I

.field mNWBoosterGroup:Landroid/view/ViewGroup;

.field mNWBoosterMobileType:Landroid/widget/ImageView;

.field private mNWBoosterMobileTypeId:I

.field private mNWBoosterRunning:Z

.field private mNWBoosterVisible:Z

.field mNWBoosterWifi:Landroid/widget/ImageView;

.field private mNWBoosterWifiId:I

.field private mNoSimIconId:I

.field private mRoaming:Z

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    .line 58
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mStyle:I

    .line 64
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 66
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 68
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 69
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIconId:I

    .line 92
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 93
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 519
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 520
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    .line 521
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 559
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    .line 560
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    .line 561
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 516
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_c

    .line 361
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 366
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    const v6, 0x7f02040b

    if-ne v3, v6, :cond_a

    .line 367
    const/4 v3, 0x4

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 371
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_b

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_b

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 383
    :goto_4
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v6, "SignalClusterView"

    const-string v7, "wifi: %s sig=%d"

    new-array v8, v9, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_d

    const-string v3, "VISIBLE"

    :goto_5
    aput-object v3, v8, v4

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_e

    .line 391
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 401
    .local v2, "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    .end local v2    # "roamingAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 409
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 411
    .local v0, "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    .end local v0    # "frameAnimation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_f

    .line 423
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :goto_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_10

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :goto_9
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_11

    .line 438
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :goto_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    if-eqz v3, :cond_12

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    :goto_b
    invoke-virtual {v6, v3, v4, v4, v4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 466
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v6, "SignalClusterView"

    const-string v7, "mobile: %s sig=%d typ=%d"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v3, :cond_13

    const-string v3, "VISIBLE"

    :goto_c
    aput-object v3, v8, v4

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v10

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_15

    .line 477
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v9, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    if-eqz v3, :cond_14

    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_14

    move v3, v4

    :goto_d
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 481
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 482
    const-string v3, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMobileDataState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBtTetherState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHasService:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_8
    :goto_e
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-eqz v3, :cond_1c

    .line 501
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 502
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v3, :cond_1b

    .line 507
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 357
    goto/16 :goto_1

    .line 369
    .restart local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_2

    .end local v1    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_b
    move v3, v5

    .line 376
    goto/16 :goto_3

    .line 380
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 383
    :cond_d
    const-string v3, "GONE"

    goto/16 :goto_5

    .line 416
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 426
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 432
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 440
    :cond_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_12
    move v3, v4

    .line 444
    goto/16 :goto_b

    .line 466
    :cond_13
    const-string v3, "GONE"

    goto/16 :goto_c

    :cond_14
    move v3, v5

    .line 477
    goto/16 :goto_d

    .line 485
    :cond_15
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_18

    .line 487
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v9, :cond_16

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-nez v3, :cond_16

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    if-eqz v3, :cond_17

    :cond_16
    move v3, v4

    :goto_f
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 489
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 490
    const-string v3, "SignalClusterView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Permanent Data Icon) mSeparateMobileGroup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_17
    move v3, v5

    .line 487
    goto :goto_f

    .line 494
    :cond_18
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    if-eq v3, v9, :cond_19

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v3, :cond_1a

    :cond_19
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-nez v3, :cond_1a

    move v3, v4

    :goto_10
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1a
    move v3, v5

    goto :goto_10

    .line 510
    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_0

    .line 513
    :cond_1c
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v3

    goto/16 :goto_7

    .line 402
    :catch_1
    move-exception v3

    goto/16 :goto_6
.end method

.method private getDataSignalTypeIcon(I)I
    .locals 4
    .param p1, "typeiconId"    # I

    .prologue
    const/4 v0, 0x0

    .line 620
    const-string v1, "SignalClusterView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataSignalTypeIcon mMobileTypeId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    sparse-switch p1, :sswitch_data_0

    .line 635
    :goto_0
    :sswitch_0
    return v0

    .line 629
    :sswitch_1
    const v0, 0x7f020463

    goto :goto_0

    .line 632
    :sswitch_2
    const v0, 0x7f020464

    goto :goto_0

    .line 621
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020374 -> :sswitch_1
        0x7f02037d -> :sswitch_2
        0x7f02039c -> :sswitch_0
        0x7f02039d -> :sswitch_0
        0x7f0203a0 -> :sswitch_1
        0x7f0203a1 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 150
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0e017b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 152
    const v0, 0x7f0e017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 154
    const v0, 0x7f0e018e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0e018f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0e017d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f0e017f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 161
    const v0, 0x7f0e0181

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 162
    const v0, 0x7f0e0183

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0e0182

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0e0190

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0e0370

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDummyMobileGroupForVZW:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    .line 170
    const v0, 0x7f0e0178

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0e036f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 175
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 184
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 189
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 190
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 191
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 192
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 193
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 194
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 197
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 198
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 199
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 200
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 209
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 210
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0334

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 144
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 345
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 346
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0
    .param p1, "btTetherState"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 555
    return-void
.end method

.method public setDataSignalIcon(ZIIIIZ)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "psLeveliconId"    # I
    .param p3, "csLeveliconId"    # I
    .param p4, "typeiconId"    # I
    .param p5, "serviceState"    # I
    .param p6, "isWcdma"    # Z

    .prologue
    const v4, 0x7f0206b7

    const/4 v3, 0x0

    .line 580
    if-eqz p1, :cond_5

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileData:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileData:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 585
    if-eq p2, v4, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/SignalClusterView;->getDataSignalTypeIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    :cond_0
    :goto_0
    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSignalIcon iconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_1
    if-eq p3, v4, :cond_4

    if-eqz p3, :cond_4

    .line 597
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    const v1, 0x7f0203a7

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    .line 602
    const v0, 0x7f020462

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 603
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = stat_sys_rssi_data_2g"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1
    :goto_2
    return-void

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 593
    :cond_3
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileDataGroup is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 608
    :cond_4
    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 609
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileRoamingId = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 614
    const-string v0, "SignalClusterView"

    const-string v1, "setDataSignalIcon mMobileDataGroup GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setDataState(I)V
    .locals 0
    .param p1, "dataState"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 543
    return-void
.end method

.method public setHasService(Z)V
    .locals 0
    .param p1, "hasService"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHasService:Z

    .line 548
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 305
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 308
    return-void
.end method

.method public setMobileActivityIcon(I)V
    .locals 0
    .param p1, "mobileActivityIconId"    # I

    .prologue
    .line 527
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 528
    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "typeIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "typeContentDescription"    # Ljava/lang/String;
    .param p6, "roaming"    # Z
    .param p7, "isTypeIconWide"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 238
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 239
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 240
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 241
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 242
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mRoaming:Z

    .line 243
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsMobileTypeIconWide:Z

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 300
    return-void
.end method

.method public setNWBoosterIndicators(ZZIIILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "running"    # Z
    .param p3, "strengthIcon"    # I
    .param p4, "activityIcon"    # I
    .param p5, "typeIcon"    # I
    .param p6, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    .line 569
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    .line 570
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiId:I

    .line 571
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    .line 572
    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    .line 573
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 575
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 130
    return-void
.end method

.method public setRoamingIcon(I)V
    .locals 0
    .param p1, "roamingIconId"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 538
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 137
    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 0
    .param p1, "wifiActivityIconId"    # I

    .prologue
    .line 532
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 533
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 227
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 228
    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 231
    return-void
.end method
