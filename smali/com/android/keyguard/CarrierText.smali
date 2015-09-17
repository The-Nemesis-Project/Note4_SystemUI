.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarrierText"

.field private static mSeparator:Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 100
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 107
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 110
    return-void

    .line 107
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 354
    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 355
    .local v1, "spnValid":Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    .end local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    return-object p0

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_1
    move v0, v3

    .line 353
    goto :goto_0

    .restart local v0    # "plmnValid":Z
    :cond_2
    move v1, v3

    .line 354
    goto :goto_1

    .line 359
    .restart local v1    # "spnValid":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 361
    :cond_4
    if-nez v0, :cond_0

    .line 363
    if-eqz v1, :cond_5

    move-object p0, p1

    .line 364
    goto :goto_2

    .line 366
    :cond_5
    const-string p0, ""

    goto :goto_2
.end method

.method private getCarrierHelpTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "carrierHelpTextId":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 374
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 398
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 377
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$string;->keyguard_instructions_when_pattern_disabled:I

    .line 378
    goto :goto_0

    .line 381
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$string;->keyguard_missing_sim_instructions_long:I

    .line 382
    goto :goto_0

    .line 385
    :pswitch_2
    sget v0, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_instructions:I

    .line 386
    goto :goto_0

    .line 389
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$string;->keyguard_missing_sim_instructions:I

    .line 390
    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 349
    :goto_0
    return-object v1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 328
    .local v0, "missingAndNotProvisioned":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 329
    :cond_2
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 349
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 322
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 331
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 333
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 335
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 337
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 339
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 341
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 343
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 345
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 347
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 310
    .end local p2    # "emergencyCallMessage":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p2

    .line 306
    .restart local p2    # "emergencyCallMessage":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const v1, 0x104037c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move-object p2, p1

    .line 310
    goto :goto_0
.end method

.method private setCarrierText(Lcom/android/keyguard/CarrierText$StatusMode;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "status"    # Lcom/android/keyguard/CarrierText$StatusMode;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "carrierText":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_0
    return-object v0

    .line 220
    :pswitch_0
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    goto :goto_0

    .line 224
    :pswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 226
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_0
    const/4 v0, 0x0

    .line 231
    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_network_locked_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    goto :goto_0

    .line 239
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_perso_locked_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 241
    goto :goto_0

    .line 248
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    :cond_1
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    goto :goto_0

    .line 258
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 260
    goto :goto_0

    .line 263
    :pswitch_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 264
    :cond_3
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 270
    goto/16 :goto_0

    .line 273
    :pswitch_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    :cond_5
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 280
    goto/16 :goto_0

    .line 283
    :pswitch_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 284
    :cond_7
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 286
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    const-string v0, ""

    .line 178
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v3

    .line 180
    .local v3, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_5

    .line 181
    const-string v4, "CarrierText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarrierTextForSimState: status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    sget-object v4, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    if-ne v3, v4, :cond_2

    .line 187
    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    move-object v1, v0

    .line 212
    .end local v0    # "carrierText":Ljava/lang/CharSequence;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    .local v1, "carrierText":Ljava/lang/CharSequence;
    :goto_1
    return-object v1

    .line 189
    .end local v1    # "carrierText":Ljava/lang/CharSequence;
    .restart local v0    # "carrierText":Ljava/lang/CharSequence;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_2
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_3
    if-eqz v2, :cond_1

    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 193
    invoke-direct {p0, v3, p2, p3}, Lcom/android/keyguard/CarrierText;->setCarrierText(Lcom/android/keyguard/CarrierText$StatusMode;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_4
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 202
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKDIFeature()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 203
    const-string v4, "KDDI"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    const-string p2, "au"

    .line 206
    :cond_6
    const-string v4, "KDDI"

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 207
    const-string p3, "au"

    .line 211
    :cond_7
    invoke-direct {p0, v3, p2, p3}, Lcom/android/keyguard/CarrierText;->setCarrierText(Lcom/android/keyguard/CarrierText$StatusMode;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 212
    .end local v0    # "carrierText":Ljava/lang/CharSequence;
    .restart local v1    # "carrierText":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 144
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 160
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 136
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_carrier_text_separator:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .line 138
    .local v0, "screenOn":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 139
    return-void
.end method

.method protected updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCUModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
