.class public Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    }
.end annotation


# static fields
.field static final CHATTY:Z = true

.field static final DEBUG:Z = true

.field private static final NB_SIM:I = 0x2

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field private static final SIM_0:I = 0x0

.field private static final SIM_1:I = 0x1

.field public static final SimIconImage:[I

.field public static final SimIconImageV2:[I

.field static final TAG:Ljava/lang/String; = "StatusBar.MSimNetworkController"


# instance fields
.field PHONE_ID1:I

.field PHONE_ID2:I

.field mBootDataSvcAcquired:Z

.field mBootVoiceSvcAcquired:Z

.field mCallState:[I

.field private mCarrierTextSub:[Ljava/lang/String;

.field mCurrentSimSlot:I

.field mDataStateDual:[I

.field private mDefaultPhoneId:I

.field mIsCmccCard:[Z

.field mIsDSDSlimited:[Z

.field mIsDialingEmergencyCall:[Z

.field mLastBluetoothTethered:Z

.field mLastDataState:I

.field mLastDataStateDual:[I

.field mLastMobileActivityIconId:[I

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastRoamingIconId:[I

.field mLastSeperatedDataState:[I

.field mLastSimDataServiceState:[I

.field mLastSimFocus:[Z

.field mLastSimIconId:I

.field mLastSimIconVisible:Z

.field mLastWifiActivityIconId:I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimLastcombinedActivityIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mMobileActivityIconId:[I

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

.field mNoMSimIconId:[I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field mPhoneCount:I

.field mPlmn:[Ljava/lang/String;

.field mRoamingIconId:[I

.field mRssiIconId:[I

.field mSeperatedDataNetType:[I

.field mSeperatedDataState:[I

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field private mSim1Icon:I

.field private mSim2Icon:I

.field private mSimEnabled:[Z

.field mSimFocus:[Z

.field mSimIconId:I

.field mSimIconVisible:Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSpn:[Ljava/lang/String;

.field private mSubIdPhoneIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiActivityIconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImage:[I

    .line 186
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    return-void

    .line 179
    :array_0
    .array-data 4
        0x7f02034a
        0x7f02034b
        0x7f02034e
        0x7f020351
        0x7f02034d
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x7f02034a
        0x7f02034b
        0x7f020349
        0x7f020352
        0x7f020350
        0x7f02034f
        0x7f02034e
        0x7f020351
        0x7f02034d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 237
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    .line 149
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 150
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    .line 151
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID2:I

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 157
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 158
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 159
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    .line 160
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 163
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 194
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    .line 195
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBootDataSvcAcquired:Z

    .line 2838
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 2840
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 2846
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 2949
    const v3, 0x7f0203eb

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2950
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 2951
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 2952
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 2953
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 2954
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 239
    .local v2, "numPhones":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener numPhones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 241
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    .line 242
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 243
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 244
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimIconId:[I

    .line 245
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    .line 246
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    .line 247
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    .line 248
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    .line 249
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 250
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    .line 251
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    .line 252
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    .line 253
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    .line 254
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    .line 255
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    .line 256
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    .line 257
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    .line 258
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    .line 259
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    .line 260
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    .line 261
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    .line 262
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 263
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 264
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    .line 265
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    .line 266
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    .line 267
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    .line 268
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    .line 269
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    .line 270
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    .line 271
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    .line 274
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    .line 275
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    .line 276
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    .line 277
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    .line 278
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    .line 280
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    .line 281
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    .line 282
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    .line 287
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    .line 288
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    .line 289
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    .line 292
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    .line 293
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    .line 294
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    .line 295
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    .line 298
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v1

    .line 303
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v1

    .line 304
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 306
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v7, v3, v1

    .line 307
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v7, v3, v1

    .line 308
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aput v6, v3, v1

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aput v6, v3, v1

    .line 310
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v7, v3, v1

    .line 311
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aput v6, v3, v1

    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aput v6, v3, v1

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aput v7, v3, v1

    .line 314
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 315
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastcombinedActivityIconId:[I

    aput v7, v3, v1

    .line 316
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput v7, v3, v1

    .line 317
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aput v7, v3, v1

    .line 318
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 319
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aput v8, v3, v1

    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aput v7, v3, v1

    .line 321
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aput v7, v3, v1

    .line 323
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aput v7, v3, v1

    .line 324
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aput v7, v3, v1

    .line 325
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aput v7, v3, v1

    .line 327
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aput v7, v3, v1

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aput-boolean v7, v3, v1

    .line 329
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aput-boolean v7, v3, v1

    .line 331
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aput-boolean v7, v3, v1

    .line 333
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v7, v3, v1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 339
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    iput v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-boolean v3, v3, v4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 344
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 345
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 346
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataServiceState:I

    .line 347
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 348
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 349
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 351
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    .line 353
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 355
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataDirectionIconId:I

    .line 356
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataSignalIconId:I

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeIconId:I

    .line 358
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSimIconId:I

    .line 360
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 361
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 363
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 365
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 366
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 367
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataTypeIconId:I

    .line 368
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    aget v3, v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 371
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.settings.SIMCARD_MGT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v3, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->initDualSimUiValue()V

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 387
    new-instance v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MobileDataObserver;

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # J

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalIconForCTCRoamingCall()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x7f020490

    const/4 v5, 0x2

    const v4, 0x7f02047e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3041
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDSDS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3042
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isMutiSIMDSDSRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3043
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, p2

    .line 3044
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, p2

    .line 3045
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, p2

    aput v2, v0, p2

    .line 3046
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isMutiSIMDSDSRadioOff is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_a

    .line 3051
    :cond_1
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3058
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v3

    .line 3059
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v3

    .line 3060
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 3075
    :cond_2
    :goto_0
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3076
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3078
    :cond_3
    const-string v0, "CU"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3079
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3081
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3082
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_f

    .line 3083
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 3085
    invoke-interface {p1, v5, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3086
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - mDataIconForCHN [SIM_0]: TelephonyManager.DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_e

    .line 3092
    invoke-interface {p1, v5, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3093
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - mDataIconForCHN [SIM_1]: TelephonyManager.DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_7
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_8

    .line 3104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v3, v0, p2

    .line 3123
    :cond_8
    return-void

    .line 3053
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v3

    .line 3054
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v3

    .line 3055
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, v3

    .line 3056
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    goto/16 :goto_0

    .line 3062
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDialingEmergencyCall:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    .line 3063
    :cond_b
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - isDialingEmergencyCall"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3065
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v2

    .line 3066
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v2

    .line 3067
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, v2

    .line 3068
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    goto/16 :goto_0

    .line 3070
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v2

    .line 3071
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v2

    .line 3072
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    goto/16 :goto_0

    .line 3088
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v2

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_1

    .line 3095
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, v3

    invoke-interface {p1, v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto :goto_2

    .line 3098
    :cond_f
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_2
.end method

.method private applyCTC(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x7f0206b7

    const v5, 0x7f02040a

    const v4, 0x7f020490

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3141
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v0, :cond_3

    .line 3142
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3143
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    if-ne v0, v3, :cond_19

    .line 3145
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v3

    .line 3146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v3

    .line 3147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, v3

    .line 3148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    .line 3159
    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    .line 3161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v2

    .line 3162
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v2

    .line 3171
    :cond_4
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 3173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v6, v0, v3

    .line 3174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v6, v0, v3

    .line 3183
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v0, v2

    .line 3185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v0, v2

    .line 3187
    :cond_7
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNoSIMOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v5, v0, v3

    .line 3189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v5, v0, v3

    .line 3192
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v2

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_b

    .line 3194
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v2

    aput v2, v0, v2

    .line 3196
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v3

    if-eq v0, v5, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, v3

    if-ne v0, v6, :cond_d

    .line 3198
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v1, v3

    aput v2, v0, v3

    .line 3201
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v2

    const v1, 0x7f0203a7

    if-ne v0, v1, :cond_e

    .line 3202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0203a8

    aput v1, v0, v2

    .line 3204
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v3

    const v1, 0x7f0203a7

    if-ne v0, v1, :cond_f

    .line 3205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0203a8

    aput v1, v0, v3

    .line 3208
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, v2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v2

    const v1, 0x7f020983

    if-ne v0, v1, :cond_10

    .line 3209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, v2

    .line 3211
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, v3

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, v3

    const v1, 0x7f020983

    if-ne v0, v1, :cond_11

    .line 3212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v2, v0, v3

    .line 3215
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3217
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsDsdsOnlyRoaming:Z

    if-eqz v0, :cond_16

    .line 3218
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsDSDSlimited:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_16

    .line 3220
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v2

    if-ne v0, v3, :cond_1f

    .line 3222
    :cond_15
    invoke-interface {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3230
    :cond_16
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3231
    invoke-interface {p1, v2, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3232
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - sim1 Off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :cond_17
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3235
    invoke-interface {p1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    .line 3236
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "refreshSignalCluster - sim2 Off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p2

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRssiIcon(II)V

    .line 3240
    return-void

    .line 3149
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    if-ne v0, v3, :cond_3

    .line 3151
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v2

    .line 3152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v2

    .line 3153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, v2

    .line 3154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    goto/16 :goto_0

    .line 3163
    :cond_1b
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3165
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, v2

    .line 3166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v2

    .line 3167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v2

    .line 3168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v2

    goto/16 :goto_1

    .line 3175
    :cond_1d
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3177
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, v3

    .line 3178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v2, v0, v3

    .line 3179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v4, v0, v3

    .line 3180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v4, v0, v3

    goto/16 :goto_2

    .line 3223
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v0, v0, v3

    if-ne v0, v3, :cond_16

    .line 3225
    :cond_20
    invoke-interface {p1, v2, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataStateForSeperatedData(II)V

    goto/16 :goto_3
.end method

.method private applyCU(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f02040b

    .line 3125
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "applyCU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v3

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v3

    .line 3131
    :cond_1
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isFlightModePossible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3132
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v2, v0, v4

    .line 3133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v2, v0, v4

    .line 3135
    :cond_3
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 6
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3279
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileActivityIcon(II)V

    .line 3280
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiActivityIcon(I)V

    .line 3281
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setRoamingIcon(II)V

    .line 3282
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 3284
    .local v0, "mCurrentDataActiveSim":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3285
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    .line 3291
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setBtTetherState(Z)V

    .line 3293
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    aput-boolean v1, v4, p2

    .line 3294
    if-nez p2, :cond_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3295
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aput-boolean v2, v1, p2

    .line 3297
    :cond_0
    return-void

    .line 3287
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v1, v1, p2

    invoke-interface {p1, v1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setDataState(II)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 3293
    goto :goto_1
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 3274
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "applyOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 3276
    return-void
.end method

.method private final getCHNEriIcon(II)I
    .locals 3
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v1, 0x7f0203a7

    const/4 v0, 0x0

    .line 3372
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3381
    :goto_0
    return v0

    .line 3375
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 3377
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 3379
    goto :goto_0

    .line 3375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCTCEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 3358
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3367
    :goto_0
    return v0

    .line 3361
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3363
    :pswitch_1
    const v0, 0x7f0203a8

    goto :goto_0

    .line 3365
    :pswitch_2
    const v0, 0x7f020984

    goto :goto_0

    .line 3361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCdmaEriIcon(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3301
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    if-gtz v3, :cond_1

    const-string v3, "ja3gduosctc"

    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3334
    :cond_0
    :goto_0
    return v2

    .line 3305
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 3306
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 3307
    .local v0, "iconIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 3309
    .local v1, "iconMode":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3320
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 3323
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 3324
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3326
    :pswitch_0
    const v2, 0x7f020389

    goto :goto_0

    .line 3314
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCTCEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 3317
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCHNEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 3328
    :pswitch_3
    const v2, 0x7f020460

    goto :goto_0

    .line 3312
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3324
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final getCdmaPhoneSignalIconId(I)I
    .locals 9
    .param p1, "phoneId"    # I

    .prologue
    .line 2022
    const/4 v0, 0x0

    .line 2023
    .local v0, "evdoIconLevel":I
    const/4 v3, 0x0

    .line 2025
    .local v3, "lteIconLevel":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 2026
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 2028
    .local v2, "iconList":[I
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ) CTC "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LTE: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2033
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2034
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v6

    aput v6, v5, p1

    .line 2036
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2038
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v5

    mul-int/lit8 v0, v5, 0x5

    .line 2040
    if-nez v1, :cond_5

    .line 2041
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 2100
    :cond_1
    :goto_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 2101
    .local v4, "maxLevel":I
    if-le v1, v4, :cond_15

    .line 2102
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    move v1, v4

    .line 2115
    :cond_2
    :goto_2
    aget v5, v2, v1

    return v5

    .line 2028
    .end local v4    # "maxLevel":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Evdo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cdma "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2044
    :cond_5
    add-int/2addr v1, v0

    .line 2046
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2049
    :cond_8
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2050
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2054
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2052
    :cond_9
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_3

    .line 2056
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2057
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2058
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2062
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2060
    :cond_b
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_4

    .line 2064
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2067
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2068
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    mul-int/lit8 v3, v5, 0x5

    .line 2070
    if-nez v1, :cond_e

    .line 2071
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2074
    :cond_e
    add-int/2addr v1, v3

    .line 2076
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2078
    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2079
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2083
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2081
    :cond_11
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_5

    .line 2085
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2086
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2087
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .line 2091
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2089
    :cond_13
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v5, v6

    goto :goto_6

    .line 2093
    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    goto/16 :goto_1

    .line 2108
    .restart local v4    # "maxLevel":I
    :cond_15
    if-gez v1, :cond_2

    .line 2109
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private getCurrentSimSlot()I
    .locals 1

    .prologue
    .line 3579
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    return v0
.end method

.method private getMobileLabelForCHN()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3243
    const-string v0, ""

    .line 3245
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v1, :cond_4

    .line 3246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v4

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 3248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v1, v3

    .line 3263
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3270
    :cond_0
    :goto_1
    return-object v0

    .line 3249
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 3250
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v1, v4

    goto :goto_0

    .line 3251
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, v4

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_3

    .line 3252
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v1, v3

    goto :goto_0

    .line 3254
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 3256
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0444

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3260
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_0

    .line 3265
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v1

    if-nez v1, :cond_0

    .line 3267
    const-string v0, ""

    goto :goto_1
.end method

.method private getPhoneId(J)I
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 452
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 455
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    .end local v0    # "phoneId":I
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # J
    .param p3, "slotId"    # I

    .prologue
    .line 873
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;J)V

    .line 1005
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private final getRoamingIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3387
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    .line 3389
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v0, :cond_2

    .line 3390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, p1

    .line 3421
    :goto_0
    return-void

    .line 3392
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 3393
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoService, mRoamingIconId = 0phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3395
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3397
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaEriIcon(I)I

    move-result v1

    aput v1, v0, p1

    .line 3399
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3401
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 3402
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), !isCdmaEri(), mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3405
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_6

    .line 3414
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f0203a7

    aput v1, v0, p1

    .line 3415
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3418
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v1, v0, p1

    .line 3419
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing final, mRoamingIconId = 0 phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCMCC(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1229
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f02037f

    aput v1, v0, p1

    .line 1254
    :cond_0
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:isWCDMA = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isLTE() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    .line 1260
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCMCC:mRssiIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_1
    return-void

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020376

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1237
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020386

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1240
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020379

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1243
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f02037e

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1246
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020375

    aput v1, v0, p1

    goto/16 :goto_0

    .line 1252
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v3, v0, p1

    goto/16 :goto_0
.end method

.method private getRssiTypeIconCTC(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const v7, 0x7f020373

    const v6, 0x7f020381

    const v5, 0x7f020377

    const/4 v4, 0x0

    .line 1160
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRssiTypeIconCTC( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "LTE "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdmalevel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1165
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-gez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1166
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    .line 1214
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_5

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const v1, 0x7f020983

    aput v1, v0, p1

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1224
    :cond_5
    :goto_3
    return-void

    .line 1160
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isWCDMA(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "WCDMA"

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Evdo"

    goto/16 :goto_0

    :cond_8
    const-string v0, "2g(1x) "

    goto/16 :goto_0

    :cond_9
    const-string v0, ""

    goto/16 :goto_1

    .line 1167
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto :goto_2

    .line 1171
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto :goto_2

    .line 1174
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaCall(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_d

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020981

    aput v1, v0, p1

    goto :goto_2

    .line 1183
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto :goto_2

    .line 1185
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    if-lez v0, :cond_f

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020982

    aput v1, v0, p1

    goto/16 :goto_2

    .line 1193
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1200
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    const v1, 0x7f020980

    aput v1, v0, p1

    goto/16 :goto_2

    .line 1204
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isEvdo(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v5, v0, p1

    goto/16 :goto_2

    .line 1206
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isLTE(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v6, v0, p1

    goto/16 :goto_2

    .line 1209
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v7, v0, p1

    goto/16 :goto_2

    .line 1218
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasDataService(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aput v4, v0, p1

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aput v4, v0, p1

    .line 1221
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "getRssiTypeIconCTC : mRoamingIconId =0 mRssiIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private final getSGLTEPhoneSignalIconId(III)I
    .locals 8
    .param p1, "csLevel"    # I
    .param p2, "psLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 2122
    const/4 v4, 0x0

    .line 2123
    .local v4, "wcdmaIconLevel":I
    const/4 v2, 0x0

    .line 2125
    .local v2, "lteIconLevel":I
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v1

    .line 2127
    .local v1, "iconList":[I
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSglteMode(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2128
    mul-int/lit8 v5, p2, 0x5

    add-int v0, v5, p1

    .line 2129
    .local v0, "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC_2:[I

    .line 2135
    :goto_0
    array-length v5, v1

    add-int/lit8 v3, v5, -0x1

    .line 2136
    .local v3, "maxLevel":I
    if-le v0, v3, :cond_2

    .line 2137
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    move v0, v3

    .line 2150
    :cond_0
    :goto_1
    aget v5, v1, v0

    return v5

    .line 2131
    .end local v0    # "iconLevel":I
    .end local v3    # "maxLevel":I
    :cond_1
    move v0, p1

    .line 2132
    .restart local v0    # "iconLevel":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    goto :goto_0

    .line 2143
    .restart local v3    # "maxLevel":I
    :cond_2
    if-gez v0, :cond_0

    .line 2144
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSGLTEPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSimActive(I)I
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x1

    .line 3569
    if-nez p1, :cond_0

    .line 3570
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3575
    .local v0, "value":I
    :goto_0
    return v0

    .line 3572
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private getSimIconIndex(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 3629
    if-nez p1, :cond_0

    .line 3630
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 3632
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 3800
    const/4 v2, 0x0

    .line 3801
    .local v2, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    .line 3802
    .local v3, "subId":[J
    if-eqz v3, :cond_1

    .line 3803
    const/4 v5, 0x0

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 3804
    .local v0, "phoneId":I
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3805
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3806
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3807
    .local v4, "values":[Ljava/lang/String;
    if-ltz v0, :cond_0

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    .line 3808
    aget-object v2, v4, v0

    .line 3811
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 3814
    .end local v0    # "phoneId":I
    .end local v1    # "prop":Ljava/lang/String;
    .end local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .restart local v0    # "phoneId":I
    .restart local v1    # "prop":Ljava/lang/String;
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_2
    move-object p2, v2

    .line 3811
    goto :goto_0
.end method

.method private getUpdateDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 562
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 568
    :cond_1
    const-string v0, "OYB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const-string v0, "OYA"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    const-string v0, "OYC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    const-string v0, "OLB"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const-string v0, "VD2"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    const-string v0, "TMH"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 647
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 622
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    goto/16 :goto_0

    .line 637
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCTCDataNetType(I)V

    goto/16 :goto_0

    .line 641
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCMCCDataNetType(I)V

    goto/16 :goto_0

    .line 644
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCUDataNetType(I)V

    goto/16 :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f020389

    const/4 v1, 0x1

    .line 3338
    if-ne p1, v1, :cond_1

    .line 3339
    const/4 v0, 0x0

    .line 3353
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 3341
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3345
    :pswitch_2
    const v0, 0x7f020460

    goto :goto_0

    .line 3347
    :pswitch_3
    if-nez p2, :cond_2

    .line 3348
    const v0, 0x7f02038b

    goto :goto_0

    .line 3349
    :cond_2
    if-ne p2, v1, :cond_0

    .line 3350
    const v0, 0x7f020461

    goto :goto_0

    .line 3341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasDataService(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1102
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1108
    :pswitch_0
    const/4 v0, 0x1

    .line 1111
    :cond_0
    :pswitch_1
    return v0

    .line 1103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasService(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1087
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 1088
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1094
    :pswitch_0
    const/4 v1, 0x1

    .line 1097
    :cond_0
    :pswitch_1
    return v1

    .line 1089
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDualSimUiValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3589
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3598
    .local v0, "mSimMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 3599
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 3616
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 3618
    return-void
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCallState:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_1

    .line 1270
    const/4 v0, 0x1

    .line 1273
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCall() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return v0
.end method

.method private isCmccCard(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1140
    const-string v1, ""

    .line 1141
    .local v1, "simNum":Ljava/lang/String;
    const-string v0, ""

    .line 1143
    .local v0, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v2

    .line 1146
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 1149
    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1152
    :cond_2
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46007"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    :cond_3
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "isCmccCard "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isEvdo(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLTE(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMutiSIMDSDSRadioOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3035
    const-string v2, "ril.dsds.radio-off"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "ril.dsds.radio.recv-end"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private isNetworkRoaming(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2007
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 2008
    .local v2, "subIdtemp":[J
    if-eqz v2, :cond_0

    .line 2009
    aget-wide v0, v2, v3

    .line 2010
    .local v0, "subId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 2011
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v3

    .line 2016
    .end local v0    # "subId":J
    :cond_0
    return v3
.end method

.method private isNoSIMOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3477
    const/4 v2, 0x0

    .line 3478
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3479
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3480
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 3487
    :goto_0
    return v3

    .line 3483
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "0"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "0"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3485
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 3487
    goto :goto_0
.end method

.method private isRoaming(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1546
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method private isSIMLockedOfSlot(I)Z
    .locals 7
    .param p1, "simSlot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3491
    const/4 v2, 0x0

    .line 3493
    .local v2, "result":Z
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v5, "9,9"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3494
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3495
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 3505
    :goto_0
    return v3

    .line 3501
    :cond_0
    if-nez p1, :cond_1

    const-string v4, "1"

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v6, :cond_3

    const-string v3, "1"

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3503
    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v3, v2

    .line 3505
    goto :goto_0
.end method

.method private isSIMOFFOfSlot(I)Z
    .locals 10
    .param p1, "simSlot"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 3509
    const/4 v2, 0x0

    .line 3511
    .local v2, "result":Z
    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "9,9"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3512
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3513
    const-string v1, "9,9"

    .line 3515
    :cond_0
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3516
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 3538
    :cond_1
    :goto_0
    return v5

    .line 3521
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone1_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3522
    .local v3, "simDBvalue0":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3523
    .local v4, "simDBvalue1":I
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSIMOFFOfSlot simDBvalue0 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simDBvalue1 ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    const-string v6, "1"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "1"

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3525
    :cond_3
    if-nez p1, :cond_4

    const-string v6, "2"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-ne p1, v9, :cond_1

    const-string v6, "2"

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3527
    :cond_5
    const/4 v2, 0x1

    move v5, v2

    .line 3528
    goto :goto_0

    .line 3533
    :cond_6
    if-nez p1, :cond_7

    const-string v6, "2"

    aget-object v5, v0, v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v3, :cond_8

    :cond_7
    if-ne p1, v9, :cond_9

    const-string v5, "2"

    aget-object v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v4, :cond_9

    .line 3535
    :cond_8
    const/4 v2, 0x1

    :cond_9
    move v5, v2

    .line 3538
    goto/16 :goto_0
.end method

.method private isSglteMode(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3819
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v1, v1, p1

    if-nez v1, :cond_0

    .line 3830
    :goto_0
    return v0

    .line 3822
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 3823
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    .line 3824
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSglteMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3825
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    const/4 v0, 0x1

    goto :goto_0

    .line 3829
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "isSglteMode is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 8
    .param p0, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3444
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3445
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3446
    if-nez p0, :cond_1

    .line 3473
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v4

    .line 3449
    goto :goto_0

    .line 3453
    :cond_2
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3454
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3455
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 3461
    const/4 v2, 0x0

    .line 3462
    .local v2, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 3470
    :goto_1
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3473
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 3464
    :pswitch_0
    aget-object v2, v0, v5

    .line 3465
    goto :goto_1

    .line 3467
    :pswitch_1
    aget-object v2, v0, v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 3473
    goto :goto_2

    .line 3462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWCDMA(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 3731
    packed-switch p1, :pswitch_data_0

    .line 3768
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3733
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3735
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3737
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3739
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 3741
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 3743
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 3746
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 3748
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 3750
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 3752
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 3754
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 3756
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 3758
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 3760
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 3762
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 3764
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 3766
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 3731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V
    .locals 15
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .prologue
    .line 2975
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    aget v3, v0, v1

    .line 2976
    .local v3, "nwboosterWifiIconId":I
    const v4, 0x7f02056e

    .line 2978
    .local v4, "nwboosterDataActivityIconId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v0, :cond_d

    .line 2979
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    .line 2981
    .local v14, "showBoosterIcon":Z
    :goto_0
    if-eqz v14, :cond_c

    .line 2982
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v0, :cond_b

    .line 2983
    const/4 v12, 0x0

    .line 2984
    .local v12, "nw_data_in":Z
    const/4 v13, 0x0

    .line 2986
    .local v13, "nw_data_out":Z
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2988
    :cond_0
    const/4 v12, 0x1

    .line 2998
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 2999
    const v4, 0x7f02056d

    .line 3008
    :cond_2
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 3023
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :goto_3
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    .end local v14    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 2979
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 2989
    .restart local v12    # "nw_data_in":Z
    .restart local v13    # "nw_data_out":Z
    .restart local v14    # "showBoosterIcon":Z
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2991
    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    .line 2992
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2994
    :cond_7
    const/4 v12, 0x1

    .line 2995
    const/4 v13, 0x1

    goto :goto_1

    .line 3000
    :cond_8
    if-eqz v12, :cond_9

    if-nez v13, :cond_9

    .line 3001
    const v4, 0x7f02056c

    goto :goto_2

    .line 3002
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_a

    .line 3003
    const v4, 0x7f02056f

    goto :goto_2

    .line 3004
    :cond_a
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 3005
    const v4, 0x7f02056e

    goto :goto_2

    .line 3012
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v8, v0, v1

    .line 3014
    .local v8, "mDimNWBoosterWifiIcon":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v9, 0x7f02056d

    iget v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 3019
    .end local v8    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 3027
    .end local v14    # "showBoosterIcon":Z
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_4
.end method

.method private refreshSignalIconForCTCRoamingCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3834
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3835
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 3836
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 3837
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3838
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 3839
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 3835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3842
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    .line 3843
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 3844
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3845
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 3842
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3848
    :cond_3
    return-void
.end method

.method private setCarrierText()V
    .locals 5

    .prologue
    .line 850
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->PHONE_ID1:I

    aget-object v0, v3, v4

    .line 851
    .local v0, "carrierName":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v1, v3, :cond_0

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 856
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 857
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 858
    .local v2, "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 861
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 862
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 863
    .restart local v2    # "v":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 867
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private setCurrentSimSlotIcon()V
    .locals 0

    .prologue
    .line 3641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon_Other()V

    .line 3642
    return-void
.end method

.method private setCurrentSimSlotIcon_Other()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v1

    .line 3646
    .local v1, "numberOfSim":I
    const/4 v2, -0x1

    .line 3650
    .local v2, "simIconIndex":I
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 3653
    :cond_0
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3655
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3715
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v3, v5, :cond_7

    .line 3716
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3721
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_2

    .line 3722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 3723
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon ReadySim =0::invisible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3727
    :cond_2
    return-void

    .line 3656
    :cond_3
    if-ne v1, v5, :cond_5

    .line 3657
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3659
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3665
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3669
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 3670
    :cond_4
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3672
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "setCurrentSimSlotIcon for SIM 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3678
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3682
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    .line 3684
    :cond_5
    if-ne v1, v4, :cond_1

    .line 3685
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 3686
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3691
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3695
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    .line 3709
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3710
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 3709
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3697
    .end local v0    # "i":I
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    .line 3702
    sget-object v3, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->SimIconImageV2:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    .line 3706
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_2

    .line 3718
    :cond_7
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_1
.end method

.method private setSimIconIndex(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "simId"    # I

    .prologue
    .line 3621
    if-nez p2, :cond_1

    .line 3622
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim1Icon:I

    .line 3626
    :cond_0
    :goto_0
    return-void

    .line 3623
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3624
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSim2Icon:I

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    return-void
.end method

.method private final updateCMCCDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const v2, 0x7f0d0250

    .line 1436
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1438
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1469
    :goto_0
    :pswitch_0
    return-void

    .line 1445
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1446
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020374

    aput v1, v0, p1

    .line 1453
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1450
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203a0

    aput v1, v0, p1

    goto :goto_1

    .line 1457
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1458
    :cond_2
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f02037a

    aput v1, v0, p1

    .line 1465
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1462
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f0203a1

    aput v1, v0, p1

    goto :goto_2

    .line 1440
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCTCDataNetType(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const v4, 0x7f0d0253

    const v2, 0x7f020371

    const v3, 0x7f020372

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1492
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCTCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1537
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p1

    const v1, 0x7f02039d

    if-ne v0, v1, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1540
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 1543
    :cond_2
    return-void

    .line 1496
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 1498
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0255

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1503
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1508
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 1510
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1505
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_1

    .line 1514
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1515
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1519
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v2, v0, p1

    .line 1521
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 1516
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    goto :goto_2

    .line 1528
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdmaEri(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020374

    aput v1, v0, p1

    .line 1531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 1494
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final updateCUDataNetType(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 1474
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1483
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 1487
    :cond_0
    return-void

    .line 1478
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v1, 0x7f020383

    aput v1, v0, p1

    .line 1479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 1476
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText(I)V
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 809
    const v0, 0x104039f

    .line 844
    :goto_0
    if-eqz v0, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 847
    :cond_0
    return-void

    .line 812
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 839
    const v0, 0x104038b

    goto :goto_0

    .line 819
    :pswitch_0
    const v0, 0x104038b

    .line 820
    goto :goto_0

    .line 822
    :pswitch_1
    const v0, 0x104039d

    .line 823
    goto :goto_0

    .line 825
    :pswitch_2
    const v0, 0x104039b

    .line 826
    goto :goto_0

    .line 829
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCarrierTextSub:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto :goto_0

    .line 832
    :pswitch_4
    const v0, 0x104038f

    .line 834
    goto :goto_0

    .line 836
    :pswitch_5
    const v0, 0x1040399

    .line 837
    goto :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1837
    const/4 v1, 0x0

    .line 1838
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 1839
    .local v2, "visible":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1842
    .local v0, "dataSub":I
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon phoneId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataSub ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 1851
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v3, :cond_0

    .line 1852
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 1853
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v3, v3, p1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    .line 1855
    :cond_0
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon( "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " CDMA "

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMSimState= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataNetType= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1859
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-nez v3, :cond_1

    .line 1861
    const/4 v2, 0x0

    .line 1865
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v4, :cond_6

    .line 1867
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 1868
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v6, :cond_5

    .line 1869
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_0

    .line 1880
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 1883
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 1921
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 1922
    const/4 v2, 0x0

    .line 1925
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aput v1, v3, p1

    .line 1926
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aput v1, v3, p1

    .line 1927
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aput-boolean v2, v3, p1

    .line 1928
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataConnected:Z

    .line 1930
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon when mMSimDataConnected["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMSimMobileActivityIconId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    return-void

    .line 1855
    :cond_4
    const-string v3, " GSM : "

    goto/16 :goto_0

    .line 1871
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 1872
    goto :goto_1

    .line 1874
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 1875
    goto :goto_1

    .line 1877
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v9

    .line 1878
    goto :goto_1

    .line 1885
    :cond_5
    const/4 v1, 0x0

    .line 1886
    const/4 v2, 0x0

    goto :goto_2

    .line 1889
    :cond_6
    const-string v3, "StatusBar.MSimNetworkController"

    const-string v4, "updateDataIcon no sim"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoSim:Z

    .line 1892
    const/4 v1, 0x0

    .line 1893
    const/4 v2, 0x0

    .line 1896
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    goto :goto_2

    .line 1900
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v3, v6, :cond_8

    .line 1901
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v3, v3, p1

    packed-switch v3, :pswitch_data_1

    .line 1913
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 1914
    goto/16 :goto_2

    .line 1903
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 1904
    goto/16 :goto_2

    .line 1906
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 1907
    goto/16 :goto_2

    .line 1909
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v9

    .line 1910
    goto/16 :goto_2

    .line 1917
    :cond_8
    const/4 v1, 0x0

    .line 1918
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1901
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    const v9, 0x7f020371

    const/4 v8, 0x0

    const v7, 0x7f0d024f

    const v6, 0x7f0203d8

    const v5, 0x7f020374

    .line 1552
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1559
    .local v0, "dataSub":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1560
    .local v1, "mBackUpNwboosterDataTypeIconId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1561
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v2, :cond_1

    .line 1563
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1564
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0203b6

    aput v3, v2, p1

    .line 1565
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1566
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0251

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1570
    const v2, 0x7f0203db

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1780
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v2, :cond_0

    if-eq p1, v0, :cond_0

    .line 1781
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1786
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    .line 1788
    return-void

    .line 1573
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v2, :cond_2

    .line 1574
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 1576
    :cond_2
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 1769
    :pswitch_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    .line 1772
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v8, v2, p1

    iput v8, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1775
    const v2, 0x7f0203eb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1581
    :pswitch_1
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, "updateDataNetType NETWORK_TYPE_UNKNOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_3

    .line 1584
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1585
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v8, v2, p1

    .line 1586
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1587
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1591
    const v2, 0x7f0203eb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1598
    :cond_3
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_4

    .line 1599
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1600
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02039c

    aput v3, v2, p1

    .line 1602
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1603
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0255

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1607
    const v2, 0x7f0203e2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1615
    :cond_4
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1616
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1617
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1618
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1622
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1629
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_5

    .line 1630
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1631
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0203a0

    aput v3, v2, p1

    .line 1633
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1634
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1638
    const v2, 0x7f0203e4

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1642
    :cond_5
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1643
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1645
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1650
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1656
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_6

    .line 1657
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1658
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0203a1

    aput v3, v2, p1

    .line 1659
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0250

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1662
    const v2, 0x7f0203e5

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1664
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1665
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1666
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1669
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1675
    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1676
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v9, v2, p1

    .line 1678
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1679
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1683
    const v2, 0x7f0203d6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1687
    :pswitch_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1688
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v9, v2, p1

    .line 1690
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1691
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0253

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1695
    const v2, 0x7f0203d6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1703
    :pswitch_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1704
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1706
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1707
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1711
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1718
    :pswitch_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v2, :cond_7

    .line 1719
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1720
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02037d

    aput v3, v2, p1

    .line 1721
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1722
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0251

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1726
    const v2, 0x7f0203db

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1729
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1730
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f0203a3

    aput v3, v2, p1

    .line 1731
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1732
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0252

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1736
    const v2, 0x7f0203e6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1742
    :pswitch_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_8

    .line 1743
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1744
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const v3, 0x7f02039d

    aput v3, v2, p1

    .line 1746
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1747
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d024c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1751
    const v2, 0x7f0203e3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1755
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataIconList:[I

    .line 1756
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aput v5, v2, p1

    .line 1758
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1759
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1763
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateDualSimUiBySettings(ILjava/lang/String;)V
    .locals 4
    .param p1, "simId"    # I
    .param p2, "imageIndex"    # Ljava/lang/String;

    .prologue
    .line 3545
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3546
    :cond_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageIndex NULL return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :goto_0
    return-void

    .line 3549
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3550
    .local v0, "iconIndex":I
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setSimIconIndex(II)V

    .line 3552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    goto :goto_0
.end method

.method private updateIconSet(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    .line 1816
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v7

    .line 1818
    .local v7, "voiceNetorkType":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v6

    .line 1819
    .local v6, "dataNetorkType":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, voice network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data network type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    if-nez v6, :cond_0

    move v1, v7

    .line 1827
    .local v1, "chosenNetworkType":I
    :goto_0
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconSet, chosenNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspaDataDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hspapDistinguishable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showAtLeastThreeGees="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->updateDataType(IIZZZI)V

    .line 1834
    return-void

    .end local v1    # "chosenNetworkType":I
    :cond_0
    move v1, v6

    .line 1824
    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 14

    .prologue
    .line 2860
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mDoNotShowNoSimNotification:Z

    if-eqz v10, :cond_1

    .line 2928
    :cond_0
    :goto_0
    return-void

    .line 2864
    :cond_1
    const-string v10, "ro.config.donot_nosim"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2865
    const-string v10, "StatusBar.MSimNetworkController"

    const-string v11, "Don\'t show No SIM Notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2869
    :cond_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v10, :cond_0

    .line 2873
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 2876
    .local v4, "numPhones":I
    const/4 v2, 0x1

    .line 2877
    .local v2, "isNoSim":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 2878
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v10, v10, v1

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v10, v11, :cond_4

    .line 2879
    const/4 v2, 0x0

    .line 2885
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 2887
    .local v3, "mgr":Landroid/app/NotificationManager;
    if-nez v2, :cond_5

    .line 2888
    const/16 v10, 0x111

    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 2877
    .end local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2890
    .restart local v3    # "mgr":Landroid/app/NotificationManager;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2893
    .local v5, "res":Landroid/content/res/Resources;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_7

    .line 2894
    const v10, 0x7f0d0424

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2902
    .local v9, "title":Ljava/lang/String;
    :goto_2
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_9

    .line 2903
    const v10, 0x7f0d0426

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2908
    .local v8, "text":Ljava/lang/String;
    :goto_3
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f020407

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2916
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v10, :cond_6

    .line 2917
    const v10, 0x7f02040c

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2919
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2920
    .local v6, "resultIntent":Landroid/content/Intent;
    const-string v10, "SIM_TYPE"

    const-string v11, "NO_SIM"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2921
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 2923
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2926
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v7    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_6
    const/16 v10, 0x111

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2895
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_7
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v10, :cond_8

    .line 2896
    const v10, 0x7f0d0423

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 2898
    .end local v9    # "title":Ljava/lang/String;
    :cond_8
    const v10, 0x7f0d0422

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "title":Ljava/lang/String;
    goto :goto_2

    .line 2905
    :cond_9
    const v10, 0x7f0d0425

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "text":Ljava/lang/String;
    goto :goto_3
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1807
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 1809
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const v1, 0x7f020138

    aput v1, v0, p1

    .line 1813
    :goto_0
    return-void

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    const v11, 0x7f020154

    const/4 v10, 0x1

    const v9, 0x7f0206b7

    const/4 v8, 0x0

    .line 1278
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: phoneId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    if-nez p1, :cond_1

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    .line 1282
    .local v4, "simActive":I
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1284
    .local v0, "dataSub":I
    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1285
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1286
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1287
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1433
    :cond_0
    :goto_1
    return-void

    .line 1280
    .end local v0    # "dataSub":I
    .end local v4    # "simActive":I
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v4

    goto :goto_0

    .line 1290
    .restart local v0    # "dataSub":I
    .restart local v4    # "simActive":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v5, v5, p1

    if-eqz v5, :cond_4

    .line 1292
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, " No service"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1294
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1309
    if-ne p1, v0, :cond_3

    .line 1310
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1312
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    .line 1314
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    goto :goto_1

    .line 1318
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-nez v5, :cond_8

    .line 1320
    :cond_5
    const-string v6, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Null object, mMSimSignalStrength= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mMSimServiceState "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, p1

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aput v9, v5, p1

    .line 1325
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aput v9, v5, p1

    .line 1326
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1328
    if-ne p1, v0, :cond_6

    .line 1329
    iput v11, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1331
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_1

    .line 1320
    :cond_7
    const-string v5, " null "

    goto :goto_2

    .line 1335
    :cond_8
    const/4 v3, 0x0

    .line 1336
    .local v3, "psIconLevel":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v5, :cond_a

    .line 1337
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    .local v1, "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1338
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set to cdmaLevel= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " instead of level= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getNumberOfSim()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCurrentSimSlot()I

    move-result v5

    if-ne v5, p1, :cond_b

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSimActive(I)I

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMLockedOfSlot(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1360
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v10, v5, p1

    .line 1370
    :goto_4
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v1, v5, :cond_c

    .line 1371
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too high"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    .line 1379
    :cond_9
    :goto_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneSignalIconList(II)[I

    move-result-object v2

    .line 1396
    .local v2, "iconList":[I
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mInetCondition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1399
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRssiTypeIconCTC(I)V

    .line 1400
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1401
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getCdmaPhoneSignalIconId(I)I

    move-result v6

    aput v6, v5, p1

    .line 1402
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1404
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v6, p1

    aput v6, v5, p1

    .line 1430
    :goto_6
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: iconLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1355
    .end local v1    # "iconLevel":I
    .end local v2    # "iconList":[I
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .restart local v1    # "iconLevel":I
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_3

    .line 1362
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aput-boolean v8, v5, p1

    goto/16 :goto_4

    .line 1374
    :cond_c
    if-gez v1, :cond_9

    .line 1375
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too low"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    goto/16 :goto_5

    .line 1406
    .restart local v2    # "iconList":[I
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1407
    if-ne p1, v0, :cond_e

    .line 1408
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1411
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1413
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto :goto_6

    .line 1416
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v6, v2, v1

    aput v6, v5, p1

    .line 1417
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 1419
    if-ne p1, v0, :cond_10

    .line 1420
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    aget-object v5, v5, v6

    aget v5, v5, v1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1426
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v6, v1, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getDataSignalIconId(III)I

    move-result v6

    aput v6, v5, p1

    goto/16 :goto_6
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 474
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 396
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V

    .line 397
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 399
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 402
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2709
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2710
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2711
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2712
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2714
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2716
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2717
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2718
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2719
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2720
    const-string v0, "  mSeperatedDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2722
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2723
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2724
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2725
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2726
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2727
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2728
    const-string v0, "  mSeperatedDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2729
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2730
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataNetType:[I

    aget v0, v0, p4

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2733
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2734
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2736
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2737
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2738
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2740
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2742
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2744
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2745
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2746
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    const-string v0, "  mRssiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2749
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2750
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRssiIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2752
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2753
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2754
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2755
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2756
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2759
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2760
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2761
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2762
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2763
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2764
    const-string v0, " mCurrentSimSlot= "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2765
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2766
    const-string v0, " mSimFocus = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2768
    const-string v0, " mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2769
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2770
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2771
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2775
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2776
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2777
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2778
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2779
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2780
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2781
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2782
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2784
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2787
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2788
    const-string v0, "mDataStateDual ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2791
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 2792
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2794
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2795
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2796
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2805
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2807
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2809
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2811
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2812
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2813
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2814
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2815
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2818
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2821
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2822
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2823
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2826
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2829
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2830
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2833
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2834
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    return-void

    .line 2704
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2690
    const/4 v0, 0x0

    .line 2692
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(III)I
    .locals 4
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 3852
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataSignalIconId: mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inetCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3858
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3877
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3879
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3860
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3861
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3863
    .end local v0    # "iconId":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_1

    .line 3864
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3866
    .end local v0    # "iconId":I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3869
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3871
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3872
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3874
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3875
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3858
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalLevel(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    const/4 v0, 0x0

    .line 2699
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfSim()I
    .locals 3

    .prologue
    .line 3557
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3558
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfActiveSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3562
    :goto_0
    return v0

    .line 3561
    :cond_0
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "getNumberOfActiveSim:1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(II)[I
    .locals 4
    .param p1, "inetCondition"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1977
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneSignalIconList: mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inetCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 2001
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2003
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 1984
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1985
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1987
    .end local v0    # "iconList":[I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_1

    .line 1988
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1990
    .end local v0    # "iconList":[I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1993
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1995
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1996
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1998
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1999
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 1982
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getReadySimCount()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 3773
    const/4 v2, 0x0

    .line 3774
    .local v2, "count":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mIsDGGDuos:Z

    if-eqz v7, :cond_4

    .line 3775
    :cond_0
    new-array v3, v10, [I

    .line 3776
    .local v3, "phone_on":[I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v6

    .line 3777
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    aput v7, v3, v9

    .line 3778
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9,9"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3779
    .local v1, "cardStatusTemp":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3780
    .local v0, "cardStatusSlot":[Ljava/lang/String;
    array-length v7, v0

    if-eq v7, v10, :cond_1

    .line 3796
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    :goto_0
    return v6

    .line 3782
    .restart local v0    # "cardStatusSlot":[Ljava/lang/String;
    .restart local v1    # "cardStatusTemp":Ljava/lang/String;
    .restart local v3    # "phone_on":[I
    :cond_1
    const/4 v5, 0x0

    .local v5, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 3783
    const-string v6, "3"

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget v6, v3, v5

    if-ne v6, v9, :cond_2

    .line 3784
    add-int/lit8 v2, v2, 0x1

    .line 3782
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v6, v2

    .line 3787
    goto :goto_0

    .line 3789
    .end local v0    # "cardStatusSlot":[Ljava/lang/String;
    .end local v1    # "cardStatusTemp":Ljava/lang/String;
    .end local v3    # "phone_on":[I
    .end local v5    # "sub":I
    :cond_4
    const-string v4, "NOT_READY"

    .line 3790
    .local v4, "simState":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "sub":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 3791
    const-string v6, "gsm.sim.state"

    const-string v7, "NOT_READY"

    invoke-static {v6, v5, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3792
    const-string v6, "READY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3793
    add-int/lit8 v2, v2, 0x1

    .line 3790
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v6, v2

    .line 3796
    goto :goto_0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 2683
    const/4 v0, 0x0

    .line 2685
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1791
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 1794
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1795
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 1796
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1797
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1803
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFlightModePossible()Z
    .locals 5

    .prologue
    .line 3425
    const/4 v0, 0x0

    .line 3426
    .local v0, "flightModePossible":Z
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v2, :cond_2

    .line 3427
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 3429
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3431
    :cond_0
    const/4 v0, 0x1

    .line 3427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3433
    :cond_1
    const/4 v0, 0x0

    .line 3434
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flightModePossible=false : mSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":mServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simHasService()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isEmergencyOnly()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 653
    .local v10, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 657
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 800
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 659
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 661
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 662
    const/16 v18, 0x0

    .local v18, "sub":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsCmccCard:[Z

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isCmccCard(I)Z

    move-result v5

    aput-boolean v5, v4, v18

    .line 662
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 668
    .end local v18    # "sub":I
    :cond_3
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 669
    const-string v4, "subscription"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 670
    .local v20, "subId":J
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SPN update on subId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 672
    .local v13, "phoneId":Ljava/lang/Integer;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v4, :cond_4

    .line 673
    const-string v4, "phone"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 677
    :goto_2
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received SPN update on phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 679
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "SPN_STRINGS_UPDATED broadcast with phone Id 1"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 675
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    .line 682
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "showSpn"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "showPlmn"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    aput-boolean v6, v4, v5

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v5, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v7, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v4, v8

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 690
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 691
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 692
    .end local v13    # "phoneId":Ljava/lang/Integer;
    .end local v20    # "subId":J
    :cond_6
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 694
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 695
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 696
    :cond_8
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 697
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 698
    :cond_9
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateAirplaneMode()V

    .line 700
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v12, v4, :cond_a

    .line 701
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 702
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 704
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 700
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 707
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 708
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 709
    .end local v12    # "i":I
    :cond_b
    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 712
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 713
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 714
    :cond_d
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 715
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->unregisterPhoneStateListener()V

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 718
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 720
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 721
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    .line 724
    :cond_e
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Sim Slot value after intent change  : : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 729
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v12, v4, :cond_1

    .line 730
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 731
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 732
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V

    .line 733
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 734
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 729
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 736
    .end local v12    # "i":I
    :cond_f
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateNoSIMNotification()V

    goto/16 :goto_0

    .line 740
    :cond_10
    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 741
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v16

    .line 742
    .local v16, "simId1":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : simId1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlot(I)V

    .line 745
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 748
    const/16 v18, 0x0

    .restart local v18    # "sub":I
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 749
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 748
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 751
    .end local v16    # "simId1":I
    .end local v18    # "sub":I
    :cond_11
    const-string v4, "android.settings.SIMCARD_MGT"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 752
    const-string v4, "simcard_sim_id"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 753
    .local v15, "simId":I
    const-string v4, "simcard_sim_icon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 754
    .local v14, "simIconIndex":Ljava/lang/String;
    const-string v4, "simcard_sim_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 755
    .local v17, "simName":Ljava/lang/String;
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_SIM_MGT_CHANGED :  simId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simIconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", (mCurrentSimSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDualSimUiBySettings(ILjava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    if-eq v4, v15, :cond_12

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v4, :cond_1

    .line 760
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0

    .line 762
    .end local v14    # "simIconIndex":Ljava/lang/String;
    .end local v15    # "simId":I
    .end local v17    # "simName":Ljava/lang/String;
    :cond_13
    const-string v4, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 764
    const-string v4, "simcard_sim_id"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 765
    .restart local v15    # "simId":I
    const-string v4, "simcard_sim_activate"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 767
    .local v11, "activate":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_SIM_MGT_ACTIVATED_CHANGED : simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",activate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 769
    const/4 v4, 0x1

    if-ne v11, v4, :cond_14

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v5, v4, v15

    .line 782
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCurrentSimSlotIcon()V

    .line 785
    const/16 v18, 0x0

    .restart local v18    # "sub":I
    :goto_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_1

    .line 786
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    .line 785
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 790
    .end local v11    # "activate":I
    .end local v15    # "simId":I
    .end local v18    # "sub":I
    :cond_15
    const-string v4, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 791
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "START_NETWORK_BOOSTER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 794
    :cond_16
    const-string v4, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    const-string v4, "StatusBar.MSimNetworkController"

    const-string v5, "STOP_NETWORK_BOOSTER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V
    .locals 13
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x1

    .line 479
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;)V

    .line 482
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAppopsStrictEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 489
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_3

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    .line 506
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 508
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, p2

    move-object v0, p1

    move v7, p2

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 543
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 546
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster, phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimPhoneSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataSignalIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimDataTypeIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMSimMobileActivityIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNoMSimIconId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v2, v2, p2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setSimIcon(ZI)V

    .line 560
    return-void

    :cond_2
    move v0, v12

    .line 482
    goto/16 :goto_0

    .line 493
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto/16 :goto_1

    .line 508
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    goto/16 :goto_2

    .line 519
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_6

    move v3, v1

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v4, v0, p2

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v7, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v10, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v11, v0, p2

    move-object v2, p1

    move v9, p2

    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    .line 529
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_1

    .line 530
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v7, v0, 0x2

    .line 531
    .local v7, "opPhoneId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimEnabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_8

    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v2, v0, v7

    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v3, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v4, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v8, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v9, v0, v7

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_3

    .end local v7    # "opPhoneId":I
    :cond_6
    move v3, v12

    .line 519
    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v4, v0, p2

    goto :goto_5

    .restart local v7    # "opPhoneId":I
    :cond_8
    move v1, v12

    .line 531
    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v2, v0, v7

    goto :goto_7
.end method

.method protected refreshViews(I)V
    .locals 18
    .param p1, "phoneId"    # I

    .prologue
    .line 2205
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 2207
    .local v6, "context":Landroid/content/Context;
    const-string v5, ""

    .line 2208
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v11, ""

    .line 2209
    .local v11, "mobileLabel":Ljava/lang/String;
    const-string v13, ""

    .line 2211
    .local v13, "wifiLabel":Ljava/lang/String;
    const-string v14, "StatusBar.MSimNetworkController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshViews phoneId ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mMSimDataConnected ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, p1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mMSimDataActivity ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v7

    .line 2214
    .local v7, "dataSub":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v14, :cond_6

    .line 2215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    const/16 v16, 0x0

    aput v16, v15, p1

    aput v16, v14, p1

    .line 2216
    const-string v11, ""

    .line 2217
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2286
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v14, :cond_a

    .line 2287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-nez v14, :cond_9

    .line 2288
    const v14, 0x7f0d0295

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2291
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    .line 2317
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    aput v15, v14, p1

    .line 2318
    move-object v5, v13

    .line 2319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    aput v15, v14, p1

    .line 2320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    aput-object v15, v14, p1

    .line 2330
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v14, :cond_0

    .line 2331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v15, 0x7f0d01f7

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    aput v15, v14, p1

    .line 2333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0258

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, p1

    .line 2337
    const-string v14, "StatusBar.MSimNetworkController"

    const-string v15, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    aput v15, v14, p1

    .line 2339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2345
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    const/16 v15, 0x9

    if-ne v14, v15, :cond_c

    const/4 v8, 0x1

    .line 2347
    .local v8, "ethernetConnected":Z
    :goto_3
    if-eqz v8, :cond_1

    .line 2349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2352
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, p1

    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->hasService(I)Z

    move-result v14

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v14

    if-nez v14, :cond_f

    .line 2358
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0259

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, p1

    .line 2360
    const v14, 0x7f020559

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneIconId:I

    .line 2361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v16, p1

    aput v17, v15, p1

    aput v17, v14, p1

    .line 2363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2364
    move/from16 v0, p1

    if-ne v0, v7, :cond_3

    .line 2365
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2370
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v14, :cond_d

    .line 2372
    const-string v11, ""

    .line 2386
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2387
    move/from16 v0, p1

    if-ne v0, v7, :cond_4

    .line 2388
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2391
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2436
    :cond_5
    :goto_5
    const-string v15, "StatusBar.MSimNetworkController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshViews connected={"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-eqz v14, :cond_12

    const-string v14, " wifi"

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v14, v14, p1

    if-eqz v14, :cond_13

    const-string v14, " data"

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " } level="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v14, v14, p1

    if-nez v14, :cond_14

    const-string v14, "??"

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimcombinedSignalIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimcombinedActivityIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mAirplaneMode="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataActivity="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataDirectionIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataSignalIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimDataTypeIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mNoMSimIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mMSimMobileActivityIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mWifiIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " mRoamingIconId=0x "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    move-object/from16 v16, v0

    aget v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 2472
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_9

    .line 2243
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v8    # "ethernetConnected":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v14, v14, p1

    if-eqz v14, :cond_8

    .line 2244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2246
    move-object v5, v11

    .line 2247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v15, v15, p1

    aput-object v15, v14, p1

    .line 2253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aget v14, v14, p1

    packed-switch v14, :pswitch_data_0

    .line 2271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v14, v14, p1

    if-eqz v14, :cond_7

    .line 2272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f020567

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2255
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f020563

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2258
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f020570

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2261
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const v15, 0x7f020565

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2274
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2280
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    .line 2282
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedActivityIconId:[I

    const/4 v15, 0x0

    aput v15, v14, p1

    goto/16 :goto_0

    .line 2294
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2300
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    packed-switch v14, :pswitch_data_1

    goto/16 :goto_1

    .line 2311
    :pswitch_3
    const v14, 0x7f020567

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2302
    :pswitch_4
    const v14, 0x7f020563

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2305
    :pswitch_5
    const v14, 0x7f020570

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2308
    :pswitch_6
    const v14, 0x7f020565

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2322
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_b

    .line 2323
    const-string v13, ""

    goto/16 :goto_2

    .line 2325
    :cond_b
    const v14, 0x7f0d0294

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 2345
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 2374
    .restart local v8    # "ethernetConnected":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_e

    .line 2376
    const-string v13, ""

    .line 2382
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    aput-object v15, v14, p1

    .line 2384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    goto/16 :goto_4

    .line 2378
    :cond_e
    const v14, 0x7f0d0294

    invoke-virtual {v6, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2380
    move-object v5, v13

    goto :goto_a

    .line 2393
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataConnected:[Z

    aget-boolean v14, v14, p1

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiConnected:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxConnected:Z

    if-nez v14, :cond_5

    if-nez v8, :cond_5

    .line 2403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    aget v14, v14, p1

    :goto_b
    aput v14, v15, p1

    .line 2405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v14, v14, p1

    :goto_c
    aput-object v14, v15, p1

    .line 2409
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getRoamingIcon(I)V

    goto/16 :goto_5

    .line 2403
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    goto :goto_b

    .line 2405
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_c

    .line 2436
    :cond_12
    const-string v14, ""

    goto/16 :goto_6

    :cond_13
    const-string v14, ""

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 2475
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    aget-boolean v15, v15, p1

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconVisible:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconVisible:Z

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    if-ne v14, v15, :cond_17

    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mIsCGGDuosCTC:Z

    if-eqz v14, :cond_18

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const v15, 0x7f0206b7

    if-eq v14, v15, :cond_17

    :cond_16
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSIMOFFOfSlot(I)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataSignalIconId:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    const v15, 0x7f0206b7

    if-ne v14, v15, :cond_18

    .line 2506
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;

    .line 2508
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;I)V

    goto :goto_d

    .line 2512
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimSignalCluster;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-eq v14, v15, :cond_19

    .line 2513
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastAirplaneMode:Z

    .line 2517
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1a

    .line 2518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastPhoneSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2522
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1b

    .line 2523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataDirectionIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataDirectionIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2526
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1c

    .line 2527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastSimIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNoMSimIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2531
    :cond_1c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    if-eq v14, v15, :cond_1d

    .line 2532
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiIconId:I

    .line 2536
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1e

    .line 2537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastMobileActivityIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileActivityIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2540
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_1f

    .line 2541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastRoamingIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mRoamingIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2544
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_20

    .line 2545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimDataServiceState:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2548
    :cond_20
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    if-eq v14, v15, :cond_21

    .line 2549
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 2553
    :cond_21
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    if-eq v14, v15, :cond_22

    .line 2554
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastWimaxIconId:I

    .line 2557
    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_23

    .line 2559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastCombinedSignalIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimcombinedSignalIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2563
    :cond_23
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    if-eq v14, v15, :cond_24

    .line 2564
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 2567
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eq v14, v15, :cond_25

    .line 2568
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 2571
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eq v14, v15, :cond_26

    .line 2572
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNwboosterRilEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 2575
    :cond_26
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    if-eq v14, v15, :cond_27

    .line 2576
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataState:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataState:I

    .line 2579
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    if-eq v14, v15, :cond_28

    .line 2580
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 2585
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_29

    .line 2586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimLastDataTypeIconId:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataTypeIconId:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2589
    :cond_29
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    if-eq v14, v15, :cond_2a

    .line 2590
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimIconId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimIconId:I

    .line 2593
    :cond_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    aget-boolean v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v15, v15, p1

    if-eq v14, v15, :cond_2b

    .line 2594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSimFocus:[Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSimFocus:[Z

    aget-boolean v15, v15, p1

    aput-boolean v15, v14, p1

    .line 2597
    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_2c

    .line 2598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastDataStateDual:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mDataStateDual:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2600
    :cond_2c
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v14, :cond_2d

    .line 2601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    aget v14, v14, p1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v15, v15, p1

    if-eq v14, v15, :cond_2d

    .line 2602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastSeperatedDataState:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSeperatedDataState:[I

    aget v15, v15, p1

    aput v15, v14, p1

    .line 2622
    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2e

    .line 2623
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 2624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2625
    .local v2, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e
    if-ge v9, v2, :cond_2e

    .line 2626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2627
    .local v12, "v":Landroid/widget/TextView;
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2625
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 2632
    .end local v2    # "N":I
    .end local v9    # "i":I
    .end local v12    # "v":Landroid/widget/TextView;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2633
    .restart local v2    # "N":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_f
    if-ge v9, v2, :cond_30

    .line 2634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2635
    .restart local v12    # "v":Landroid/widget/TextView;
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2636
    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 2637
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2633
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 2639
    :cond_2f
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_10

    .line 2644
    .end local v12    # "v":Landroid/widget/TextView;
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 2646
    sget-boolean v14, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v14, :cond_32

    .line 2647
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getMobileLabelForCHN()Ljava/lang/String;

    move-result-object v11

    .line 2667
    :goto_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2668
    const/4 v9, 0x0

    :goto_12
    if-ge v9, v2, :cond_37

    .line 2669
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2670
    .restart local v12    # "v":Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2671
    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 2672
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2668
    :cond_31
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 2649
    .end local v12    # "v":Landroid/widget/TextView;
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mAirplaneMode:Z

    if-nez v14, :cond_36

    .line 2650
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_33

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_33

    .line 2652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    goto :goto_11

    .line 2653
    :cond_33
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_34

    .line 2654
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v11, v14, v15

    goto :goto_11

    .line 2655
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    sget-object v15, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v14, v15, :cond_35

    .line 2656
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    goto :goto_11

    .line 2658
    :cond_35
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_11

    .line 2662
    :cond_36
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_11

    .line 2678
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->setCarrierText()V

    .line 2679
    return-void

    .line 2253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2300
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x1e1

    const/4 v7, 0x0

    .line 407
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 411
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    .line 412
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    .line 413
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhoneStateListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    new-array v4, v4, [Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhoneCount:I

    if-ge v0, v4, :cond_3

    .line 416
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 417
    .local v1, "subIdtemp":[J
    if-eqz v1, :cond_0

    .line 418
    aget-wide v2, v1, v7

    .line 419
    .local v2, "subId":J
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhoneStateListener subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhoneStateListener slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v0

    .line 426
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 415
    .end local v2    # "subId":J
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    .restart local v2    # "subId":J
    :cond_1
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 434
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mSubIdPhoneIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(JI)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v0

    .line 436
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 443
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    goto :goto_1

    .line 449
    .end local v1    # "subIdtemp":[J
    .end local v2    # "subId":J
    :cond_3
    return-void
.end method

.method public setCurrentSimSlot(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 3583
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mCurrentSimSlot:I

    .line 3584
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2157
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2162
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2165
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    .line 2166
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnected:Z

    if-eqz v4, :cond_1

    .line 2167
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2168
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2174
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2177
    .local v1, "connectionStatus":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: networkInfo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConnectivity: connectionStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v6, 0x7

    if-ne v4, v6, :cond_2

    .line 2186
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    .line 2192
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWimaxIcons()V

    .line 2193
    const/4 v3, 0x0

    .local v3, "sub":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2195
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->getUpdateDataNetType(I)V

    .line 2196
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 2197
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 2193
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v1    # "connectionStatus":I
    .end local v3    # "sub":I
    :cond_0
    move v4, v5

    .line 2165
    goto :goto_0

    .line 2170
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkType:I

    .line 2171
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 2188
    .restart local v1    # "connectionStatus":I
    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2

    .line 2199
    .restart local v3    # "sub":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateWifiIcons()V

    .line 2200
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1939
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1943
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1946
    .local v0, "something":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1947
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v5, :cond_0

    if-ne p3, v5, :cond_0

    .line 1948
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1949
    const/4 p1, 0x0

    .line 1954
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1955
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    const/4 v0, 0x1

    .line 1958
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1959
    if-eqz v0, :cond_2

    .line 1960
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    const/4 v0, 0x1

    .line 1965
    :cond_3
    if-eqz v0, :cond_4

    .line 1966
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p5

    .line 1971
    :goto_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMSimNetworkName[phoneId] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v4, v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    return-void

    .line 1968
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p5

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1038
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "slot"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1043
    .local v1, "phoneId":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for phoneId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    if-ltz v1, :cond_1

    .line 1045
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1069
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v1

    if-eq v2, v4, :cond_0

    .line 1070
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v4, v1

    .line 1071
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V

    .line 1072
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V

    .line 1076
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V

    .line 1077
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->updateSimIcon(I)V

    .line 1079
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    return-void

    .line 1048
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "IMSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1051
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1053
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1054
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1057
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1059
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1060
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1063
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 1066
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method
