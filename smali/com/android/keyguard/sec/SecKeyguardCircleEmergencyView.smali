.class public Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
.super Lcom/android/keyguard/sec/SecKeyguardCircleView;
.source "SecKeyguardCircleEmergencyView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.android.phone.EmergencyDialer.LIST"

.field private static final SIM_SLOT1:I = 0x0

.field private static final SIM_SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleEmergencyView"


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCallStateOffHook:Z

.field private mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

.field private mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

.field private mPasswordEntryView:Landroid/view/View;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mServiceState2:I

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    .line 53
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 54
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 55
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 57
    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    .line 58
    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    .line 68
    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    .line 70
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 103
    sget v0, Lcom/android/keyguard/R$id;->circle_arrow_emergnecy:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mArrowResId:I

    .line 104
    sget v0, Lcom/android/keyguard/R$id;->emergency_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentResId:I

    .line 105
    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    .param p1, "x1"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "emergencyNumber"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 515
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 517
    return-void
.end method

.method private launchEmergencyAUSDialer()V
    .locals 3

    .prologue
    .line 485
    const-string v0, ""

    .line 487
    .local v0, "emergencyNumber":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 497
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 498
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->callToEmergencyLine(Ljava/lang/String;)V

    .line 502
    :goto_1
    return-void

    .line 489
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 490
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "ex":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0

    .line 500
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    goto :goto_1
.end method

.method private launchEmergencyDialler()V
    .locals 2

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 508
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method private updateCurrentView()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 533
    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "updateCurrentView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 535
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "visibility":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 538
    const-string v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v1, v5, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-ne v1, v5, :cond_2

    .line 544
    :cond_1
    const-string v1, "test"

    const-string v2, "view to gone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v0, 0x8

    .line 556
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setArrowVisibility(I)V

    .line 560
    .end local v0    # "visibility":I
    :cond_3
    return-void

    .line 549
    .restart local v0    # "visibility":I
    :cond_4
    const-string v1, "SecKeyguardCircleEmergencyView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC :: serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v1, v5, :cond_2

    .line 552
    :cond_5
    const-string v1, "test"

    const-string v2, "view to gone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "phoneState"    # I

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateCurrentView()V

    .line 377
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040382

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 3

    .prologue
    .line 127
    const/4 v0, -0x1

    .line 128
    .local v0, "resId":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 129
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_phonecall:I

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    goto :goto_0
.end method

.method protected getShortcutTextResId()I
    .locals 2

    .prologue
    .line 115
    const/4 v0, -0x1

    .line 116
    .local v0, "resId":I
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v1, :cond_0

    .line 117
    const v0, 0x1040382

    .line 123
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    goto :goto_0
.end method

.method protected getToastTextResId()I
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_0

    .line 109
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onAttachedToWindow()V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 143
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 167
    :cond_3
    :goto_0
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onDetachedFromWindow()V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 174
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 193
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    .line 195
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 197
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 198
    .local v2, "subId":[J
    if-eqz v2, :cond_4

    .line 199
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;

    aget-wide v4, v2, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;J)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 216
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 217
    if-eqz v2, :cond_5

    .line 218
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;

    aget-wide v4, v2, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;J)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 251
    .end local v2    # "subId":[J
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 252
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    .line 261
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    .line 275
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 276
    .local v0, "phoneState":I
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 277
    .local v1, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 279
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    return-void

    .line 214
    .end local v0    # "phoneState":I
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v2    # "subId":[J
    :cond_4
    const-string v3, "SecKeyguardCircleEmergencyView"

    const-string v4, "Slot 1 : subscription Id is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_5
    const-string v3, "SecKeyguardCircleEmergencyView"

    const-string v4, "Slot 2 : subscription Id is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    .end local v2    # "subId":[J
    :cond_6
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_1

    .line 266
    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_8

    .line 267
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 269
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    goto :goto_2
.end method

.method public onUnlockExecuted()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    .line 323
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 324
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takePhoneShortcut()V

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallList()V

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0
    .param p1, "passwordEntryView"    # Landroid/view/View;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    .line 565
    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 3
    .param p1, "state"    # Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 337
    const-string v0, "SecKeyguardCircleEmergencyView"

    const-string v1, "setShortCutImageResource() mEmergencyCallButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040382

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 348
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 358
    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 369
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 363
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 366
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 358
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 457
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 459
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->VoIPIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 474
    .local v0, "bypassHandler":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 476
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyAUSDialer()V

    goto :goto_0

    .line 479
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 5

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 435
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public takePhoneShortcut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 400
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 401
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 431
    :goto_0
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x1

    .line 406
    .local v0, "bypassHandler":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0

    .line 428
    :cond_1
    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "mKeyguardSecurityCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
