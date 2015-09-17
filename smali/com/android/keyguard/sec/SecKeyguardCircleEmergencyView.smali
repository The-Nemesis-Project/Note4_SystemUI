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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget v0, Lcom/android/keyguard/R$id;->circle_arrow_emergnecy:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mArrowResId:I

    sget v0, Lcom/android/keyguard/R$id;->emergency_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentResId:I

    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchEmergencyAUSDialer()V
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->callToEmergencyLine(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    goto :goto_1
.end method

.method private launchEmergencyDialler()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateCurrentView()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "updateCurrentView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_4

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

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v1, v5, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    if-ne v1, v5, :cond_2

    :cond_1
    const-string v1, "test"

    const-string v2, "view to gone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setArrowVisibility(I)V

    :cond_3
    return-void

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

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    if-ne v1, v5, :cond_2

    :cond_5
    const-string v1, "test"

    const-string v2, "view to gone"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateCurrentView()V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040382

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 3

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v2

    if-nez v2, :cond_1

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_phonecall:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    goto :goto_0
.end method

.method protected getShortcutTextResId()I
    .locals 2

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-eqz v1, :cond_0

    const v0, 0x1040382

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    goto :goto_0
.end method

.method protected getToastTextResId()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_emergencycall:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;

    aget-wide v4, v2, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;J)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;

    aget-wide v4, v2, v6

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;J)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony1:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mMultiSimTelephony2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState2:I

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_4
    const-string v3, "SecKeyguardCircleEmergencyView"

    const-string v4, "Slot 1 : subscription Id is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v3, "SecKeyguardCircleEmergencyView"

    const-string v4, "Slot 2 : subscription Id is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mServiceState:I

    goto :goto_2
.end method

.method public onUnlockExecuted()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takePhoneShortcut()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallList()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPasswordEntryView:Landroid/view/View;

    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "SecKeyguardCircleEmergencyView"

    const-string v1, "setShortCutImageResource() mEmergencyCallButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mIsCallStateOffHook:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040382

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_normal_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$7;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->ecall_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->VoIPIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyAUSDialer()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public takePhoneShortcut()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0

    :cond_1
    const-string v1, "SecKeyguardCircleEmergencyView"

    const-string v2, "mKeyguardSecurityCallback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
