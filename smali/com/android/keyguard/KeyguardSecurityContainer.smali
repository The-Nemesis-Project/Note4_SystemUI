.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$3;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_VZW:I = 0xa

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityView"

.field public static mIsAutoWipe:Z


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialogTheme:I

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsBouncing:Z

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

.field private mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 78
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 79
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .line 871
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 929
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 1093
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1094
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 109
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 110
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 112
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    .line 113
    new-instance v0, Lcom/android/keyguard/sec/SecMontblancLogoView;

    invoke-direct {v0, p1}, Lcom/android/keyguard/sec/SecMontblancLogoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecurityContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSecurityContainer;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(I)V

    return-void
.end method

.method private addMontblancLogoViewIfNecessary()V
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecMontblancLogoView:Lcom/android/keyguard/sec/SecMontblancLogoView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecMontblancLogoView;->isMontblancCoverAndWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v2, "KeyguardSecurityView"

    const-string v3, "addMontblancLogoViewIfNecessary"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 292
    .local v0, "inflator":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->sec_montblanc_logo_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "montblancLogoView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 1097
    const-string v3, "KeyguardSecurityView"

    const-string v4, "findSDCard ()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1101
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    .line 1102
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1103
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 1104
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1105
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1107
    const-string v3, "KeyguardSecurityView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findSDCard ( storageVolumes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    aget-object v3, v2, v0

    .line 1113
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v3

    .line 1104
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v3, "KeyguardSecurityView"

    const-string v4, "findSDCard ( null )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 3

    .prologue
    .line 848
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 849
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 850
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_0

    .line 851
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 854
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 848
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 994
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1033
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 995
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_unlock_view:I

    goto :goto_0

    .line 997
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view_onehand:I

    goto :goto_0

    .line 1000
    :cond_0
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pattern_view:I

    goto :goto_0

    .line 1001
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_pin_view:I

    goto :goto_0

    .line 1002
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_password_view:I

    goto :goto_0

    .line 1003
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_face_unlock_view:I

    goto :goto_0

    .line 1004
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_signature_view:I

    goto :goto_0

    .line 1006
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 1008
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_account_view:I

    goto :goto_0

    .line 1010
    :cond_1
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_account_view:I

    goto :goto_0

    .line 1013
    :pswitch_8
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_2

    .line 1014
    sget v0, Lcom/android/keyguard/R$layout;->msim_keyguard_sim_pin_view:I

    goto :goto_0

    .line 1016
    :cond_2
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_pin_view:I

    goto :goto_0

    .line 1018
    :pswitch_9
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_3

    .line 1019
    sget v0, Lcom/android/keyguard/R$layout;->msim_keyguard_sim_puk_view:I

    goto :goto_0

    .line 1021
    :cond_3
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 1022
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_sim_perso_view:I

    goto :goto_0

    .line 1023
    :pswitch_b
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_backup_pin_view:I

    goto :goto_0

    .line 1024
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_recovery_view:I

    goto :goto_0

    .line 1026
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_unlock_view:I

    goto :goto_0

    .line 1027
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_spass_password_view:I

    goto :goto_0

    .line 1028
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_fmm_unlock_view:I

    goto :goto_0

    .line 1029
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_smartcardpin_view:I

    goto :goto_0

    .line 1030
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlockplus_unlock_view:I

    goto :goto_0

    .line 1031
    :pswitch_12
    sget v0, Lcom/android/keyguard/R$layout;->keyguard_carrierlock_password_view:I

    goto :goto_0

    .line 994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private getSecurityModeInSignature()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1043
    const-string v0, "KeyguardSecurityView"

    const-string v1, "Signature lock mode, but failed to unlock within fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSignatureBackupSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1047
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 10
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 168
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 169
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 170
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 171
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 172
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 176
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 177
    .local v3, "layoutId":I
    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 178
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 179
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 181
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 182
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    invoke-direct {p0, v5, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    move-object v6, v5

    .line 183
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 186
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-object v6

    .line 170
    .end local v3    # "layoutId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 950
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 990
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 951
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view:I

    goto :goto_0

    .line 953
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view_onehand:I

    goto :goto_0

    .line 956
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view:I

    goto :goto_0

    .line 957
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    goto :goto_0

    .line 958
    :pswitch_4
    sget v0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    goto :goto_0

    .line 959
    :pswitch_5
    sget v0, Lcom/android/keyguard/R$id;->keyguard_face_unlock_view:I

    goto :goto_0

    .line 960
    :pswitch_6
    sget v0, Lcom/android/keyguard/R$id;->keyguard_signature_view:I

    goto :goto_0

    .line 962
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 964
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_account_view:I

    goto :goto_0

    .line 966
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_account_view:I

    goto :goto_0

    .line 969
    :pswitch_8
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_2

    .line 970
    sget v0, Lcom/android/keyguard/R$id;->msim_keyguard_sim_pin_view:I

    goto :goto_0

    .line 972
    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    goto :goto_0

    .line 974
    :pswitch_9
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_3

    .line 975
    sget v0, Lcom/android/keyguard/R$id;->msim_keyguard_sim_puk_view:I

    goto :goto_0

    .line 977
    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 979
    :pswitch_a
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim_perso_view:I

    goto :goto_0

    .line 980
    :pswitch_b
    sget v0, Lcom/android/keyguard/R$id;->keyguard_backup_pin_view:I

    goto :goto_0

    .line 981
    :pswitch_c
    sget v0, Lcom/android/keyguard/R$id;->keyguard_recovery_view:I

    goto :goto_0

    .line 983
    :pswitch_d
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_unlock_view:I

    goto :goto_0

    .line 984
    :pswitch_e
    sget v0, Lcom/android/keyguard/R$id;->keyguard_spass_password_view:I

    goto :goto_0

    .line 985
    :pswitch_f
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fmm_unlock_view:I

    goto :goto_0

    .line 986
    :pswitch_10
    sget v0, Lcom/android/keyguard/R$id;->keyguard_smartcardpin_view:I

    goto :goto_0

    .line 987
    :pswitch_11
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlockplus_unlock_view:I

    goto :goto_0

    .line 988
    :pswitch_12
    sget v0, Lcom/android/keyguard/R$id;->keyguard_carrierlock_password_view:I

    goto :goto_0

    .line 950
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_e
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private performWipeout(I)V
    .locals 12
    .param p1, "attemptsCount"    # I

    .prologue
    .line 1132
    const-string v9, "KeyguardSecurityView"

    const-string v10, "performWipeout (  )"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v8, 0x0

    .line 1134
    .local v8, "wipeExcludeExternalStorage":Z
    const-string v6, "com.android.email"

    .line 1135
    .local v6, "pkg":Ljava/lang/String;
    const-string v0, "com.android.email.SecurityPolicy$PolicyAdmin"

    .line 1136
    .local v0, "cls":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    .local v4, "mAdminName":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 1138
    .local v5, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v1

    .line 1139
    .local v1, "easCount":I
    if-eqz v1, :cond_0

    if-le v1, p1, :cond_1

    .line 1140
    :cond_0
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1142
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v8

    .line 1145
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 1146
    .local v7, "sdcard":Landroid/os/storage/StorageVolume;
    sget v9, Lcom/android/keyguard/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateProgressDialog(I)V

    .line 1147
    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 1148
    const-string v9, "KeyguardSecurityView"

    const-string v10, "performWipeout ( ExternalStorageFormatter.FORMAT_AND_FACTORY_RESET )"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "storage_volume"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1151
    const-string v9, "always_reset"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    sget-object v9, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1153
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1162
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1156
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1157
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1159
    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private removeSubUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1166
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "KeyguardSecurityView"

    const-string v2, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportFailedUnlockAttempt()V
    .locals 18

    .prologue
    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    .line 489
    .local v9, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    const/4 v4, 0x0

    .line 491
    .local v4, "failedAttempts":I
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedPatternAttempt: #"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v8

    .line 494
    .local v8, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v15, :cond_9

    const/4 v13, 0x1

    .line 495
    .local v13, "usingPattern":Z
    :goto_0
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v15, :cond_a

    const/4 v14, 0x1

    .line 496
    .local v14, "usingSPass":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v16, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    const/4 v7, 0x1

    .line 497
    .local v7, "isSelectedSPass":Z
    :goto_2
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v16, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    :cond_0
    const/4 v2, 0x1

    .line 499
    .local v2, "exceptAutowipe":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    .line 501
    .local v5, "failedAttemptsBeforeWipe":I
    if-lez v5, :cond_d

    const/4 v6, 0x1

    .line 503
    .local v6, "isITPolicyEnabled":Z
    :goto_4
    if-eqz v6, :cond_f

    .line 504
    if-eqz v7, :cond_e

    .line 507
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 508
    const/4 v5, 0x0

    .line 522
    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    .line 523
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_1

    if-nez v2, :cond_1

    if-gtz v5, :cond_1

    .line 524
    const/16 v5, 0xa

    .line 527
    :cond_1
    const/16 v3, 0xf

    .line 530
    .local v3, "failedAttemptWarning":I
    if-lez v5, :cond_12

    sub-int v10, v5, v4

    .line 535
    .local v10, "remainingBeforeWipe":I
    :goto_6
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedUnlockAttempt( mIsAutoWipe = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , IT Policy = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " )"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedUnlockAttempt( failedAttempts: # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , failedAttemptsBeforeWipe: #"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", remainingBeforeWipe = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " )"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v12, 0x0

    .line 543
    .local v12, "showTimeout":Z
    sget-boolean v11, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 544
    .local v11, "showAutowipeDialog":Z
    const/4 v15, 0x5

    if-lt v10, v15, :cond_2

    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_19

    if-nez v2, :cond_19

    .line 553
    :cond_2
    if-lez v10, :cond_15

    .line 554
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_14

    .line 555
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_13

    const/4 v12, 0x1

    .line 557
    :goto_7
    const-string v15, "KeyguardSecurityView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportFailedUnlockAttempt(showTimeout= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_3
    :goto_8
    if-eqz v6, :cond_4

    if-nez v7, :cond_5

    :cond_4
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_25

    if-eqz v2, :cond_25

    .line 662
    :cond_5
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    .line 663
    const/16 v15, 0x14

    if-lt v4, v15, :cond_6

    .line 664
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 671
    :cond_6
    :goto_9
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_7

    if-eqz v11, :cond_7

    .line 672
    if-nez v7, :cond_26

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v2, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningAtAutoWipeDialog(IIZZ)V

    .line 674
    :cond_7
    if-eqz v12, :cond_8

    .line 675
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog()V

    .line 677
    :cond_8
    return-void

    .line 494
    .end local v2    # "exceptAutowipe":Z
    .end local v3    # "failedAttemptWarning":I
    .end local v5    # "failedAttemptsBeforeWipe":I
    .end local v6    # "isITPolicyEnabled":Z
    .end local v7    # "isSelectedSPass":Z
    .end local v10    # "remainingBeforeWipe":I
    .end local v11    # "showAutowipeDialog":Z
    .end local v12    # "showTimeout":Z
    .end local v13    # "usingPattern":Z
    .end local v14    # "usingSPass":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 495
    .restart local v13    # "usingPattern":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 496
    .restart local v14    # "usingSPass":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 497
    .restart local v7    # "isSelectedSPass":Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 501
    .restart local v2    # "exceptAutowipe":Z
    .restart local v5    # "failedAttemptsBeforeWipe":I
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 510
    .restart local v6    # "isITPolicyEnabled":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_5

    .line 512
    :cond_f
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_11

    .line 513
    if-eqz v2, :cond_10

    .line 514
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    .line 515
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 517
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_5

    .line 520
    :cond_11
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v15

    add-int/lit8 v4, v15, 0x1

    goto/16 :goto_5

    .line 530
    .restart local v3    # "failedAttemptWarning":I
    :cond_12
    const v10, 0x7fffffff

    goto/16 :goto_6

    .line 555
    .restart local v10    # "remainingBeforeWipe":I
    .restart local v11    # "showAutowipeDialog":Z
    .restart local v12    # "showTimeout":Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 559
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(II)V

    goto :goto_8

    .line 562
    :cond_15
    const/4 v11, 0x0

    .line 563
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordRecoverable()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 564
    const-string v15, "KeyguardSecurityView"

    const-string v16, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->recoverPassword()V

    .line 566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(Z)V

    .line 567
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_8

    .line 571
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 573
    .local v1, "currentUserId":I
    if-nez v1, :cond_18

    .line 575
    const-string v15, "KeyguardSecurityView"

    const-string v16, "Too many unlock attempts; device will be wiped!"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_17

    .line 577
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->performWipeout(I)V

    goto/16 :goto_8

    .line 579
    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(I)V

    goto/16 :goto_8

    .line 582
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->removeSubUser(I)V

    goto/16 :goto_8

    .line 587
    .end local v1    # "currentUserId":I
    :cond_19
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_1b

    const/4 v12, 0x1

    .line 589
    :goto_b
    if-eqz v13, :cond_1a

    .line 590
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_1c

    .line 591
    if-eqz v4, :cond_1a

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 593
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 594
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 595
    const/4 v12, 0x0

    .line 625
    :cond_1a
    :goto_c
    if-eqz v14, :cond_3

    .line 626
    sget-boolean v15, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v15, :cond_21

    .line 627
    if-eqz v4, :cond_3

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 631
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 632
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 587
    :cond_1b
    const/4 v12, 0x0

    goto :goto_b

    .line 598
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mEnableFallback:Z

    if-eqz v15, :cond_1d

    .line 599
    const/16 v15, 0xf

    if-ne v4, v15, :cond_1f

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAccountLoginDialog()V

    .line 601
    const/4 v12, 0x0

    .line 609
    :cond_1d
    :goto_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 610
    if-eqz v4, :cond_1e

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_1e

    .line 612
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    .line 614
    :cond_1e
    const/16 v15, 0xf

    if-ne v4, v15, :cond_20

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtBackupPininDialog()V

    .line 616
    const/4 v12, 0x0

    goto :goto_c

    .line 602
    :cond_1f
    const/16 v15, 0x14

    if-lt v4, v15, :cond_1d

    .line 603
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 604
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 606
    const/4 v12, 0x0

    goto :goto_d

    .line 617
    :cond_20
    const/16 v15, 0x14

    if-lt v4, v15, :cond_1a

    .line 618
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 620
    const/4 v12, 0x0

    goto :goto_c

    .line 634
    :cond_21
    if-eqz v6, :cond_22

    .line 635
    const/4 v15, 0x5

    if-ne v4, v15, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 637
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 638
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 640
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 643
    :cond_22
    if-eqz v4, :cond_23

    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_23

    .line 645
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    .line 647
    :cond_23
    const/16 v15, 0xf

    if-ne v4, v15, :cond_24

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtAlternativePasswordinDialog()V

    .line 649
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 650
    :cond_24
    const/16 v15, 0x14

    if-lt v4, v15, :cond_3

    .line 651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 653
    sget-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 655
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 667
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 668
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    goto/16 :goto_9

    .line 672
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_a
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 469
    const/16 v2, 0x1e

    .line 470
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 472
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_login:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private showAlmostAtAlternativePasswordinDialog()V
    .locals 9

    .prologue
    .line 478
    const/16 v2, 0x1e

    .line 479
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 481
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_spass:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private showAlmostAtBackupPininDialog()V
    .locals 9

    .prologue
    .line 459
    const/16 v2, 0x1e

    .line 460
    .local v2, "timeoutInSeconds":I
    const/16 v0, 0xf

    .line 462
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->fail_attempt_unlock_popup_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_pattern:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "message":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "message":Ljava/lang/String;
    if-ne p1, v5, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_1_failed_attempt_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_wipe:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 704
    const-string v1, "KeyguardSecurityView"

    const-string v2, "showBackupSecurity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 707
    .local v0, "backup":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_1

    .line 708
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 715
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 716
    return-void

    .line 709
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_2

    .line 710
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    .line 711
    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_0

    .line 712
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 308
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 311
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 312
    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 8
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 795
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showSecurityScreen("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v5, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v3

    .line 806
    .local v3, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    .line 807
    .local v2, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 809
    if-eqz v3, :cond_2

    .line 810
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 811
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 813
    :cond_2
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_3

    .line 814
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 815
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v5}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 819
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 821
    .local v0, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 822
    .local v4, "securityViewIdForMode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 823
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 824
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 829
    :cond_4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 830
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v5, :cond_7

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v6, p1, v5}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 832
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showSecurityScreen( needTodisableClock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsShowClockandNotifications()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsShowClockandNotifications()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onKeyguardClockandNotificationsChanged(Z)V

    .line 834
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-eqz v5, :cond_0

    .line 835
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    instance-of v5, v5, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v5, :cond_5

    .line 836
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v5, Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    .line 840
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    instance-of v5, v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    if-eqz v5, :cond_0

    .line 841
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v5, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setAttributionInfoView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 822
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 830
    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private showTimeoutDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 315
    const/16 v4, 0x1e

    .line 316
    .local v4, "timeoutInSeconds":I
    const/4 v1, 0x0

    .line 317
    .local v1, "messageId":I
    const/4 v5, 0x0

    .line 319
    .local v5, "useAutowipeMessage":Z
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 321
    .local v3, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 379
    :goto_0
    if-eqz v1, :cond_0

    .line 381
    if-eqz v5, :cond_5

    .line 382
    iget v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    rsub-int/lit8 v2, v6, 0xa

    .line 383
    .local v2, "remaining":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .end local v2    # "remaining":I
    .local v0, "message":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void

    .line 323
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 324
    goto :goto_0

    .line 326
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    .line 327
    goto :goto_0

    .line 329
    :pswitch_2
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_1

    .line 330
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message_with_auto_wipe:I

    .line 331
    const/4 v5, 0x1

    goto :goto_0

    .line 333
    :cond_1
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    .line 335
    goto :goto_0

    .line 337
    :pswitch_3
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_2

    .line 338
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_pin_attempts_dialog_message_with_auto_wipe:I

    .line 339
    const/4 v5, 0x1

    goto :goto_0

    .line 341
    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pattern_attempts_dialog_message:I

    .line 343
    goto :goto_0

    .line 345
    :pswitch_4
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_3

    .line 346
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_backup_password_attempts_dialog_message_with_auto_wipe:I

    .line 347
    const/4 v5, 0x1

    goto :goto_0

    .line 349
    :cond_3
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_spass_attempts_dialog_message:I

    .line 351
    goto :goto_0

    .line 353
    :pswitch_5
    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    .line 354
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message_with_auto_wipe:I

    .line 355
    const/4 v5, 0x1

    goto :goto_0

    .line 357
    :cond_4
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_password_attempts_dialog_message:I

    .line 359
    goto :goto_0

    .line 363
    :pswitch_6
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_pin_attempts_dialog_message:I

    .line 364
    goto :goto_0

    .line 367
    :pswitch_7
    sget v1, Lcom/android/keyguard/R$string;->kg_too_many_failed_signature_attempts_dialog_message:I

    .line 368
    goto :goto_0

    .line 388
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_1

    .line 321
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
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private showWarningAtAutoWipeDialog(IIZZ)V
    .locals 6
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "needbackup"    # Z
    .param p4, "usebackuppin"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "message":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 431
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 432
    if-eqz p4, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_pin_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 455
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_1
    return-void

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_password_with_auto_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_3
    if-ne p2, v3, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_4

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remained_1_attempts_with_auto_wipe_subuser:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 1
    .param p1, "attempts"    # I

    .prologue
    .line 409
    move v0, p1

    .line 425
    .local v0, "attemptsCount":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->performWipeout(I)V

    .line 426
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isBouncing"    # Z

    .prologue
    const/4 v3, 0x0

    .line 190
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsBouncing:Z

    .line 191
    instance-of v2, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 192
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 193
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 194
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 195
    if-eqz p2, :cond_1

    .line 196
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 200
    :goto_0
    sget v2, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    .line 201
    .local v1, "secview":Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
    if-eqz v1, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 207
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    .end local v1    # "secview":Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
    :cond_0
    :goto_1
    return-void

    .line 198
    .restart local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_0

    .line 205
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_2
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a KeyguardSecurityView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addAttributionInfoViewIfNecessary()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isRichLockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_0
    const-string v1, "KeyguardSecurityView"

    const-string v2, "addAttributionInfoViewIfNecessary"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 279
    new-instance v1, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v1, p0, v2}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public announceCurrentSecurityMethod()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 161
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1061
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1177
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x7f

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x7e

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x57

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x58

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x59

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "callDismiss":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1190
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v6, "KeyguardSecurityView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent : getDevice is null!! or isExternal ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InputDevice;->isExternal()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1192
    const-string v6, "KeyguardSecurityView"

    const-string v7, "dispatchKeyEvent : blueTooth"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v0, 0x1

    .line 1197
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sidesync_source_connect"

    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 1198
    .local v3, "isSideSync":Z
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "KMS_SERVICE_CONNECTED"

    invoke-static {v6, v7, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_5

    move v2, v5

    .line 1199
    .local v2, "isKms":Z
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 1200
    :cond_1
    const-string v5, "KeyguardSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchKeyEvent : isSideSync ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isKms = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v0, 0x1

    .line 1204
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_3

    .line 1205
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 1209
    .end local v0    # "callDismiss":Z
    .end local v2    # "isKms":Z
    .end local v3    # "isSideSync":Z
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .restart local v0    # "callDismiss":Z
    :cond_4
    move v3, v5

    .line 1197
    goto :goto_0

    .restart local v3    # "isSideSync":Z
    :cond_5
    move v2, v4

    .line 1198
    goto :goto_1
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 866
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 869
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsShowClockandNotifications()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 210
    sget v7, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 211
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 214
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    .line 215
    .local v6, "userId":I
    const/4 v2, 0x0

    .line 216
    .local v2, "isEASAppliedOnCurrentLockscreen":Z
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 218
    .local v1, "failedAttemptsBeforeWipe":I
    if-lez v1, :cond_5

    move v3, v8

    .line 220
    .local v3, "isITPolicyEnabled":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAutoWipeFeature()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    .line 223
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "auto_swipe_main_user"

    invoke-static {v7, v10, v9, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v8, :cond_6

    :goto_1
    sput-boolean v8, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    .line 228
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    .line 229
    .local v5, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    if-eqz v3, :cond_8

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_8

    .line 235
    :cond_0
    const/4 v2, 0x1

    .line 239
    :goto_3
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AUTO_WIPE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , IT Policy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "failedAttempts":I
    if-nez v2, :cond_1

    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_a

    .line 243
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v0

    .line 245
    const-string v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportFailedPatternAttempt: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-boolean v7, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v7, :cond_2

    if-gtz v1, :cond_2

    .line 248
    const/16 v1, 0xa

    .line 251
    :cond_2
    if-lez v1, :cond_9

    sub-int v4, v1, v0

    .line 255
    .local v4, "remainingBeforeWipe":I
    :goto_4
    if-gtz v4, :cond_3

    .line 257
    const-string v7, "KeyguardSecurityView"

    const-string v8, "Too many unlock attempts; device will be wiped!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(I)V

    .line 263
    .end local v4    # "remainingBeforeWipe":I
    :cond_3
    :goto_5
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFailedAttempts:I

    .line 264
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addAttributionInfoViewIfNecessary()V

    .line 266
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v7, v8, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->addMontblancLogoViewIfNecessary()V

    .line 268
    :cond_4
    return-void

    .end local v0    # "failedAttempts":I
    .end local v3    # "isITPolicyEnabled":Z
    .end local v5    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    move v3, v9

    .line 218
    goto/16 :goto_0

    .restart local v3    # "isITPolicyEnabled":Z
    :cond_6
    move v8, v9

    .line 223
    goto/16 :goto_1

    .line 226
    :cond_7
    sput-boolean v9, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    goto/16 :goto_2

    .line 237
    .restart local v5    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 251
    .restart local v0    # "failedAttempts":I
    :cond_9
    const v4, 0x7fffffff

    goto :goto_4

    .line 261
    :cond_a
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    goto :goto_5
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 134
    return-void
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 126
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    .line 1080
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1075
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 300
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 118
    return-void
.end method

.method public showBouncer(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 859
    .local v0, "flipper":Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 862
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 6
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v5, 0x0

    .line 725
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextSecurityScreenOrFinish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, "finish":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 729
    .local v1, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v1, :cond_0

    .line 730
    const/4 v0, 0x1

    .line 782
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 783
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish()V

    .line 785
    :cond_1
    return v0

    .line 732
    :cond_2
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_4

    .line 733
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 735
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 736
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v1, :cond_3

    .line 737
    const/4 v0, 0x1

    goto :goto_0

    .line 739
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 741
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_4
    if-eqz p1, :cond_7

    .line 742
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 775
    :pswitch_0
    const-string v2, "KeyguardSecurityView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad security screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fail safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 757
    :pswitch_1
    const/4 v0, 0x1

    .line 758
    goto :goto_0

    .line 764
    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 765
    .restart local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 768
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 770
    :cond_6
    const/4 v0, 0x1

    .line 772
    goto :goto_0

    .line 780
    .end local v1    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 686
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    const-string v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityModeInSignature()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 695
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 696
    return-void

    .line 689
    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showUsabilityHint()V

    .line 1090
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 141
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public updateProgressDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 1117
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-nez v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1120
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1128
    :cond_1
    return-void
.end method

.method updateSecurityViews(Z)V
    .locals 3
    .param p1, "isBouncing"    # Z

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    .line 154
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;Z)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    .line 1052
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1053
    return-void
.end method
