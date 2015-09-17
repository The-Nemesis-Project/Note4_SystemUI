.class public Lcom/sec/android/cover/FeatureUtils;
.super Ljava/lang/Object;
.source "FeatureUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mCountryCode:Ljava/lang/String;

.field private static final mProductName:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/sec/android/cover/FeatureUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->TAG:Ljava/lang/String;

    .line 13
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    .line 14
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->mCountryCode:Ljava/lang/String;

    .line 15
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 26
    const-string v0, "CTC"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHN"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHProjectVariant()Z
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "isHProjectVariant":Z
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isJapanModel()Z
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "DCM"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XJP"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBM"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

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

.method public static isLGTModel()Z
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "isLgtModel":Z
    const-string v1, "LGT"

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method public static isLightTheme()Z
    .locals 5

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "isLightTheme":Z
    const-string v2, "ro.build.scafe.cream"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "mThemeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :cond_0
    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLightTheme => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0
.end method

.method public static isSupportElasticPlugin()Z
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "openTheme":Z
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open theme feature => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v0
.end method

.method public static isTProject()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "SC-01G"

    sget-object v3, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCL24"

    sget-object v3, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 53
    :cond_2
    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tblte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tr3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trhlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trelte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tre3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trhplte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tbhplte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tbelte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tr3calte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tre3calte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public static isUseFloatingMsg()Z
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZeroProject()Z
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "isZeroProjectVariant":Z
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 81
    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zeroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zerofqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
