.class public Lcom/android/systemui/statusbar/MSimSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "MSimSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "MSim-SignalClusterView"


# instance fields
.field private final STATUS_BAR_STYLE_ANDROID_DEFAULT:I

.field private final STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

.field private final STATUS_BAR_STYLE_DATA_VOICE:I

.field private final STATUS_BAR_STYLE_DEFAULT_DATA:I

.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field private mCurrentDataSlot:I

.field private mHasService:Z

.field private mIsAirplaneMode:Z

.field mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

.field mMobile:[Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field mMobileActivity2:Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileDataState:[I

.field private mMobileDataState1:I

.field private mMobileDataState2:I

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileFocus:[Landroid/widget/ImageView;

.field private mMobileFocusResourceId:[I

.field private mMobileFocusSub:[Z

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileGroupResourceId:[I

.field private mMobileResourceId:[I

.field mMobileRoaming:[Landroid/widget/ImageView;

.field mMobileRoamingId:[I

.field private mMobileRoamingResourceId:[I

.field private mMobileRssiId:[I

.field mMobileRssiType:[Landroid/widget/ImageView;

.field private mMobileStrengthId:[I

.field mMobileType:Landroid/widget/ImageView;

.field mMobileType2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileTypeResourceId:[I

.field private mMobileVisible:[Z

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

.field mNoSimSlot:Landroid/widget/ImageView;

.field private mNoSimSlotResourceId:I

.field private final mNumPhones:I

.field private mRoamingIconId:[I

.field private mRssiTypeResourceId:[I

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSeparateMobileGroup2:Landroid/view/ViewGroup;

.field private mShowTwoBars:[I

.field mSimFous:[Z

.field mSimIcon:Landroid/widget/ImageView;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field private mSpacer:Landroid/view/View;

.field private mStyle:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_ANDROID_DEFAULT:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_CDMA_1X_COMBINED:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DEFAULT_DATA:I

    iput v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->STATUS_BAR_STYLE_DATA_VOICE:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mStyle:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    const v1, 0x7f0e0188

    iput v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlotResourceId:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mHasService:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mCurrentDataSlot:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    iput v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRoamingIconId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusSub:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e0190
        0x7f0e0199
        0x7f0e0189
    .end array-data

    :array_1
    .array-data 4
        0x7f0e0192
        0x7f0e019b
        0x7f0e018b
    .end array-data

    :array_2
    .array-data 4
        0x7f0e0193
        0x7f0e019c
        0x7f0e018c
    .end array-data

    :array_3
    .array-data 4
        0x7f0e0195
        0x7f0e019e
        0x7f0e018e
    .end array-data

    :array_4
    .array-data 4
        0x7f0e0191
        0x7f0e019a
        0x7f0e018a
    .end array-data

    :array_5
    .array-data 4
        0x7f0e0194
        0x7f0e019d
        0x7f0e018d
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/MSimSignalClusterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method private apply(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpnVisible:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v0, v0, p1

    const v3, 0x7f0203ae

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    const v3, 0x7f0203b0

    aput v3, v0, p1

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CTC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_5
    const-string v0, "MSim-SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtTetherState :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mNWBoosterRunning :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    if-eq v0, v6, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_b

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v0, "MSim-SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileTypeId[0] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMobileActivityId[0] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    if-ne v0, v6, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_c

    const-string v0, "MSim-SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileTypeId[1] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMobileActivityId[1] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_13

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v0, v0, p1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "MSim-SignalClusterView"

    const-string v3, "mMobileRssiId : 0 "

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v1

    if-eq v0, v6, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_f

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v0, "MSim-SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileTypeId[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v0, v0, v5

    if-eq v0, v6, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    if-eqz v0, :cond_11

    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v0, "MSim-SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileTypeId[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/16 :goto_a

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_a

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v1, 0x7f0e017a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    const v1, 0x7f0e017f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e0180

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v1, 0x7f0e018f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    const v1, 0x7f0e019f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v1, 0x7f0e0188

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroupResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocusResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mRssiTypeResourceId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02055b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0e0181

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v1, 0x7f0e0185

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e0187

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    const v1, 0x7f0e0186

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    const v1, 0x7f0e017b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const v1, 0x7f0e017c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifi:Landroid/widget/ImageView;

    const v1, 0x7f0e017d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const v1, 0x7f0e017e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0e0184

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0e0196

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    const v1, 0x7f0e0198

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    const v1, 0x7f0e0197

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mVpn:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSpacer:Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSeparateMobileGroup2:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivity2:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileFocus:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileType2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoaming:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/MSimSignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/MSimSignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mBtTetherState:Z

    return-void
.end method

.method public setDataState(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aput p1, v0, p2

    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileDataState ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDataStateForSeperatedData(II)V
    .locals 3

    if-nez p2, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState1:I

    :goto_0
    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileDataState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDataState2:I

    goto :goto_0
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mIsAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mAirplaneIconId:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNumPhones:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMobileActivityIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileActivityId:[I

    aput p1, v0, p2

    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileVisible:[Z

    aput-boolean p1, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileStrengthId:[I

    aput p2, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeId:[I

    aput p4, v0, p7

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p5, v0, p7

    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimFous:[Z

    aput-boolean p9, v0, p7

    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    return-void
.end method

.method public setNWBoosterIndicators(ZZIIILjava/lang/String;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterRunning:Z

    iput p3, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterWifiId:I

    iput p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterActivityId:I

    iput p5, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mNWBoosterMobileTypeId:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 3

    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimNetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMSimNC:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    return-void
.end method

.method public setRoamingIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRoamingId:[I

    aput p1, v0, p2

    return-void
.end method

.method public setRssiIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mMobileRssiId:[I

    aput p1, v0, p2

    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3

    const-string v0, "MSim-SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public setSimIcon(ZI)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconId:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mSimIconVisible:Z

    return-void
.end method

.method public setWifiActivityIcon(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiActivityId:I

    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiStrengthId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/MSimSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/MSimSignalClusterView;->apply(I)V

    goto :goto_0
.end method
