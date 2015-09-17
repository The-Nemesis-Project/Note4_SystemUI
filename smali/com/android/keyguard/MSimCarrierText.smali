.class public Lcom/android/keyguard/MSimCarrierText;
.super Lcom/android/keyguard/CarrierText;
.source "MSimCarrierText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"

.field private static mPlmn:[Ljava/lang/CharSequence;

.field private static mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mSpn:[Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/android/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimCarrierText$1;-><init>(Lcom/android/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 121
    invoke-direct {p0}, Lcom/android/keyguard/MSimCarrierText;->initialize()V

    .line 122
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040883

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->keyguard_carrier_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 110
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 111
    new-array v1, v0, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 112
    new-array v1, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v1, Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 113
    return-void
.end method


# virtual methods
.method public getNumberOfActiveSim()I
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onAttachedToWindow()V

    .line 210
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 215
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 221
    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "simState"    # [Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # [Ljava/lang/CharSequence;
    .param p3, "spn"    # [Ljava/lang/CharSequence;

    .prologue
    .line 128
    const-string v7, "MSimCarrierText"

    const-string v8, "3"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v6, ""

    .line 130
    .local v6, "text":Ljava/lang/CharSequence;
    const-string v7, "ril.MSIMM"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "mSimMode":Ljava/lang/String;
    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "mSimstate_1":Ljava/lang/String;
    const-string v7, "gsm.sim.state_1"

    const-string v8, "ABSENT"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "mSimstate_2":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    iget-object v7, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p1

    if-ge v1, v7, :cond_13

    .line 142
    aget-object v7, p1, v1

    aget-object v8, p2, v1

    aget-object v9, p3, v1

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 144
    .local v0, "displayText":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    iget-object v7, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 146
    const-string v0, ""

    .line 149
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKFeature()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 151
    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v6, v0

    .line 141
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 152
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 158
    :cond_6
    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 159
    const-string v7, "PIN_REQUIRED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "PUK_REQUIRED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_7
    const-string v7, "Combination"

    const-string v8, "Combination"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "IMC"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 162
    :cond_8
    const/4 v7, 0x1

    aget-object v7, p1, v7

    const/4 v8, 0x1

    aget-object v8, p2, v8

    const/4 v9, 0x1

    aget-object v9, p3, v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    :cond_9
    :goto_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_f

    .line 168
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getNumberOfActiveSim()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_c

    .line 169
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    move-object v6, v0

    :goto_5
    goto :goto_3

    .line 164
    :cond_a
    const/4 v7, 0x0

    aget-object v7, p1, v7

    const/4 v8, 0x0

    aget-object v8, p2, v8

    const/4 v9, 0x0

    aget-object v9, p3, v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 169
    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 172
    :cond_c
    const/4 v7, 0x2

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 173
    .local v5, "simActive":[I
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "phone1_on"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aput v8, v5, v7

    .line 174
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "phone2_on"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aput v8, v5, v7

    .line 175
    const/4 v7, 0x0

    aget v7, v5, v7

    if-nez v7, :cond_d

    .line 176
    move-object v6, v0

    goto/16 :goto_3

    .line 177
    :cond_d
    const/4 v7, 0x1

    aget v7, v5, v7

    if-nez v7, :cond_3

    .line 178
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v6, v0

    :cond_e
    goto/16 :goto_3

    .line 180
    .end local v5    # "simActive":[I
    :cond_f
    const-string v7, "ABSENT,READY"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 181
    move-object v6, v0

    goto/16 :goto_3

    .line 185
    :cond_10
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 186
    sget-object v7, Lcom/android/keyguard/MSimCarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 190
    :cond_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    move-object v6, v0

    :cond_12
    goto/16 :goto_3

    .line 193
    .end local v0    # "displayText":Ljava/lang/CharSequence;
    :cond_13
    const-string v7, "MSimCarrierText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCarrierText: text = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0, v6}, Lcom/android/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 172
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
