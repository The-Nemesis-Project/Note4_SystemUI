.class public Lcom/android/keyguard/sec/KeyguardProperties;
.super Ljava/lang/Object;
.source "KeyguardProperties.java"


# static fields
.field private static final ACG:Z

.field private static final AIO:Z

.field private static final ATT:Z

.field private static final AUSTRALIAN:Z

.field private static final BMC:Z

.field private static final BST:Z

.field private static final BST_SALES:Z

.field private static final CHN:Z

.field private static final CHN_OPEN:Z

.field private static final CMCC:Z

.field private static final CRI:Z

.field private static final CSP:Z

.field private static final CTC:Z

.field private static final CU:Z

.field private static final DBT:Z

.field private static final DCM:Z

.field private static final EUR_OPEN:Z

.field private static final GERMAN:Z

.field private static final HK:Z

.field private static final HUT:Z

.field private static final H_PROJECT:Z

.field private static final J_PROJECT:Z

.field private static final KDI:Z

.field private static final KOR:Z

.field private static final KTT:Z

.field private static final K_PROJECT_MR:Z

.field private static final LENTIS_PROJECT_MR:Z

.field private static final LGT:Z

.field private static final LRA:Z

.field private static final MTR:Z

.field private static final OPP:Z

.field private static final OPS:Z

.field private static final RICH_LOCK_PKG_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator"

.field private static final SBM:Z

.field private static final SCAFE_NAME_AMERICANO:Ljava/lang/String; = "americano"

.field private static final SCAFE_NAME_CAPUCCINO:Ljava/lang/String; = "capuccino"

.field private static final SCAFE_NAME_DUTCH:Ljava/lang/String; = "dutch"

.field private static final SCAFE_NAME_LATTE:Ljava/lang/String; = "latte"

.field private static final SCAFE_NAME_MOCHA:Ljava/lang/String; = "mocha"

.field private static final SCAFE_SHOT_DOUBLE:Ljava/lang/String; = "double"

.field private static final SCAFE_SHOT_HALF:Ljava/lang/String; = "half"

.field private static final SCAFE_SHOT_SINGLE:Ljava/lang/String; = "single"

.field private static final SCAFE_SHOT_TRIPLE:Ljava/lang/String; = "triple"

.field private static final SCAFE_SIZE_GRANDE:Ljava/lang/String; = "grande"

.field private static final SCAFE_SIZE_SHORT:Ljava/lang/String; = "short"

.field private static final SCAFE_SIZE_TALL:Ljava/lang/String; = "tall"

.field private static final SCAFE_SIZE_VENTI:Ljava/lang/String; = "venti"

.field private static final SCAFE_SYRUP_MAPLE:Ljava/lang/String; = "maple"

.field private static final SCAFE_SYRUP_SUGAR:Ljava/lang/String; = "sugar"

.field private static final SKT:Z

.field private static final SPI:Z

.field private static final SPR:Z

.field private static final SPR_SALES:Z

.field private static final TAG:Ljava/lang/String; = "KeyguardProperties"

.field private static final TB_PROJECT_MR:Z

.field private static final TEL:Z

.field private static final TFN:Z

.field private static final TLP:Z

.field private static final TMO:Z

.field private static final T_PROJECT:Z

.field private static final USA:Z

.field private static final USA_WIFI:Z

.field private static final USCC:Z

.field private static final VAU:Z

.field private static final VMU:Z

.field private static final VZW:Z

.field private static final XAR:Z

.field private static final XAS:Z

.field private static final XSA:Z

.field private static final ZERO_PROJECT:Z

.field private static final ZIG:Z

.field private static final mBuildCharacteristics:Ljava/lang/String;

.field private static final mCountryCode:Ljava/lang/String;

.field private static mIsGgsmTabletEnabledSpass:Z

.field private static mIsRichLockEnabled:Z

.field private static mIsRichLockEnabledChecked:Z

.field private static mOneHandSettingUnified:I

.field private static final mProductName:Ljava/lang/String;

.field private static final mRoamingTextNotAllowedOnDualClock:Z

.field private static mSCafeCream:Ljava/lang/String;

.field private static mSCafeExtra:Ljava/lang/String;

.field private static mSCafeName:Ljava/lang/String;

.field private static mSCafeShot:Ljava/lang/String;

.field private static mSCafeSize:Ljava/lang/String;

.field private static mSCafeSyrup:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    .line 24
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    .line 25
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    .line 26
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "spi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPI:Z

    .line 32
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "xar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAR:Z

    .line 33
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "mtr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MTR:Z

    .line 34
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "vmu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    .line 35
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    .line 36
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    .line 37
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "aio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    .line 38
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zig"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZIG:Z

    .line 39
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    .line 40
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "MetroPCS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    .line 41
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USCC:Z

    .line 42
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "bst"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    .line 43
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tfn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    .line 44
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "xas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    .line 45
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "cri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CRI:Z

    .line 46
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "csp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CSP:Z

    .line 47
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "skt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    .line 48
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ktt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    .line 49
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "lgt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    .line 50
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    .line 51
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    .line 52
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ctc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    .line 53
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    .line 54
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN_OPEN:Z

    .line 55
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "xx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->EUR_OPEN:Z

    .line 56
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "wifiue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA_WIFI:Z

    .line 57
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "lra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LRA:Z

    .line 58
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "acg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ACG:Z

    .line 59
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "bmc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BMC:Z

    .line 60
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USCC:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CRI:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA_WIFI:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZIG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MTR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LRA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ACG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CSP:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BMC:Z

    if-eqz v0, :cond_f

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    .line 62
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    if-eqz v0, :cond_10

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR:Z

    .line 63
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN_OPEN:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    if-eqz v0, :cond_11

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN:Z

    .line 64
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    .line 66
    const-string v0, "DBT"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DBT:Z

    .line 67
    const-string v0, "Germany"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DBT:Z

    if-eqz v0, :cond_12

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->GERMAN:Z

    .line 69
    const-string v0, "TEL"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    .line 70
    const-string v0, "VAU"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VAU:Z

    .line 71
    const-string v0, "HUT"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HUT:Z

    .line 72
    const-string v0, "BST"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST_SALES:Z

    .line 73
    const-string v0, "OPS"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPS:Z

    .line 74
    const-string v0, "OPP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPP:Z

    .line 75
    const-string v0, "TLP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TLP:Z

    .line 76
    const-string v0, "XSA"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XSA:Z

    .line 77
    const-string v0, "Australia"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VAU:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HUT:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST_SALES:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPS:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPP:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TLP:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XSA:Z

    if-eqz v0, :cond_13

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    .line 79
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    if-eqz v0, :cond_14

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR_SALES:Z

    .line 81
    const-string v0, "DCM"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    .line 82
    const-string v0, "KDI"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    .line 83
    const-string v0, "SBM"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SBM:Z

    .line 104
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    .line 105
    const-string v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    .line 106
    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    .line 107
    const-string v0, "ro.build.scafe.syrup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    .line 108
    const-string v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    .line 109
    const-string v0, "ro.build.scafe.extra"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "klte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "k3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "kmini"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_8
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->K_PROJECT_MR:Z

    .line 117
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "lentislte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LENTIS_PROJECT_MR:Z

    .line 119
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ja3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jsglte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jalte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jflte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "jftdd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_9
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    .line 124
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "h3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "ha3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "hlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_a
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    .line 127
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tblte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tbelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trhlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trhplte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tbhplte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "trelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tre3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-01G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SCL24"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "muscat3calte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tre3ca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_b
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    .line 135
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    .line 137
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "tb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SC-01G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "SCL24"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_c
    :goto_c
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->TB_PROJECT_MR:Z

    .line 143
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    .line 325
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    .line 326
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabledChecked:Z

    .line 349
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/sec/KeyguardProperties;->mOneHandSettingUnified:I

    return-void

    :cond_d
    move v0, v1

    .line 36
    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 40
    goto/16 :goto_1

    :cond_f
    move v0, v1

    .line 60
    goto/16 :goto_2

    :cond_10
    move v0, v1

    .line 62
    goto/16 :goto_3

    :cond_11
    move v0, v1

    .line 63
    goto/16 :goto_4

    :cond_12
    move v0, v1

    .line 67
    goto/16 :goto_5

    :cond_13
    move v0, v1

    .line 77
    goto/16 :goto_6

    :cond_14
    move v0, v1

    .line 79
    goto/16 :goto_7

    :cond_15
    move v0, v1

    .line 114
    goto/16 :goto_8

    :cond_16
    move v0, v1

    .line 119
    goto/16 :goto_9

    :cond_17
    move v0, v1

    .line 124
    goto/16 :goto_a

    :cond_18
    move v0, v1

    .line 127
    goto :goto_b

    :cond_19
    move v2, v1

    .line 137
    goto :goto_c
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCocktailBar(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TB_PROJECT_MR:Z

    return v0
.end method

.method public static isATTFeature()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    return v0
.end method

.method public static isAmericanoLook()Z
    .locals 3

    .prologue
    .line 169
    const-string v1, "americano"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    .local v0, "isAmericanoLook":Z
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAutoWipeFeature()Z
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    return v0
.end method

.method public static isCMCCModel()Z
    .locals 1

    .prologue
    .line 195
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    return v0
.end method

.method public static isCTCModel()Z
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    return v0
.end method

.method public static isCUModel()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    return v0
.end method

.method public static isChinaFeature()Z
    .locals 1

    .prologue
    .line 183
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN:Z

    return v0
.end method

.method public static isDirectCallToEcc()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    return v0
.end method

.method public static isDirectLaunchCamera()Z
    .locals 1

    .prologue
    .line 396
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    const-string v1, "LGT"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 413
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v1, "KeyguardProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayDualImsi isNetworkRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const/4 v1, 0x1

    .line 419
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHKFeature()Z
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    return v0
.end method

.method public static isIgnoreNationalRoaming()Z
    .locals 2

    .prologue
    .line 296
    const-string v0, "XEO"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRT"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VAU"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "KeyguardProperties"

    const-string v1, "isIgnoreNationalRoaming() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    .line 301
    :cond_1
    const-string v0, "KeyguardProperties"

    const-string v1, "isIgnoreNationalRoaming() = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapanFeature()Z
    .locals 2

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->SBM:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public static isKDIFeature()Z
    .locals 1

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    return v0
.end method

.method public static isKModelWeatherDeamon()Z
    .locals 1

    .prologue
    .line 457
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKProject()Z
    .locals 1

    .prologue
    .line 376
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->K_PROJECT_MR:Z

    return v0
.end method

.method public static isKoreaFeature()Z
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR:Z

    return v0
.end method

.method public static isKttModel()Z
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    return v0
.end method

.method public static isLegacyUX()Z
    .locals 2

    .prologue
    .line 178
    const-string v0, "americano"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mocha"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLgtModel()Z
    .locals 1

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    return v0
.end method

.method public static isLowFestival()Z
    .locals 1

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LENTIS_PROJECT_MR:Z

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public static isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 307
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    const/4 v4, 0x1

    .line 322
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public static isNotRequireSIMPUKCode()Z
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    return v0
.end method

.method public static isOneHandOperationEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 351
    sget v2, Lcom/android/keyguard/sec/KeyguardProperties;->mOneHandSettingUnified:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 352
    sput v1, Lcom/android/keyguard/sec/KeyguardProperties;->mOneHandSettingUnified:I

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 354
    sput v0, Lcom/android/keyguard/sec/KeyguardProperties;->mOneHandSettingUnified:I

    .line 355
    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "mega2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string v3, "vasta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    :cond_0
    sput v1, Lcom/android/keyguard/sec/KeyguardProperties;->mOneHandSettingUnified:I

    .line 360
    :cond_1
    sget v2, Lcom/android/keyguard/sec/KeyguardProperties;->mOneHandSettingUnified:I

    if-ne v2, v0, :cond_4

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "interactionarea_switch"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 363
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public static isOneStepUnlockNotAllowed()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public static isPhoneShortcutEnable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_phone"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 402
    .local v0, "isPhoneShortcutOn":Z
    :goto_0
    sget-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isPhoneShortcutOn":Z
    :cond_0
    move v0, v2

    .line 400
    goto :goto_0

    .restart local v0    # "isPhoneShortcutOn":Z
    :cond_1
    move v1, v2

    .line 402
    goto :goto_1
.end method

.method public static isPresidentialCMASFeature()Z
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    return v0
.end method

.method public static isRichLockEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 330
    if-nez p0, :cond_0

    .line 346
    :goto_0
    return v2

    .line 333
    :cond_0
    sget-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabledChecked:Z

    if-ne v3, v5, :cond_1

    .line 334
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    goto :goto_0

    .line 336
    :cond_1
    sput-boolean v5, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabledChecked:Z

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 340
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.samsung.android.keyguardwallpaperupdator"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_1
    sput-boolean v5, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    .line 346
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    goto :goto_1
.end method

.method public static isRoamingTextNotAllowedOnDualClock()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    .prologue
    .line 469
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    :cond_0
    const/4 v1, 0x1

    .line 473
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSPRModel()Z
    .locals 1

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR_SALES:Z

    return v0
.end method

.method public static isSPRPLMN()Z
    .locals 1

    .prologue
    .line 477
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    return v0
.end method

.method public static isShowHighLowTemp()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimpleHelpText()Z
    .locals 1

    .prologue
    .line 461
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleClockCenterAlign()Z
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKProject()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSktModel()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    return v0
.end method

.method public static isSupportBlendedFilter()Z
    .locals 1

    .prologue
    .line 427
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    return v0
.end method

.method public static isSupportElasticPlugin()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public static isTMOModel()Z
    .locals 1

    .prologue
    .line 465
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    return v0
.end method

.method public static isTProject()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    return v0
.end method

.method public static isUSAFeature()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    return v0
.end method

.method public static isUSIMPersoFeatureEnable()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public static isVZWModel()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    return v0
.end method

.method public static isZeroProject()Z
    .locals 1

    .prologue
    .line 384
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    return v0
.end method

.method public static shouldShowPopupForDualClock(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 272
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 275
    .local v3, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "my_profile_enabled"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 277
    .local v2, "isProfileOn":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    .line 279
    .local v0, "isDualClockOn":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_timezone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move v1, v4

    .line 282
    .local v1, "isHometimeExist":Z
    :goto_2
    const-string v6, "KeyguardProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Romaing on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n dualClock on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n is homtime null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n isProfile on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 290
    :cond_0
    :goto_3
    return v4

    .end local v0    # "isDualClockOn":Z
    .end local v1    # "isHometimeExist":Z
    .end local v2    # "isProfileOn":Z
    :cond_1
    move v2, v5

    .line 275
    goto :goto_0

    .restart local v2    # "isProfileOn":Z
    :cond_2
    move v0, v5

    .line 277
    goto :goto_1

    .restart local v0    # "isDualClockOn":Z
    :cond_3
    move v1, v5

    .line 279
    goto :goto_2

    .line 287
    .restart local v1    # "isHometimeExist":Z
    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 288
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    :cond_5
    move v4, v5

    goto :goto_3

    .line 290
    :cond_6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_0

    :cond_7
    move v4, v5

    goto :goto_3
.end method

.method public static useBigClockWithNoti()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public static useIndependentLockTimeout()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usePatternBGEffect(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 438
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    const-string v1, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v2, "WATERCOLOUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    const-string v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const/4 v0, 0x1

    .line 453
    :cond_1
    return v0
.end method
