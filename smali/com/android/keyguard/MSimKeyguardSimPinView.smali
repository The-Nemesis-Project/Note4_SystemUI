.class public Lcom/android/keyguard/MSimKeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardSimPinView;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMEOUT:I = 0x1

.field private static sCancelledCount:I


# instance fields
.field private isWrongPIN:Z

.field private isWrongPINCrash:Z

.field private mCheckMSimPinThread:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

.field private mHandler:Landroid/os/Handler;

.field private mRemainingCount:I

.field private mSubscription:I

.field private mWakelockSequence:I

.field private old_Num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MSimKeyguardSimPinView"

    sput-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPinView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSimPinView--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/keyguard/MSimKeyguardSimPinView;Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCheckMSimPinThread:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/MSimKeyguardSimPinView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->closeKeyGuard(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimIconResId()I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    return v0
.end method

.method private closeKeyGuard(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    sget v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v7, v1, -0x1

    if-lt v6, v7, :cond_4

    :goto_1
    return-void

    :cond_4
    sget v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    :cond_5
    if-gt v3, v9, :cond_6

    sput v8, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    :cond_6
    if-nez p1, :cond_7

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    :cond_7
    iget v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    if-ltz v6, :cond_8

    iget v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_1
.end method

.method private getSimIconResId()I
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v1

    const-string v2, "ril.MSIMM"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    :goto_0
    return v2

    :cond_0
    if-nez v1, :cond_1

    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_1:I

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic_2:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/keyguard/R$drawable;->lock_security_sim_pin_ic:I

    goto :goto_0
.end method

.method private getSimPinRetry()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetryForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPinRetry() mSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # of remaining count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleTimeout(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->setKeepScreenOn(Z)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->msim_pinEntry:I

    return v0
.end method

.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->onFinishInflate()V

    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v2, "onFinishInflate "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPinView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->setKeepScreenOn(Z)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->reset()V

    return-void
.end method

.method public resetState()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimIconResId()I

    move-result v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x1040849

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimIconResId()I

    move-result v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    goto :goto_0
.end method

.method protected shouldLockout(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateRetryCount()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v1, "updateRetryCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock(): entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mSimCheckInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimIconResId()I

    move-result v3

    invoke-interface {v1, v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IIZ)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCheckMSimPinThread:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v2, "startCheckSimPin(), Multi SIM enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    iget-object v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPinView$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCheckMSimPinThread:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mCheckMSimPinThread:Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    invoke-virtual {v1}, Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->start()V

    goto :goto_0
.end method
