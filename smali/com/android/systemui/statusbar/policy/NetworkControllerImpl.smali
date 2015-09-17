.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    }
.end annotation


# static fields
.field public static final ACTION_AIRPLANE_OFF:Ljava/lang/String; = "com.android.systemui.action.airplane_off"

.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = false

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field static final DEBUG:Z = true

.field private static final EVENT_CHANGE_FAKE_CALL_STATE:I = 0x47

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static final EXTRA_IS_VALID_PLMN:Ljava/lang/String; = "isValidPlmn"

.field protected static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final MCC_BRAZIL:Ljava/lang/String; = "724"

.field static final REQ_AIRPLANE_NOTIFICATION:I = 0x333

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field private static final ZVV_CARRIER_NAME:Ljava/lang/String; = "VIVO"

.field private static final ZVV_CARRIER_NAME_LENGTH:I = 0x4

.field protected static mAppopsStrictEnabled:Z

.field private static sCodeToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherDisconnected:Z

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field mBootDataSvcAcquired:Z

.field mBootVoiceSvcAcquired:Z

.field private mCAIndicator:Z

.field private mCarrierText:Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataRoamingTypeForVZW:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field protected mDataTypeBrand:Ljava/lang/String;

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeTMOstyle:Z

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoQSDataTypeIconId:I

.field private mDemoWifiLevel:I

.field mEmergencyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field private mEmgcCallState:Z

.field private mFakeSignalStrength:I

.field private final mHandler:Landroid/os/Handler;

.field protected mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field protected mInetCondition:I

.field mIsCmccCard:Z

.field protected mIsWimaxEnabled:Z

.field private mKeepFakeDuration:I

.field private mKeepFakeState:Z

.field protected mLastAirplaneMode:Z

.field mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field protected mLastConnectedNetworkType:I

.field mLastDataDirectionIconId:I

.field mLastDataSignalIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field protected mLastInetCondition:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field mLastMobileDataEnabled:Z

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastPhoneSignalIconId:I

.field mLastPhoneState:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field mLastSglteMode:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field private mLastSpn:Ljava/lang/String;

.field mLastVoiceRadioState:I

.field mLastVoiceRegState:I

.field mLastWifiActivityIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field protected mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field private final mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

.field mMobileDataEnabled:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNoSim:Z

.field mNoSimIconId:I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field protected mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSglteMode:I

.field mShow4GforLTE:Z

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field private mShowLAC:Z

.field mShowPhoneRSSIForData:Z

.field mShowRsrpSignalLevelforLTE:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field protected mVoiceCapable:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCarrierIcon:[[I

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field protected mWimaxIdle:Z

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 3717
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 308
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 120
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    .line 121
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 122
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    .line 123
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    .line 126
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v3, v3, v6

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 143
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 144
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 145
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 146
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 147
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 148
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    .line 150
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 164
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 165
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 166
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move-object v3, v4

    .line 167
    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    .line 170
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 171
    const v3, 0x10808ef

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 173
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 176
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 177
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 178
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 179
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    .line 180
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 181
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    .line 182
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 183
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 184
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 188
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 189
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 191
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 193
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 194
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 197
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 198
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 200
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 201
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 203
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataSignalIconId:I

    .line 204
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSglteMode:I

    .line 205
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    .line 215
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 216
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    .line 217
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    .line 218
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    .line 219
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    .line 220
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    .line 221
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    .line 222
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    .line 226
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    .line 227
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    .line 231
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    .line 233
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    .line 234
    const/16 v3, 0x1b58

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 246
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 247
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 248
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 249
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 250
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 251
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 252
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 256
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 259
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 267
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    .line 272
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootVoiceSvcAcquired:Z

    .line 273
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBootDataSvcAcquired:Z

    .line 982
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3680
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_UNKNOWN:I

    .line 3681
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_FALSE:I

    .line 3682
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_TRUE:I

    .line 3702
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    .line 3703
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 3707
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    .line 3711
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 3765
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    .line 3767
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 3781
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    .line 4076
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    .line 4140
    const v3, 0x7f0203eb

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4141
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 4142
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 4143
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 4144
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 4145
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 4231
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 4232
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    .line 4233
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    .line 309
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 313
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 315
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 317
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 319
    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 320
    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 321
    const v3, 0x112004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 323
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 325
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 333
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    .line 335
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d01f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 336
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x104037c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->createWifiHandler()V

    .line 347
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v3, :cond_1

    .line 370
    :cond_0
    const-string v3, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    :cond_1
    const-string v3, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v3, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 384
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v3, :cond_3

    .line 385
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    :cond_3
    const-string v3, "USA"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    const-string v3, "com.android.systemui.action.airplane_off"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    :cond_4
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 398
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 399
    new-instance v3, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    .line 400
    new-instance v3, Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MobileDataController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    .line 401
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setCallback(Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;)V

    .line 409
    const v3, 0x1120045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarNetworkSettings()V

    .line 421
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_6

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    .line 423
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 425
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    const/4 v7, -0x2

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 430
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 434
    return-void

    :cond_6
    move v3, v6

    .line 421
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2010(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    return p1
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v4, 0x7f02040b

    const/4 v3, 0x2

    .line 4276
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyCHN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_0

    .line 4279
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 4281
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 4282
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4286
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 4292
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",make Data type icon visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 4296
    :cond_2
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4384
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileActivityIcon(I)V

    .line 4385
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiActivityIcon(I)V

    .line 4386
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setRoamingIcon(I)V

    .line 4387
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 4388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setBtTetherState(Z)V

    .line 4389
    return-void
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4379
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4381
    return-void
.end method

.method private applyPermanentDataIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4300
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyPermanentDataIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4303
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_0

    .line 4304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    .line 4306
    :cond_0
    return-void
.end method

.method private applySGLTE(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 18
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4311
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "applyForSGLTE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4315
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4316
    .local v15, "dataTypeIcon":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    .line 4317
    .local v17, "mobileActivityIconId":I
    const/16 v16, 0x1

    .line 4318
    .local v16, "mShowDataIcon":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    .line 4319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 4324
    .local v6, "csState":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSglteMode()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_5

    .line 4325
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_3

    .line 4326
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4327
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4328
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4329
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DataState is unknown."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v2, 0x7f02039c

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v2, 0x7f02039d

    if-ne v1, v2, :cond_1

    .line 4341
    :cond_0
    const/16 v16, 0x0

    .line 4342
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: mShowDataIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    :cond_1
    :goto_2
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: set mShowPhoneRSSIForData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_3
    if-eqz v16, :cond_b

    move v10, v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    const v1, 0x7f0203be

    if-ne v15, v1, :cond_c

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v14

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 4376
    return-void

    .line 4321
    .end local v6    # "csState":I
    :cond_2
    const/4 v6, 0x3

    .restart local v6    # "csState":I
    goto/16 :goto_0

    .line 4330
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-ne v6, v1, :cond_4

    .line 4331
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4332
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4333
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4334
    const v1, 0x7f0206b7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4335
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DataState is DATA_DISCONNECTED."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4337
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4338
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    goto/16 :goto_1

    .line 4344
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 4345
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4346
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4347
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4348
    if-eqz v15, :cond_6

    .line 4349
    const v15, 0x7f02039c

    .line 4351
    :cond_6
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: RssiDisplayNum = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4352
    :cond_7
    const/4 v1, 0x1

    if-eq v6, v1, :cond_8

    const/4 v1, 0x3

    if-ne v6, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    if-nez v1, :cond_9

    .line 4353
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4354
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4355
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4356
    const/4 v15, 0x0

    .line 4357
    const/16 v17, 0x0

    .line 4358
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: No service & RssiDisplayNum = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4360
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4361
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4362
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4363
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: roam"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4367
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_3

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5
.end method

.method private applyTMO(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4264
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyTMO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-nez v0, :cond_2

    .line 4270
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 4271
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "No Data Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    :cond_2
    return-void
.end method

.method private applyVZW(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const/4 v2, 0x1

    .line 4238
    const-string v1, "StatusBar.NetworkController"

    const-string v3, "applyVZW"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4241
    const/4 v0, -0x1

    .line 4242
    .local v0, "currentPhoneType":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 4243
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 4247
    :cond_0
    const-string v1, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyVZW : mDataTypeDisabledIconId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsSVDO:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v0, v2, :cond_1

    .line 4251
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v3, 0x7f02038f

    if-ne v1, v3, :cond_1

    .line 4252
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v1, :cond_4

    const v1, 0x7f02038e

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4256
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v1, :cond_3

    .line 4257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v1, :cond_5

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    .line 4261
    :cond_3
    return-void

    .line 4252
    :cond_4
    const v1, 0x7f020391

    goto :goto_0

    .line 4257
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkCarrierWifiIcon()V
    .locals 6

    .prologue
    .line 2466
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2468
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 2469
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 2470
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 2484
    .local v1, "networkid":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2485
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierWifiIcon : getSSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getNetworkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isLGTWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2488
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getLGTWifiIcon(I)[[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    .line 2497
    .end local v1    # "networkid":I
    .end local v2    # "ssid":Ljava/lang/String;
    :goto_0
    return-void

    .line 2493
    :cond_0
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "checkCarrierWifiIcon : mWifiManager.getConnectionInfo() == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_1
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    goto :goto_0
.end method

.method private final displaySignalStrength(I)V
    .locals 7
    .param p1, "signalStrength"    # I

    .prologue
    const v6, 0x7f0203a7

    const v5, 0x7f020389

    .line 1542
    const/4 v0, -0x1

    .line 1545
    .local v0, "iconLevel":I
    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1547
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1548
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    .line 1551
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1556
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1558
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1559
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1588
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1589
    .local v1, "iconList":[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1591
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1592
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1594
    return-void

    .line 1552
    .end local v1    # "iconList":[I
    :cond_2
    if-gez v0, :cond_0

    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_0

    .line 1561
    :cond_3
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_1

    .line 1566
    :cond_4
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_6

    .line 1569
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1574
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1576
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1570
    :cond_6
    if-gez v0, :cond_5

    .line 1571
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_2

    .line 1577
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1580
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1584
    :goto_3
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1582
    :cond_8
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_3
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 515
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 516
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    .line 519
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 521
    .local v1, "mccMnc":I
    if-lez v1, :cond_0

    .line 522
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v1    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 525
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    .prologue
    const v3, 0x7f020389

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 4431
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 4432
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 4433
    .local v0, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 4435
    .local v1, "iconMode":I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4443
    if-ne v0, v7, :cond_1

    .line 4462
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v2

    .line 4440
    .restart local v0    # "iconIndex":I
    .restart local v1    # "iconMode":I
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4446
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    .line 4447
    packed-switch v1, :pswitch_data_1

    .line 4453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    move v2, v3

    .line 4455
    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 4449
    goto :goto_0

    .line 4451
    :pswitch_2
    const v2, 0x7f020460

    goto :goto_0

    .line 4437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4447
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 1532
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return v0

    .line 1534
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    if-nez v0, :cond_1

    .line 1535
    const/4 v0, 0x1

    goto :goto_0

    .line 1537
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDataServiceState()I
    .locals 7

    .prologue
    .line 3871
    const/4 v0, 0x1

    .line 3872
    .local v0, "dataServiceState":I
    const/4 v3, 0x0

    .line 3875
    .local v3, "getDataState":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataRegState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3876
    if-eqz v3, :cond_0

    .line 3877
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3879
    :cond_0
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState: dataServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 3889
    .end local v0    # "dataServiceState":I
    .local v1, "dataServiceState":I
    :goto_0
    return v1

    .line 3881
    .end local v1    # "dataServiceState":I
    .restart local v0    # "dataServiceState":I
    :catch_0
    move-exception v2

    .line 3882
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3883
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 3884
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "dataServiceState":I
    :catch_1
    move-exception v2

    .line 3885
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3886
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 3887
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "dataServiceState":I
    :catch_2
    move-exception v2

    .line 3888
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3889
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0
.end method

.method private getDataTypeIconIdForSPR()I
    .locals 4

    .prologue
    .line 5840
    const/4 v0, 0x0

    .line 5841
    .local v0, "dataType":I
    const/4 v1, 0x0

    .line 5843
    .local v1, "dormantDataType":I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5845
    :cond_0
    const v0, 0x7f02039f

    .line 5846
    const v1, 0x7f02039e

    .line 5855
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .end local v1    # "dormantDataType":I
    :goto_1
    return v1

    .line 5847
    .restart local v1    # "dormantDataType":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 5848
    const v0, 0x7f0203ac

    .line 5849
    const v1, 0x7f0203ab

    goto :goto_0

    .line 5851
    :cond_2
    const v0, 0x7f02037b

    .line 5852
    const v1, 0x7f020378

    goto :goto_0

    :cond_3
    move v1, v0

    .line 5855
    goto :goto_1
.end method

.method private getKTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 2558
    const v0, 0x7f0203fd

    .line 2560
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 2577
    :goto_0
    return v0

    .line 2562
    :pswitch_0
    const v0, 0x7f0203fb

    .line 2563
    goto :goto_0

    .line 2565
    :pswitch_1
    const v0, 0x7f0203fe

    .line 2566
    goto :goto_0

    .line 2568
    :pswitch_2
    const v0, 0x7f0203fc

    .line 2569
    goto :goto_0

    .line 2571
    :pswitch_3
    const v0, 0x7f0203fd

    .line 2572
    goto :goto_0

    .line 2560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 2530
    const v0, 0x7f020580

    .line 2532
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 2547
    :goto_0
    return v0

    .line 2534
    :pswitch_0
    const v0, 0x7f02057e

    .line 2535
    goto :goto_0

    .line 2537
    :pswitch_1
    const v0, 0x7f02057d

    .line 2538
    goto :goto_0

    .line 2540
    :pswitch_2
    const v0, 0x7f02057f

    .line 2541
    goto :goto_0

    .line 2543
    :pswitch_3
    const v0, 0x7f020580

    goto :goto_0

    .line 2532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6
    .param p1, "networkid"    # I

    .prologue
    .line 2511
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2513
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 2514
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2515
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 2516
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-nez v3, :cond_0

    .line 2520
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 2526
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2
    .param p1, "iconLevel"    # I

    .prologue
    .line 3852
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3863
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3865
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3854
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3855
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3857
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3858
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3860
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3861
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3852
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getRoamingIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 4396
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4397
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "NoService, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    :goto_0
    return-void

    .line 4398
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 4400
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4402
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4404
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4405
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4408
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_7

    .line 4415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isVoiceRatCDMA()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4416
    const v0, 0x7f020389

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4420
    :goto_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhone.isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4418
    :cond_6
    const v0, 0x7f0203a7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_1

    .line 4423
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4424
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Nothing, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 3

    .prologue
    .line 4488
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4491
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): mDataTypeBrand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateORGDataNetType()V

    .line 4583
    :goto_0
    return-void

    .line 4495
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYBDataNetType()V

    goto :goto_0

    .line 4498
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYADataNetType()V

    goto :goto_0

    .line 4501
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYCDataNetType()V

    goto :goto_0

    .line 4504
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOLBDataNetType()V

    goto :goto_0

    .line 4507
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4508
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVD2DataNetType()V

    goto :goto_0

    .line 4510
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVIDDataNetType()V

    goto :goto_0

    .line 4513
    :cond_6
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4515
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTE4GICONDataNetType()V

    goto :goto_0

    .line 4517
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTMHDataNetType()V

    goto :goto_0

    .line 4520
    :cond_9
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4521
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updatePCTDataNetType()V

    goto/16 :goto_0

    .line 4523
    :cond_a
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4525
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->update4GLTEICONDataNetType()V

    goto/16 :goto_0

    .line 4527
    :cond_c
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CGU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4534
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 4536
    :cond_e
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTFGDataNetType()V

    goto/16 :goto_0

    .line 4539
    :cond_f
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSFRDataNetType()V

    goto/16 :goto_0

    .line 4542
    :cond_10
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 4548
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4581
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    goto/16 :goto_0

    .line 4550
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    goto/16 :goto_0

    .line 4553
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateATTDataNetType()V

    goto/16 :goto_0

    .line 4556
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTMODataNetType()V

    goto/16 :goto_0

    .line 4559
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVZWDataNetType()V

    goto/16 :goto_0

    .line 4562
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 4566
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 4569
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCUDataNetType()V

    goto/16 :goto_0

    .line 4573
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZVVDataNetType()V

    .line 4574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZVVLACInfo()V

    goto/16 :goto_0

    .line 4577
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZTMDataNetType()V

    goto/16 :goto_0

    .line 4548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f020389

    const/4 v1, 0x1

    .line 4466
    if-ne p1, v1, :cond_1

    .line 4467
    const/4 v0, 0x0

    .line 4481
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4469
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 4473
    :pswitch_2
    const v0, 0x7f020460

    goto :goto_0

    .line 4475
    :pswitch_3
    if-nez p2, :cond_2

    .line 4476
    const v0, 0x7f02038b

    goto :goto_0

    .line 4477
    :cond_2
    if-ne p2, v1, :cond_0

    .line 4478
    const v0, 0x7f020461

    goto :goto_0

    .line 4469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1329
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1335
    :pswitch_0
    const/4 v0, 0x1

    .line 1338
    :cond_0
    :pswitch_1
    return v0

    .line 1330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2451
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2452
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2462
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2456
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2457
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2458
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2459
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 2462
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private inetConditionForNetwork(I)I
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1804
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initializeCodeToState()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-object v0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

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

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 3686
    const/4 v0, 0x1

    .line 3688
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCmccCard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6122
    const-string v1, ""

    .line 6123
    .local v1, "simNum":Ljava/lang/String;
    const-string v0, ""

    .line 6125
    .local v0, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    .line 6138
    :cond_0
    :goto_0
    return v2

    .line 6128
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 6130
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 6131
    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6134
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

    .line 6135
    :cond_3
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "isCmccCard "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isEurTMO()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6155
    const-string v1, "DTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6188
    :cond_0
    :goto_0
    return v0

    .line 6157
    :cond_1
    const-string v1, "DTR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6159
    const-string v1, "DDE"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6161
    const-string v1, "COA"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6163
    const-string v1, "COS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6165
    const-string v1, "CRO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6167
    const-string v1, "MBM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6169
    const-string v1, "MAX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6171
    const-string v1, "TRG"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6173
    const-string v1, "TMH"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6175
    const-string v1, "TMS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6177
    const-string v1, "TMT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6179
    const-string v1, "TMZ"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6181
    const-string v1, "TNL"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6183
    const-string v1, "TPL"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6185
    const-string v1, "TTR"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6188
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isKTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2551
    const-string v1, "ollehWiFi"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ollehWiFi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2554
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2500
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2501
    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2507
    :cond_0
    :goto_0
    return v0

    .line 2504
    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2507
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQsTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 698
    const v0, 0x7f020153

    if-eq v0, p1, :cond_0

    const v0, 0x7f020143

    if-eq v0, p1, :cond_0

    const v0, 0x7f020146

    if-eq v0, p1, :cond_0

    const v0, 0x7f020148

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 1

    .prologue
    .line 2075
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v0

    .line 2078
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSglteMode()Z
    .locals 2

    .prologue
    .line 6143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    .line 6144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    .line 6145
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6146
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6147
    const/4 v0, 0x1

    .line 6151
    :goto_0
    return v0

    .line 6150
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isSglteMode is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6151
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 693
    const v0, 0x7f0203bd

    if-eq v0, p1, :cond_0

    const v0, 0x7f0203b3

    if-eq v0, p1, :cond_0

    const v0, 0x7f0203b5

    if-eq v0, p1, :cond_0

    const v0, 0x7f0203b6

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceRatCDMA()Z
    .locals 2

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 1288
    .local v0, "voiceRat":I
    packed-switch v0, :pswitch_data_0

    .line 1298
    .end local v0    # "voiceRat":I
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1295
    .restart local v0    # "voiceRat":I
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1288
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWCDMA()Z
    .locals 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 438
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataEnabled(Z)V

    goto :goto_0

    .line 440
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    :cond_0
    return-void
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 3894
    packed-switch p1, :pswitch_data_0

    .line 3931
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3896
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3898
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 3900
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 3902
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 3904
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 3906
    :pswitch_6
    const/16 v0, 0xa

    goto :goto_0

    .line 3909
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 3911
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 3913
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    .line 3915
    :pswitch_a
    const/4 v0, 0x6

    goto :goto_0

    .line 3917
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 3919
    :pswitch_c
    const/16 v0, 0xe

    goto :goto_0

    .line 3921
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 3923
    :pswitch_e
    const/16 v0, 0xf

    goto :goto_0

    .line 3927
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 3929
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 3894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 1394
    return-void
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 15
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4166
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v3, v0, v1

    .line 4167
    .local v3, "nwboosterWifiIconId":I
    const v4, 0x7f02056e

    .line 4169
    .local v4, "nwboosterDataActivityIconId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v0, :cond_d

    .line 4170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    .line 4172
    .local v14, "showBoosterIcon":Z
    :goto_0
    if-eqz v14, :cond_c

    .line 4173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v0, :cond_b

    .line 4174
    const/4 v12, 0x0

    .line 4175
    .local v12, "nw_data_in":Z
    const/4 v13, 0x0

    .line 4177
    .local v13, "nw_data_out":Z
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4179
    :cond_0
    const/4 v12, 0x1

    .line 4189
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 4190
    const v4, 0x7f02056d

    .line 4199
    :cond_2
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4214
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :goto_3
    const-string v0, "StatusBar.NetworkController"

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

    .line 4222
    .end local v14    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 4170
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 4180
    .restart local v12    # "nw_data_in":Z
    .restart local v13    # "nw_data_out":Z
    .restart local v14    # "showBoosterIcon":Z
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 4182
    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    .line 4183
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4185
    :cond_7
    const/4 v12, 0x1

    .line 4186
    const/4 v13, 0x1

    goto :goto_1

    .line 4191
    :cond_8
    if-eqz v12, :cond_9

    if-nez v13, :cond_9

    .line 4192
    const v4, 0x7f02056c

    goto :goto_2

    .line 4193
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_a

    .line 4194
    const v4, 0x7f02056f

    goto :goto_2

    .line 4195
    :cond_a
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 4196
    const v4, 0x7f02056e

    goto :goto_2

    .line 4203
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v8, v0, v1

    .line 4205
    .local v8, "mDimNWBoosterWifiIcon":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v9, 0x7f02056d

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 4210
    .end local v8    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4212
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster - setNWBoosterIndicators(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4218
    .end local v14    # "showBoosterIcon":Z
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4220
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster - setNWBoosterIndicators(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private refreshOperatorLogoView()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 3622
    const-string v1, "ORANGE"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3623
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v1, :cond_0

    .line 3624
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "showOperatorLogoIcon !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 3627
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3629
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3630
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    .line 3668
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowKeyguardOperatorLogoIcon:Z

    if-eqz v1, :cond_1

    .line 3669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.action.OPERATOR_LOGO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3670
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3671
    const-string v1, "logo_show"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3674
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3676
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 3631
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 3632
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3634
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3635
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 3637
    :cond_3
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3639
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3640
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 3645
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v1, :cond_0

    .line 3646
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "showOperatorLogoIcon !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3648
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 3649
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3651
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3652
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 3653
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 3654
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3656
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3657
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 3659
    :cond_6
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3661
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3662
    invoke-static {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 3673
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v1, "logo_show"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private setAirplaneModeOff()V
    .locals 3

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1389
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 1390
    return-void
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 534
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 536
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 538
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 540
    rem-int/lit8 v0, v1, 0x64

    .line 541
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 544
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCarrierText()V
    .locals 3

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText()V

    .line 1169
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1170
    .local v1, "v":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1173
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 3942
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    .line 3943
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    .line 3944
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    .line 3945
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    .line 3946
    return-void
.end method

.method private shouldDisplayThreeGeesForSPR()Z
    .locals 2

    .prologue
    .line 5859
    const/4 v0, 0x0

    .line 5860
    .local v0, "result":Z
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 5876
    :goto_0
    :pswitch_0
    return v0

    .line 5873
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private shouldShowPermanentDataIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 4106
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4113
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_1

    .line 4120
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4116
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final update4GICONDataNetType()V
    .locals 3

    .prologue
    .line 5055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5058
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update4GICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 5061
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5062
    const v0, 0x7f02037d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5063
    const v0, 0x7f0203db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5064
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5066
    :cond_0
    return-void
.end method

.method private final update4GLTEICONDataNetType()V
    .locals 3

    .prologue
    .line 5108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5111
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update4GLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5115
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5116
    const v0, 0x7f020384

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5117
    const v0, 0x7f0203e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5120
    :cond_0
    return-void
.end method

.method private final updateATTDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0d024c

    const v4, 0x7f0203eb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5269
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    .line 5270
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5314
    :pswitch_0
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType unknown radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5317
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5318
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5323
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5325
    return-void

    .line 5272
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5273
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5274
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5279
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5280
    const v0, 0x7f02039c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5281
    const v0, 0x7f0203e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5290
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5291
    const v0, 0x7f020380

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5292
    const v0, 0x7f0203dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5295
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 5298
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5299
    const v0, 0x7f0203a4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5300
    const v0, 0x7f0203e7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5303
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 5306
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5307
    const v0, 0x7f02039d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5308
    const v0, 0x7f0203e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateCMCCDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0d0250

    const v3, 0x7f02039a

    const v2, 0x7f02038f

    .line 6065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6067
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6106
    :goto_0
    :pswitch_0
    return-void

    .line 6074
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6075
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6076
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6077
    const v0, 0x7f020374

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6078
    const v0, 0x7f0203d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6079
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6086
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6081
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6082
    const v0, 0x7f0203a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6083
    const v0, 0x7f0203e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6084
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_1

    .line 6090
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6091
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6093
    const v0, 0x7f02037a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6094
    const v0, 0x7f0203d9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6095
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 6102
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 6097
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6098
    const v0, 0x7f0203a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6099
    const v0, 0x7f0203e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6100
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_2

    .line 6069
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

.method private final updateCUDataNetType()V
    .locals 2

    .prologue
    .line 6109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 6111
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6119
    :goto_0
    return-void

    .line 6115
    :pswitch_0
    const v0, 0x7f020383

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6116
    const v0, 0x7f0203de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 6113
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 4

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_2

    .line 1111
    const v0, 0x104010e

    .line 1114
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v1, v2, :cond_0

    .line 1116
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigOpBrandingForWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1117
    const/4 v0, 0x0

    .line 1118
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1164
    :cond_1
    return-void

    .line 1122
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1153
    const v0, 0x104038b

    goto :goto_0

    .line 1125
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1126
    const v0, 0x104038b

    goto :goto_0

    .line 1128
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_0

    .line 1132
    :pswitch_1
    const v0, 0x104037c

    .line 1133
    goto :goto_0

    .line 1135
    :pswitch_2
    const v0, 0x104039d

    .line 1136
    goto :goto_0

    .line 1138
    :pswitch_3
    const v0, 0x104039b

    .line 1139
    goto :goto_0

    .line 1142
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_0

    .line 1145
    :pswitch_5
    const v0, 0x104038f

    .line 1147
    goto :goto_0

    .line 1149
    :pswitch_6
    const v0, 0x1040399

    .line 1150
    goto :goto_0

    .line 1155
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_0

    .line 1122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2093
    const/4 v1, 0x0

    .line 2094
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 2097
    .local v2, "visible":Z
    const/4 v0, -0x1

    .line 2098
    .local v0, "currentPhoneType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 2099
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 2101
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v7, :cond_b

    .line 2105
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_a

    .line 2107
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 2108
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_9

    .line 2109
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    packed-switch v3, :pswitch_data_0

    .line 2120
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2123
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2129
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v3, :cond_3

    .line 2130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 2134
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2135
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2136
    const/4 v2, 0x1

    .line 2140
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_5

    .line 2142
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2143
    const/4 v1, 0x0

    .line 2144
    const/4 v2, 0x1

    .line 2145
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA_LTE : disabled icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_5
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2152
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v3, :cond_6

    .line 2153
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2155
    :cond_6
    const/4 v1, 0x0

    .line 2156
    const/4 v2, 0x1

    .line 2170
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 2215
    :cond_8
    :goto_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2216
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2217
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    .line 2220
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon, mDataDirectionIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void

    .line 2111
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2112
    goto/16 :goto_0

    .line 2114
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2115
    goto/16 :goto_0

    .line 2117
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2118
    goto/16 :goto_0

    .line 2125
    :cond_9
    const/4 v1, 0x0

    .line 2126
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2160
    :cond_a
    const/4 v1, 0x0

    .line 2161
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 2162
    const/4 v2, 0x0

    .line 2164
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v3, :cond_7

    .line 2165
    const v1, 0x7f02040c

    goto :goto_2

    .line 2176
    :cond_b
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_e

    .line 2177
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    packed-switch v3, :pswitch_data_1

    .line 2189
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2198
    :goto_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_c

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_d

    .line 2200
    :cond_c
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2201
    const/4 v1, 0x0

    .line 2202
    const/4 v2, 0x1

    .line 2203
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA : disabled icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 2210
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaLTE - mSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2179
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2180
    goto :goto_4

    .line 2182
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2183
    goto :goto_4

    .line 2185
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2186
    goto :goto_4

    .line 2193
    :cond_e
    const/4 v1, 0x0

    .line 2194
    const/4 v2, 0x0

    goto :goto_4

    .line 2109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 9

    .prologue
    const v8, 0x7f0d0250

    const/4 v7, 0x0

    const v6, 0x7f0d024f

    const v5, 0x7f0203d8

    const v4, 0x7f020374

    .line 1808
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "updateDataNetType()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1811
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v2, :cond_0

    .line 1813
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1814
    .local v0, "inetCondition":I
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1815
    const v2, 0x7f02037d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1816
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1817
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1821
    const v2, 0x7f0203db

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2053
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 2055
    return-void

    .line 1824
    .end local v0    # "inetCondition":I
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1825
    .restart local v0    # "inetCondition":I
    const/4 v1, 0x1

    .line 1826
    .local v1, "showDataTypeIcon":Z
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 2040
    :pswitch_0
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 2043
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2046
    const v2, 0x7f0203eb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1828
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_1

    .line 1829
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1830
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1833
    const v2, 0x7f0203eb

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1840
    :cond_1
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_2

    .line 1841
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1842
    const v2, 0x7f02039c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1844
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1845
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0255

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1849
    const v2, 0x7f0203e2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1857
    :cond_2
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1858
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1860
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1861
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1865
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1871
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_3

    .line 1872
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1873
    const v2, 0x7f0203a0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1875
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1876
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1880
    const v2, 0x7f0203e4

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1883
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1884
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1886
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1887
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1891
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1897
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_4

    .line 1898
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1899
    const v2, 0x7f0203a1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1900
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1903
    const v2, 0x7f0203e5

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1905
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1906
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1907
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1910
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1915
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_5

    .line 1917
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1918
    const v2, 0x7f020371

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1920
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1921
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0253

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1925
    const v2, 0x7f0203d6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1932
    :cond_5
    :pswitch_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_6

    .line 1933
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1934
    const v2, 0x7f020371

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1936
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1937
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0253

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1941
    const v2, 0x7f0203d6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1951
    :cond_6
    :pswitch_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1952
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1954
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1955
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1959
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1965
    :pswitch_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_7

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1967
    :cond_7
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "LTE WIDEBAND"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1969
    const v2, 0x7f0203a5

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1970
    const v2, 0x7f0203e9

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1971
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1973
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_9

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1975
    :cond_9
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "LTE WIDEBAND"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1977
    const v2, 0x7f020387

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1978
    const v2, 0x7f0203df

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1979
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1983
    :cond_a
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v2, :cond_b

    .line 1984
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1985
    const v2, 0x7f02037d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1986
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1987
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1991
    const v2, 0x7f0203db

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1994
    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1995
    const v2, 0x7f0203a3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1996
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1997
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2001
    const v2, 0x7f0203e6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2007
    :pswitch_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_c

    .line 2008
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2009
    const v2, 0x7f02039d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2011
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2012
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2016
    const v2, 0x7f0203e3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2019
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2020
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2022
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2023
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2027
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 2032
    :pswitch_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 2033
    const v2, 0x7f02038d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2034
    const v2, 0x7f0203e1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 2035
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1826
    nop

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
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private updateIconSet()V
    .locals 6

    .prologue
    .line 1176
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 1177
    .local v2, "voiceNetworkType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 1180
    .local v1, "dataNetworkType":I
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIconSet, voice network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    if-nez v1, :cond_0

    move v0, v2

    .line 1191
    .local v0, "chosenNetworkType":I
    :goto_0
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " chosenNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDataDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspapDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeastThreeGees="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void

    .end local v0    # "chosenNetworkType":I
    :cond_0
    move v0, v1

    .line 1186
    goto :goto_0
.end method

.method private final updateLTE4GICONDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d0252

    .line 5169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5172
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTE4GICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5175
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 5176
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5177
    const v0, 0x7f02037d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5178
    const v0, 0x7f0203db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5197
    :cond_0
    :goto_0
    return-void

    .line 5181
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_2

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5183
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5184
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5185
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5186
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5190
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5191
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5192
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateLTEICONDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d0252

    .line 5122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5125
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 5128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5129
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5131
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5132
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5142
    :cond_1
    :goto_0
    return-void

    .line 5136
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5137
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5138
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 13

    .prologue
    const/16 v12, 0x111

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3952
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mDoNotShowNoSimNotification:Z

    if-eqz v7, :cond_1

    .line 4009
    :cond_0
    :goto_0
    return-void

    .line 3956
    :cond_1
    const-string v7, "ro.config.donot_nosim"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3957
    const-string v7, "StatusBar.NetworkController"

    const-string v8, "Don\'t show No SIM Notification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3961
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v7, :cond_0

    .line 3965
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3967
    .local v1, "mgr":Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v7, v8, :cond_3

    .line 3968
    invoke-virtual {v1, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3970
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3973
    .local v2, "res":Landroid/content/res/Resources;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_5

    .line 3974
    const v7, 0x7f0d0424

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3982
    .local v6, "title":Ljava/lang/String;
    :goto_1
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_7

    .line 3983
    const v7, 0x7f0d0426

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3988
    .local v5, "text":Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f020407

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3997
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_4

    .line 3998
    const v7, 0x7f02040c

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4000
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4001
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v7, "SIM_TYPE"

    const-string v8, "NO_SIM"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4002
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v10, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 4004
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 4007
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v1, v12, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3975
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v7, :cond_6

    .line 3976
    const v7, 0x7f0d0423

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1

    .line 3978
    .end local v6    # "title":Ljava/lang/String;
    :cond_6
    const v7, 0x7f0d0422

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1

    .line 3985
    :cond_7
    const v7, 0x7f0d0425

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_2
.end method

.method private final updateOLBDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0d0250

    const v4, 0x7f0203e5

    const v3, 0x7f0203a1

    .line 4919
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4921
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4924
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4925
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4926
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4927
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4931
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4932
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 4933
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4934
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4935
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4936
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4946
    :cond_1
    :goto_0
    return-void

    .line 4939
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4940
    const v0, 0x7f020374

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4941
    const v0, 0x7f0203d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4942
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0203a1

    const v6, 0x7f02037d

    const v5, 0x7f020374

    const v4, 0x7f0d0251

    const v3, 0x7f0d0250

    .line 4587
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4589
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 4594
    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4596
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 4597
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4598
    const v0, 0x7f0203a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4599
    const v0, 0x7f0203e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4619
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4620
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4622
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 4623
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4624
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4625
    const v0, 0x7f0203e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4626
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4645
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 4646
    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4647
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4648
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4650
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4651
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4652
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4685
    :cond_6
    :goto_2
    return-void

    .line 4603
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4604
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4605
    const v0, 0x7f0203d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4606
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4610
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4611
    const v0, 0x7f02037a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4612
    const v0, 0x7f0203d9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4613
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4629
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4630
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4631
    const v0, 0x7f0203d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4632
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4636
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4637
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4638
    const v0, 0x7f0203e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4655
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4656
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4657
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4658
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4661
    :cond_c
    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4662
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND_ORANGE_TDM!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4664
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4665
    const v0, 0x7f0203db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4666
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4669
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_e

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4670
    :cond_e
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4672
    const v0, 0x7f020387

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4673
    const v0, 0x7f0203df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4674
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4677
    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4678
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4679
    const v0, 0x7f0203db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final updateOYADataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0203db

    const v6, 0x7f02037d

    const v5, 0x7f0d024f

    const v4, 0x7f0203d8

    const v3, 0x7f020374

    .line 4756
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v0, :cond_0

    .line 4759
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4760
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4761
    const v0, 0x7f0203eb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4762
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4766
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4767
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4768
    const v0, 0x7f02039c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4769
    const v0, 0x7f0203e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4774
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4778
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4779
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4780
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4781
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4782
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4801
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4803
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4804
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4805
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4806
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4824
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 4825
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4826
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4828
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4829
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4841
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4842
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4843
    const v0, 0x7f02039d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4844
    const v0, 0x7f0203e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4845
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4851
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 4852
    return-void

    .line 4785
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 4786
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4787
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4788
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4792
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4793
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4794
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4809
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_b

    .line 4810
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4811
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4812
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4813
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4816
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4817
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4818
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4833
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4834
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4835
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final updateOYBDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0d0252

    const v6, 0x7f0d0251

    const v5, 0x7f0d024c

    const v4, 0x7f0203db

    const v3, 0x7f02037d

    .line 4688
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v0, :cond_0

    .line 4691
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4692
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4693
    const v0, 0x7f0203eb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4694
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4698
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4699
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4700
    const v0, 0x7f02039c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4701
    const v0, 0x7f0203e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4702
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4706
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4710
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4711
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4712
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4713
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4718
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4719
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4720
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4721
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4727
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 4728
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4729
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4731
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4732
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4733
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4744
    :cond_6
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4745
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4746
    const v0, 0x7f02039d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4747
    const v0, 0x7f0203e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4752
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 4753
    return-void

    .line 4736
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4737
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4738
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateOYCDataNetType()V
    .locals 9

    .prologue
    const v8, 0x7f0203e6

    const v7, 0x7f0203a5

    const v6, 0x7f0203a3

    const/4 v5, 0x3

    const v4, 0x7f0d0252

    .line 4854
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4855
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4917
    :cond_0
    :goto_0
    return-void

    .line 4858
    :cond_1
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOYCDataNetType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4860
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-eq v1, v5, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 4864
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_5

    .line 4865
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4866
    const v1, 0x7f0203a1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4867
    const v1, 0x7f0203e5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4868
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4879
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 4882
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VMC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v1, v2, :cond_7

    .line 4884
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4885
    .local v0, "NetworkSubstring":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupport4GPlusIcon:Z

    if-eqz v1, :cond_6

    const-string v1, "302"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4886
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4887
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4888
    const v1, 0x7f0203e9

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4889
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4871
    .end local v0    # "NetworkSubstring":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4872
    const v1, 0x7f0203a0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4873
    const v1, 0x7f0203e4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4874
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0250

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 4892
    .restart local v0    # "NetworkSubstring":Ljava/lang/String;
    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4893
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4894
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4895
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4901
    .end local v0    # "NetworkSubstring":Ljava/lang/String;
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v1, :cond_8

    const-string v1, "1"

    const-string v2, "ril.lte_wideband"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4902
    :cond_8
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "LTE_WIDE_BAND!@!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4904
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4905
    const v1, 0x7f0203e9

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4906
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4909
    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4910
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4911
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4912
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private final updatePCTDataNetType()V
    .locals 3

    .prologue
    .line 5090
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5093
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePCTDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 5096
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5097
    const v0, 0x7f02037d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5098
    const v0, 0x7f0203db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5106
    :cond_0
    :goto_0
    return-void

    .line 5100
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5101
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5102
    const v0, 0x7f020384

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5103
    const v0, 0x7f0203e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRoamingNotification()V
    .locals 13

    .prologue
    const v12, 0x7f0d042a

    const/16 v11, 0x222

    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4014
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 4017
    .local v2, "mgr":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "data_roaming"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    .line 4020
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    const v9, 0x7f02038b

    if-eq v6, v9, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v6, :cond_3

    .line 4023
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    if-eqz v6, :cond_1

    .line 4024
    invoke-virtual {v2, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4025
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 4026
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateRomaingNotification cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v6, v8

    .line 4017
    goto :goto_0

    .line 4029
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4030
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0d0427

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4032
    .local v5, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4033
    .local v1, "currentRoamingType":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    if-eqz v6, :cond_8

    .line 4034
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v6, :cond_5

    .line 4035
    :cond_4
    const v6, 0x7f0d0429

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4036
    .local v4, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4057
    :goto_2
    const-string v6, "StatusBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRomaingNotification Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    if-eq v6, v1, :cond_1

    .line 4059
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v8, 0x7f020345

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4068
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4069
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 4070
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDataRoamingTypeForVZW:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4037
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "text":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eq v6, v10, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-ne v6, v7, :cond_7

    .line 4040
    :cond_6
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4041
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 4043
    .end local v4    # "text":Ljava/lang/String;
    :cond_7
    const v6, 0x7f0d0428

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4044
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 4047
    .end local v4    # "text":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eq v6, v10, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-ne v6, v7, :cond_a

    .line 4050
    :cond_9
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4051
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 4053
    .end local v4    # "text":Ljava/lang/String;
    :cond_a
    const-string v4, "No Notification"

    .line 4054
    .restart local v4    # "text":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private final updateSFRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0203d7

    const v5, 0x7f02037a

    const v4, 0x7f020374

    const v3, 0x7f020372

    const v2, 0x7f0d0250

    .line 5199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5201
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateSFRDataNetType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-nez v0, :cond_1

    .line 5204
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    sparse-switch v0, :sswitch_data_0

    .line 5266
    :cond_1
    :goto_0
    return-void

    .line 5206
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5207
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5208
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5214
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5215
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5216
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5217
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5226
    :cond_2
    :sswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5227
    const v0, 0x7f02038d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5228
    const v0, 0x7f0203e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5235
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5236
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5237
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5238
    const v0, 0x7f0203d9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5242
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5243
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5244
    const v0, 0x7f0203d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5250
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5251
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5252
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5253
    const v0, 0x7f0203d9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5257
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5258
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5259
    const v0, 0x7f0203d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5260
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5204
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xf -> :sswitch_4
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0203e3

    const v5, 0x7f020374

    const v4, 0x7f0d024f

    const v3, 0x7f02037b

    const v2, 0x7f0203d8

    .line 5885
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 5887
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_0

    .line 5888
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5889
    const v0, 0x7f020382

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5890
    const v0, 0x7f0203dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5896
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 6059
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 6061
    return-void

    .line 5892
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5893
    const v0, 0x7f0203ac

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5894
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 5899
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 6041
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_e

    .line 6042
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6043
    const v0, 0x7f02039d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6044
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6045
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5901
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_2

    .line 5902
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5906
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5907
    const v0, 0x7f0203eb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5908
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5904
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    goto :goto_2

    .line 5912
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_3

    .line 5913
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5914
    const v0, 0x7f02039c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5915
    const v0, 0x7f0203e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5921
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5917
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5918
    const v0, 0x7f02039f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5919
    const v0, 0x7f0203e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_3

    .line 5925
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_4

    .line 5926
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5927
    const v0, 0x7f02039d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5928
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5934
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5930
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5931
    const v0, 0x7f02039f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5932
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_4

    .line 5938
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_5

    .line 5939
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5940
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5941
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5947
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5943
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5944
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5945
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_5

    .line 5953
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 5954
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_6

    .line 5955
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5956
    const v0, 0x7f0203a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5957
    const v0, 0x7f0203e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5963
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5959
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5960
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5961
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_6

    .line 5966
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_8

    .line 5967
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5968
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5969
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5975
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5971
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5972
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5973
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_7

    .line 5981
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_a

    .line 5982
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_9

    .line 5983
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5984
    const v0, 0x7f0203a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5985
    const v0, 0x7f0203e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5991
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5987
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5988
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5989
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_8

    .line 5994
    :cond_a
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_b

    .line 5995
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5996
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5997
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6003
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5999
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6000
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6001
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_9

    .line 6015
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_c

    .line 6016
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6017
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6018
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6024
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6020
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6021
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6022
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_a

    .line 6028
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_d

    .line 6029
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6030
    const v0, 0x7f020382

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6031
    const v0, 0x7f0203dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6037
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 6033
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6034
    const v0, 0x7f0203ac

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6035
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_b

    .line 6048
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 6049
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 6050
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 6051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private final updateSimIcon()V
    .locals 3

    .prologue
    .line 2083
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 2085
    const v0, 0x7f020138

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 2089
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 2090
    return-void

    .line 2087
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    goto :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    .prologue
    .line 3608
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    .line 3612
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    .line 3615
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    .line 3617
    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 5144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5147
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTFGDataNetType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 5167
    :cond_0
    :goto_0
    return-void

    .line 5153
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5155
    .local v0, "NetworkSubstring":Ljava/lang/String;
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkSubstring:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 5159
    const-string v1, "334"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "716"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "734"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "704"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "706"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "748"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5160
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5161
    const v1, 0x7f0203a3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5162
    const v1, 0x7f0203e6

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5163
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMHDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d0252

    .line 5068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5071
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTMHDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 5074
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5075
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5077
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5078
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5079
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5088
    :cond_1
    :goto_0
    return-void

    .line 5082
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5083
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5084
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5085
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMODataNetType()V
    .locals 10

    .prologue
    const v9, 0x7f0203eb

    const v8, 0x7f0203da

    const v7, 0x7f02037c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5328
    const/4 v0, 0x0

    .line 5329
    .local v0, "isNetworkRoaming":Z
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5330
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 5475
    :pswitch_0
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5478
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5479
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5484
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5486
    return-void

    .line 5332
    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5333
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5334
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5335
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5340
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_a

    .line 5341
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    .line 5343
    .local v1, "voice":I
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v.s.:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v.t.:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    if-nez v1, :cond_0

    .line 5346
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5347
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5348
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5349
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5351
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5352
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5353
    const v2, 0x7f02039c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5354
    const v2, 0x7f0203e2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5355
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0255

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5357
    :cond_1
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    .line 5362
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    .line 5363
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5365
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5366
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5367
    if-nez v0, :cond_4

    .line 5368
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5369
    const v2, 0x7f020388

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5370
    const v2, 0x7f0203e0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5371
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5374
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5375
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5376
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5377
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5380
    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 5381
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_6

    .line 5382
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5384
    :cond_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5385
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5386
    if-nez v0, :cond_7

    .line 5387
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5388
    const v2, 0x7f0203a6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5389
    const v2, 0x7f0203ea

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5390
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5393
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5394
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5395
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5396
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5399
    :cond_8
    if-ne v1, v6, :cond_9

    .line 5400
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5401
    const v2, 0x7f02039d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5402
    const v2, 0x7f0203e3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5403
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5406
    :cond_9
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5407
    const v2, 0x7f0203ea

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 5410
    .end local v1    # "voice":I
    :cond_a
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5411
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 5416
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5417
    const v2, 0x7f02039c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5418
    const v2, 0x7f0203e2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5419
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0255

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5427
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_b

    .line 5428
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5430
    :cond_b
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5431
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    if-nez v0, :cond_c

    .line 5433
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5434
    const v2, 0x7f020388

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5435
    const v2, 0x7f0203e0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5436
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5439
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5440
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5441
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5442
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5447
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_d

    .line 5448
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5450
    :cond_d
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5451
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    if-nez v0, :cond_e

    .line 5453
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5454
    const v2, 0x7f0203a6

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5455
    const v2, 0x7f0203ea

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5456
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5459
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5460
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5461
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5462
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5467
    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5468
    const v2, 0x7f02039d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5469
    const v2, 0x7f0203e3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5470
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f0206b8

    const v9, 0x7f0206b7

    const v8, 0x7f020569

    const v7, 0x7f020154

    const/4 v6, 0x0

    .line 1599
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_2

    .line 1605
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    if-eqz v3, :cond_1

    .line 1611
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 1801
    :goto_0
    return-void

    .line 1614
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    .line 1615
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1622
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eqz v3, :cond_7

    .line 1625
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_6

    .line 1627
    :cond_3
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1628
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1629
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1630
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1633
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_5

    .line 1634
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1635
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1795
    :cond_4
    :goto_1
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength, No signal level. mPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mQSPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mContentDescriptionPhoneSignal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1647
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_4

    .line 1648
    const v3, 0x7f0206b9

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1649
    const v3, 0x7f0206b9

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_1

    .line 1663
    :cond_6
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1664
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1665
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1666
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1671
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_c

    .line 1675
    :cond_8
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_b

    .line 1676
    :cond_9
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1677
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1678
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1679
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1682
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_a

    .line 1683
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1684
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 1696
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_4

    .line 1697
    const v3, 0x7f0206b9

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1698
    const v3, 0x7f0206b9

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 1701
    :cond_b
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1702
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1703
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1704
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 1710
    :cond_c
    const/4 v2, 0x0

    .line 1712
    .local v2, "psIconLevel":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_e

    .line 1713
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1715
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: mAlwaysShowCdmaRssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to cdmaLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v3, :cond_f

    .line 1737
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too high"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1745
    :cond_d
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1748
    .local v1, "iconList":[I
    aget v3, v1, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1749
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1753
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1758
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataSignalIconId(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1777
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: iconLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1731
    .end local v0    # "iconLevel":I
    .end local v1    # "iconList":[I
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_2

    .line 1740
    :cond_f
    if-gez v0, :cond_d

    .line 1741
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too low"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_3
.end method

.method private final updateVD2DataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d0252

    .line 4948
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4950
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4953
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4954
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4956
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4957
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4958
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4968
    :cond_1
    :goto_0
    return-void

    .line 4961
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4962
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4963
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4964
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateVIDDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0d024f

    const v6, 0x7f0203db

    const v5, 0x7f0203d8

    const v4, 0x7f02037d

    const v3, 0x7f020374

    .line 4970
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4972
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4975
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4980
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4981
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4982
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4983
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4994
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 4997
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5002
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5003
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5004
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5005
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5016
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 5017
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5022
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5023
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5024
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5025
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5037
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 5038
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_7

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5039
    :cond_7
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5040
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5041
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5042
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5043
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5053
    :cond_8
    :goto_3
    return-void

    .line 4986
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4987
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4988
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4989
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5008
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5009
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5010
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5011
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5028
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5029
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5030
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5031
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    .line 5046
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5047
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5048
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5049
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_3
.end method

.method private final updateVZWDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0d024f

    const v5, 0x7f0203d8

    const v1, 0x7f020392

    const v0, 0x7f02038f

    const v4, 0x7f020374

    .line 5494
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsSVLTE:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5633
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_14

    .line 5634
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5635
    const v0, 0x7f02039d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5636
    const v0, 0x7f0203e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5637
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_13

    const v0, 0x7f020399

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5654
    :cond_2
    :goto_2
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5656
    return-void

    .line 5494
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    goto :goto_0

    .line 5501
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5502
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5503
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5504
    const v0, 0x7f0203eb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5505
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5506
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    .line 5523
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_5

    .line 5524
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5525
    const v0, 0x7f02039c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5526
    const v0, 0x7f0203e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5527
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020398

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5529
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    .line 5527
    :cond_4
    const v0, 0x7f020394

    goto :goto_3

    .line 5536
    :cond_5
    :pswitch_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5537
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5538
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5539
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_6

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move v0, v1

    .line 5539
    goto :goto_4

    .line 5547
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_8

    .line 5548
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5549
    const v0, 0x7f0203a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5550
    const v0, 0x7f0203e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5551
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_7

    const v0, 0x7f02039a

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5553
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5551
    :cond_7
    const v0, 0x7f020396

    goto :goto_5

    .line 5556
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5557
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5558
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5559
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_9

    :goto_6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5561
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    move v0, v1

    .line 5559
    goto :goto_6

    .line 5566
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_b

    .line 5567
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5568
    const v0, 0x7f0203a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5569
    const v0, 0x7f0203e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5570
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_a

    const v0, 0x7f02039b

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5570
    :cond_a
    const v0, 0x7f020397

    goto :goto_7

    .line 5575
    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5576
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5577
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5578
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_c

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    move v0, v1

    .line 5578
    goto :goto_8

    .line 5586
    :pswitch_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_e

    .line 5587
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5588
    const v0, 0x7f020371

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5589
    const v0, 0x7f0203d6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_d

    const v0, 0x7f02038e

    :goto_9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5590
    :cond_d
    const v0, 0x7f020391

    goto :goto_9

    .line 5599
    :cond_e
    :pswitch_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_10

    .line 5600
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5601
    const v0, 0x7f020371

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5602
    const v0, 0x7f0203d6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5603
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_f

    const v0, 0x7f02038e

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5605
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5603
    :cond_f
    const v0, 0x7f020391

    goto :goto_a

    .line 5615
    :cond_10
    :pswitch_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5616
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5617
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5618
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_11

    :goto_b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5620
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    move v0, v1

    .line 5618
    goto :goto_b

    .line 5624
    :pswitch_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5625
    const v0, 0x7f020382

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5626
    const v0, 0x7f0203dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5627
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_12

    const v0, 0x7f020390

    :goto_c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5629
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5627
    :cond_12
    const v0, 0x7f020393

    goto :goto_c

    .line 5637
    :cond_13
    const v0, 0x7f020395

    goto/16 :goto_1

    .line 5642
    :cond_14
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5643
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5644
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5645
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v2, :cond_15

    :goto_d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5647
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    :cond_15
    move v0, v1

    .line 5645
    goto :goto_d

    .line 5494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateZTMDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f0203ad

    .line 5772
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 5773
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5776
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5778
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateZTMDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5780
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5828
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 5829
    const v0, 0x7f0203b0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5835
    :goto_0
    return-void

    .line 5782
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 5783
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5789
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5790
    const v0, 0x7f0203af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5796
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5801
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5802
    const v0, 0x7f0203b1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5804
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5809
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5810
    const v0, 0x7f0203b2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5812
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5820
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5824
    :pswitch_7
    const v0, 0x7f0203ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5831
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f0203ad

    .line 5669
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 5670
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5673
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5675
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateZVVDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5677
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5725
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 5726
    const v0, 0x7f0203b0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5732
    :goto_0
    return-void

    .line 5679
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 5680
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5686
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5687
    const v0, 0x7f0203af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5693
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5698
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5699
    const v0, 0x7f0203b1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5701
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5706
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5707
    const v0, 0x7f0203b2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5709
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5717
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5721
    :pswitch_7
    const v0, 0x7f0203ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5728
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVLACInfo()V
    .locals 6

    .prologue
    .line 5735
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 5736
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5738
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v3, :pswitch_data_0

    .line 5759
    :pswitch_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 5761
    :cond_1
    :goto_0
    return-void

    .line 5749
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 5750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v1

    .line 5751
    .local v1, "strAreaInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 5753
    .local v2, "strNetworkName":Ljava/lang/String;
    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 5754
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 5755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 5738
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3785
    return-void
.end method

.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V

    .line 630
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    .line 610
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 621
    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    .line 606
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 616
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 1
    .param p1, "ap"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    .line 645
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 567
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 568
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 569
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 570
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 571
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 574
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3512
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3513
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 3514
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 3515
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 3516
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 3517
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 3518
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 3603
    :cond_0
    :goto_0
    return-void

    .line 3519
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_3

    const-string v4, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3520
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 3521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3522
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 3524
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 3525
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3526
    const-string v4, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3527
    .local v9, "airplane":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3528
    const-string v4, "show"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3529
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3530
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const v4, 0x7f020357

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_2

    .line 3533
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v4, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3534
    .local v11, "fully":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 3535
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 3537
    :cond_5
    const-string v4, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3538
    .local v16, "wifi":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 3539
    const-string v4, "show"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3540
    .restart local v2    # "show":Z
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3541
    .local v14, "level":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 3542
    const-string v4, "null"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 3545
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    if-gez v4, :cond_9

    const v3, 0x7f020597

    .line 3547
    .local v3, "iconId":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3548
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const-string v4, "Demo"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_6

    .line 3535
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "level":Ljava/lang/String;
    .end local v16    # "wifi":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 3542
    .restart local v2    # "show":Z
    .restart local v14    # "level":Ljava/lang/String;
    .restart local v16    # "wifi":Ljava/lang/String;
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    .line 3545
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    aget v3, v4, v5

    goto :goto_5

    .line 3553
    .restart local v3    # "iconId":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 3555
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "level":Ljava/lang/String;
    :cond_b
    const-string v4, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3556
    .local v15, "mobile":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 3557
    const-string v4, "show"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3558
    .restart local v2    # "show":Z
    const-string v4, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3559
    .local v10, "datatype":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 3560
    const-string v4, "1x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f020371

    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 3571
    const-string v4, "1x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f020143

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 3582
    :cond_c
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 3583
    .local v13, "icons":[[I
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3584
    .restart local v14    # "level":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 3585
    const-string v4, "null"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 3588
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    if-gez v4, :cond_1f

    const v3, 0x7f020569

    .line 3590
    .restart local v3    # "iconId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3591
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const-string v5, "Demo"

    const-string v6, "Demo"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const v8, 0x7f0203be

    if-ne v7, v8, :cond_20

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v8

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_b

    .line 3560
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "icons":[[I
    .end local v14    # "level":Ljava/lang/String;
    :cond_e
    const-string v4, "3g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f020374

    goto :goto_7

    :cond_f
    const-string v4, "4g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f02037d

    goto :goto_7

    :cond_10
    const-string v4, "e"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f02039c

    goto/16 :goto_7

    :cond_11
    const-string v4, "g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f02039d

    goto/16 :goto_7

    :cond_12
    const-string v4, "h"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f0203a0

    goto/16 :goto_7

    :cond_13
    const-string v4, "lte"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f0203a3

    goto/16 :goto_7

    :cond_14
    const-string v4, "roam"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f0203a7

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 3571
    :cond_16
    const-string v4, "3g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f020146

    goto/16 :goto_8

    :cond_17
    const-string v4, "4g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f020148

    goto/16 :goto_8

    :cond_18
    const-string v4, "e"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f02014a

    goto/16 :goto_8

    :cond_19
    const-string v4, "g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x7f020150

    goto/16 :goto_8

    :cond_1a
    const-string v4, "h"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f020151

    goto/16 :goto_8

    :cond_1b
    const-string v4, "lte"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x7f020153

    goto/16 :goto_8

    :cond_1c
    const-string v4, "roam"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f020156

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 3585
    .restart local v13    # "icons":[[I
    .restart local v14    # "level":Ljava/lang/String;
    :cond_1e
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v13, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_9

    .line 3588
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v13, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    aget v3, v4, v5

    goto/16 :goto_a

    .line 3591
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .restart local v3    # "iconId":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 3600
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3361
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3362
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3365
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3366
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3368
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3370
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3371
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3372
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3373
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3374
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3375
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3376
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3377
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3379
    const-string v0, "  mEmgcCallState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3382
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3383
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3384
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3385
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3386
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3387
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3388
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3389
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3390
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3392
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3394
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3395
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3396
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3398
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3400
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3402
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3404
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3405
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3406
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3407
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3408
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3409
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3411
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3412
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3413
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3414
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3415
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3416
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3417
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3418
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3419
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3420
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3421
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3422
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3423
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3424
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3426
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3429
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3430
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3431
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3432
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3433
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3435
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3436
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3437
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3442
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3444
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 3445
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3447
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3448
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3449
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3456
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3460
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3461
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3462
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3464
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3466
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3467
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3468
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3470
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3471
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3472
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3473
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3474
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3475
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3476
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3477
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3479
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3480
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3481
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3482
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3483
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3484
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3486
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3487
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3488
    return-void

    .line 3362
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 3348
    const/4 v0, 0x0

    .line 3350
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(II)I
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I

    .prologue
    .line 3825
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3840
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3842
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3827
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3828
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3830
    .end local v0    # "iconId":I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3832
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3834
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3835
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3837
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3838
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3825
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
    .locals 2

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v0

    .line 668
    .local v0, "info":Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->carrier:Ljava/lang/String;

    .line 671
    :cond_0
    return-object v0
.end method

.method public getGsmSignalLevel()I
    .locals 1

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 3355
    const/4 v0, 0x0

    .line 3357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(I)[I
    .locals 3
    .param p1, "inetCondition"    # I

    .prologue
    .line 3797
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3812
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3814
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 3799
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3800
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3802
    .end local v0    # "iconList":[I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3804
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3806
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3807
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3809
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3810
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3797
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 3491
    if-eqz p1, :cond_0

    .line 3492
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3494
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3499
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 3495
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3496
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 3499
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 3341
    const/4 v0, 0x0

    .line 3343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2059
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 2062
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2063
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 2064
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 2065
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 2071
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 681
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileDataSupported()Z
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->isMobileDataSupported()Z

    move-result v0

    return v0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 21
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 784
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/16 v20, 0x1

    .line 785
    .local v20, "wifiEnabled":Z
    :goto_0
    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 787
    .local v8, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    :cond_1
    const/4 v5, 0x1

    .line 790
    .local v5, "wifiIn":Z
    :goto_2
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :cond_2
    const/4 v6, 0x1

    .line 793
    .local v6, "wifiOut":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    :cond_3
    const/4 v14, 0x1

    .line 798
    .local v14, "mobileIn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v15, 0x1

    .line 800
    .local v15, "mobileOut":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 801
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 819
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 820
    return-void

    .line 784
    .end local v5    # "wifiIn":Z
    .end local v6    # "wifiOut":Z
    .end local v8    # "wifiDesc":Ljava/lang/String;
    .end local v14    # "mobileIn":Z
    .end local v15    # "mobileOut":Z
    .end local v20    # "wifiEnabled":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 785
    .restart local v20    # "wifiEnabled":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 787
    .restart local v8    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 790
    .restart local v5    # "wifiIn":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 796
    .restart local v6    # "wifiOut":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 798
    .restart local v14    # "mobileIn":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 805
    .restart local v15    # "mobileOut":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 807
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_6

    .line 813
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_6
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f020387

    const v3, 0x7f02037d

    const v2, 0x104037c

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 828
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 829
    .local v7, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 833
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 978
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 836
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCmccCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    .line 837
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - ACTION_SIM_STATE_CHANGED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 840
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 842
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 843
    .local v9, "plmn":Ljava/lang/String;
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    .line 844
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 846
    const/4 v9, 0x0

    .line 850
    :cond_4
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 857
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 863
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 866
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 867
    .end local v9    # "plmn":Ljava/lang/String;
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 869
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 871
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 874
    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 875
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 878
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 880
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 881
    :cond_9
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 884
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 885
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 886
    :cond_b
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 888
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 892
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_c

    .line 893
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 895
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 899
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 906
    :cond_e
    const-string v0, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 907
    const-string v0, "caindicator"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 908
    const-string v0, "caindicator"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    .line 909
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE WIDEBAND with extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-eqz v0, :cond_12

    .line 916
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0203a3

    if-ne v0, v1, :cond_11

    .line 919
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:LTE+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const v0, 0x7f0203a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 921
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 922
    const v0, 0x7f0203e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 923
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 911
    :cond_10
    const-string v0, "ril.lte_wideband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 912
    .local v8, "currentBandwidth":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    .line 913
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE WIDEBAND without extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 924
    .end local v8    # "currentBandwidth":Ljava/lang/String;
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v3, :cond_1

    .line 925
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:4G+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 927
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 928
    const v0, 0x7f0203df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 929
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 932
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f0203a5

    if-ne v0, v1, :cond_13

    .line 933
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:LTE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const v0, 0x7f0203a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 935
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 936
    const v0, 0x7f0203e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 937
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 938
    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v4, :cond_1

    .line 939
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:4G"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 941
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 942
    const v0, 0x7f0203db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 943
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 949
    :cond_14
    const-string v0, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 950
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "START_NETWORK_BOOSTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 952
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 953
    :cond_15
    const-string v0, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 954
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "STOP_NETWORK_BOOSTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 961
    :cond_16
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const v1, 0x1040398

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 963
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 964
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 966
    :cond_18
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 967
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-nez v0, :cond_1

    .line 968
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 974
    :cond_19
    const-string v0, "com.android.systemui.action.airplane_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setAirplaneModeOff()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 9
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 709
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 721
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 723
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v6, 0x7f0203be

    if-ne v0, v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 774
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v0, :cond_c

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    .line 776
    .local v8, "showAirplane":Z
    :goto_5
    if-eqz v8, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_1
    const/4 v0, 0x1

    :goto_6
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    .line 709
    .end local v8    # "showAirplane":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 723
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v1, :cond_6

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyVZW(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 762
    :goto_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_8
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v6, 0x7f0203be

    if-ne v0, v6, :cond_b

    const/4 v6, 0x1

    :goto_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 747
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v1, :cond_7

    .line 748
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyTMO(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 751
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_8

    .line 752
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 753
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_9

    .line 754
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyPermanentDataIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 756
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 762
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    goto :goto_9

    .line 774
    :cond_c
    const/4 v8, 0x1

    goto :goto_5

    .line 776
    .restart local v8    # "showAirplane":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method refreshViews()V
    .locals 19

    .prologue
    .line 2694
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 2696
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2697
    .local v6, "combinedSignalIconId":I
    const-string v5, ""

    .line 2698
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v15, ""

    .line 2699
    .local v15, "wifiLabel":Ljava/lang/String;
    const-string v13, ""

    .line 2701
    .local v13, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v8

    .line 2704
    .local v8, "emergencyOnly":Z
    const-string v12, ""

    .line 2707
    .local v12, "mATTmobileLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 2708
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2709
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2710
    const-string v13, ""

    .line 2865
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1b

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_18

    .line 2867
    const v16, 0x7f0d0295

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2869
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 2924
    :cond_1
    :goto_1
    move-object v5, v15

    .line 2928
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2938
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 2939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d01f7

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2940
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 2941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d0258

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2945
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2947
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2948
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 2952
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d

    const/4 v9, 0x1

    .line 2953
    .local v9, "ethernetConnected":Z
    :goto_3
    if-eqz v9, :cond_3

    .line 2954
    const v16, 0x7f0d02a4

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2957
    :cond_3
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-nez v16, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v16

    if-nez v16, :cond_20

    .line 2965
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d0259

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2967
    const v16, 0x7f020559

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    .line 2968
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2969
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2973
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1e

    .line 2979
    const-string v13, ""

    .line 3047
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 3048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v16, v0

    if-gez v16, :cond_23

    const v16, 0x7f020165

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 3050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v16, v0

    if-gez v16, :cond_24

    const v16, 0x7f020154

    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 3052
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 3056
    :cond_7
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v16, v0

    const v17, 0x7f0206b7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 3057
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 3068
    :cond_9
    const-string v17, "StatusBar.NetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews connected={"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_25

    const-string v16, " wifi"

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_26

    const-string v16, " data"

    :goto_8
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " } level="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    if-nez v16, :cond_27

    const-string v16, "??"

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " combinedSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mobileLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " wifiLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " emergencyOnly="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " combinedLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mAirplaneMode="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataActivity="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataDirectionIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mNoSimIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiActivityIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_28

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 3119
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_a

    .line 2740
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v9    # "ethernetConnected":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2744
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v16, :cond_b

    .line 2745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2751
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 2752
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2754
    move-object v5, v13

    .line 2755
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2759
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v16, :cond_10

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeForSPR:Z

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    move/from16 v16, v0

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 2761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 2772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 2773
    const v16, 0x7f020355

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2845
    :cond_c
    :goto_b
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2847
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_17

    .line 2848
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2856
    :cond_d
    :goto_c
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-nez v16, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 2859
    :cond_e
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2860
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "Invisible Data Activity Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2763
    :pswitch_0
    const v16, 0x7f020353

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_b

    .line 2766
    :pswitch_1
    const v16, 0x7f020356

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_b

    .line 2769
    :pswitch_2
    const v16, 0x7f020354

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_b

    .line 2775
    :cond_f
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_b

    .line 2779
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_14

    .line 2780
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    .line 2796
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 2797
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2803
    :goto_d
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_c

    .line 2804
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataTypeIconIdForSPR()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2782
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2785
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2788
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2791
    :pswitch_6
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_12

    .line 2792
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2799
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2807
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_2

    .line 2823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 2824
    const v16, 0x7f020567

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2831
    :goto_e
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v16, :cond_c

    .line 2832
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 2836
    const-string v16, "StatusBar.NetworkController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2809
    :pswitch_7
    const v16, 0x7f020563

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_e

    .line 2812
    :pswitch_8
    const v16, 0x7f020570

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_e

    .line 2815
    :pswitch_9
    const v16, 0x7f020565

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_e

    .line 2826
    :cond_16
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_e

    .line 2850
    :cond_17
    const v16, 0x7f02055a

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_c

    .line 2872
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2874
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "xxxxXXXXxxxxXXXX"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_3

    .line 2894
    :goto_f
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v16, :cond_19

    .line 2895
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 2899
    :cond_19
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v16, :cond_1

    .line 2900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2901
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "KT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 2902
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getKTWifiActivityIcon()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2879
    :pswitch_a
    const v16, 0x7f020563

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2882
    :pswitch_b
    const v16, 0x7f020570

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2885
    :pswitch_c
    const v16, 0x7f020565

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2888
    :pswitch_d
    const v16, 0x7f020567

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2904
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getLGTWifiActivityIcon()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2931
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 2932
    const-string v15, ""

    goto/16 :goto_2

    .line 2934
    :cond_1c
    const v16, 0x7f0d0294

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 2952
    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2981
    .restart local v9    # "ethernetConnected":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1f

    .line 2983
    const-string v15, ""

    .line 2997
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2998
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 2994
    :cond_1f
    const v16, 0x7f0d0294

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2995
    move-object v5, v15

    goto :goto_10

    .line 3001
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    if-nez v9, :cond_6

    .line 3004
    const v16, 0x7f0d0294

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3022
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 3024
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_12
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3028
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    goto/16 :goto_4

    .line 3022
    :cond_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    goto :goto_11

    .line 3024
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_12

    .line 3048
    :cond_23
    sget-object v16, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v17, v0

    aget v16, v16, v17

    goto/16 :goto_5

    .line 3050
    :cond_24
    sget-object v16, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v17, v0

    aget v16, v16, v17

    goto/16 :goto_6

    .line 3068
    :cond_25
    const-string v16, ""

    goto/16 :goto_7

    :cond_26
    const-string v16, ""

    goto/16 :goto_8

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_9

    .line 3122
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileDataEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_35

    .line 3155
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2a

    .line 3156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 3159
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2b

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 3164
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2c

    .line 3165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 3187
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    .line 3188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 3192
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2e

    .line 3193
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 3197
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2f

    .line 3198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 3201
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_30

    .line 3202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 3205
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_31

    .line 3206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 3210
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_32

    .line 3211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 3214
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v6, :cond_33

    .line 3215
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 3219
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_34

    .line 3220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 3224
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_36

    .line 3225
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3227
    .local v2, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_13
    if-ge v10, v2, :cond_36

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3229
    .local v14, "v":Landroid/widget/TextView;
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3227
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 3150
    .end local v2    # "N":I
    .end local v10    # "i":I
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_29

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3151
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_14

    .line 3234
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_37

    .line 3235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneState:I

    .line 3239
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3240
    .restart local v2    # "N":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_15
    if-ge v10, v2, :cond_39

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3242
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3243
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 3244
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3240
    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 3246
    :cond_38
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 3251
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_39
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "CU"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3a

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3253
    const/4 v10, 0x0

    :goto_17
    if-ge v10, v2, :cond_3c

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3255
    .restart local v14    # "v":Landroid/widget/TextView;
    const v16, 0x104010e

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3253
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 3259
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3260
    const/4 v10, 0x0

    :goto_18
    if-ge v10, v2, :cond_3c

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3262
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3263
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 3264
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3260
    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 3283
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3284
    const/4 v10, 0x0

    :goto_19
    if-ge v10, v2, :cond_3e

    .line 3285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3286
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_3d

    .line 3287
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3288
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3289
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3290
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "update carrier label"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 3292
    :cond_3d
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 3298
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3f

    .line 3299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3302
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_40

    .line 3303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 3306
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_41

    .line 3307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3312
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_42

    .line 3313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 3316
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_43

    .line 3317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3320
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_44

    .line 3321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    .line 3324
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_45

    .line 3325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    .line 3328
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_46

    .line 3329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3332
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileDataEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_47

    .line 3333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileDataEnabled:Z

    .line 3336
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCarrierText()V

    .line 3337
    return-void

    .line 2761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2780
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2807
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2877
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 585
    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V

    .line 635
    return-void
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    return-void
.end method

.method public scanForAccessPoints()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->scan()V

    .line 640
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    .line 690
    return-void
.end method

.method public setStackedMode(Z)V
    .locals 1
    .param p1, "stacked"    # Z

    .prologue
    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 824
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 649
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 663
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 13

    .prologue
    const/16 v12, 0x333

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1344
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 1348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1352
    const-string v7, "USA"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1353
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1355
    .local v5, "mNotiManager":Landroid/app/NotificationManager;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v7, :cond_2

    .line 1356
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1357
    .local v6, "settinglaunchIntent":Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v10, "com.android.settings.Settings$AirplaneModeSettingsActivity"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    const v7, 0x10008000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1359
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1361
    .local v1, "airplanePendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1362
    .local v2, "airplaneoffIntent":Landroid/content/Intent;
    const-string v7, "com.android.systemui.action.airplane_off"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v10, 0x10000000

    invoke-static {v7, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1365
    .local v3, "airplaneoffPendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1366
    .local v0, "airplaneNoti":Landroid/app/Notification$Builder;
    const v7, 0x7f020347

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d04a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d04a9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1372
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1373
    .local v4, "mAirplaneNotification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1374
    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 1375
    iput v8, v4, Landroid/app/Notification;->priority:I

    .line 1376
    iput v8, v4, Landroid/app/Notification;->visibility:I

    .line 1377
    const v7, 0x10101010

    iput v7, v4, Landroid/app/Notification;->commonValue:I

    .line 1379
    invoke-virtual {v5, v12, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1385
    .end local v0    # "airplaneNoti":Landroid/app/Notification$Builder;
    .end local v1    # "airplanePendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "airplaneoffIntent":Landroid/content/Intent;
    .end local v3    # "airplaneoffPendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "mAirplaneNotification":Landroid/app/Notification;
    .end local v5    # "mNotiManager":Landroid/app/NotificationManager;
    .end local v6    # "settinglaunchIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v7, v9

    .line 1344
    goto/16 :goto_0

    .line 1381
    .restart local v5    # "mNotiManager":Landroid/app/NotificationManager;
    :cond_2
    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2634
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2636
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2639
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 2640
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v3, :cond_3

    .line 2641
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 2642
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2648
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2659
    .local v1, "connectionStatus":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    .line 2660
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 2663
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 2664
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 2675
    :cond_0
    :goto_2
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_1

    .line 2676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkCarrierWifiIcon()V

    .line 2682
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 2684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 2685
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 2686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 2687
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 2688
    return-void

    .end local v1    # "connectionStatus":I
    :cond_2
    move v3, v5

    .line 2639
    goto :goto_0

    .line 2644
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 2645
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 2668
    .restart local v1    # "connectionStatus":I
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v3, :cond_5

    .line 2669
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 2671
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2228
    const-string v2, "CarrierLabel"

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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2232
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2235
    .local v0, "something":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2236
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v5, :cond_0

    if-ne p3, v5, :cond_0

    .line 2237
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 2238
    const/4 p1, 0x0

    .line 2243
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 2244
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    const/4 v0, 0x1

    .line 2247
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 2248
    if-eqz v0, :cond_2

    .line 2249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    const/4 v0, 0x1

    .line 2256
    :cond_3
    if-eqz v0, :cond_a

    .line 2257
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_8

    .line 2258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2259
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2287
    :cond_4
    :goto_0
    return-void

    .line 2260
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x1040398

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2264
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x13

    if-le v2, v3, :cond_7

    .line 2265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2268
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2271
    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-eqz v2, :cond_9

    .line 2272
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2276
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2280
    :cond_a
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_b

    .line 2281
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2283
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2296
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2297
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 2300
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2301
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 2302
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2303
    const/4 p1, 0x0

    .line 2308
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 2309
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    const/4 v0, 0x1

    .line 2312
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 2313
    if-eqz v0, :cond_2

    .line 2314
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2317
    const/4 v0, 0x1

    .line 2319
    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    .line 2320
    if-eqz v0, :cond_4

    .line 2321
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    const/4 v0, 0x1

    .line 2327
    :cond_5
    if-eqz v0, :cond_8

    .line 2328
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-eqz v2, :cond_7

    .line 2329
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2339
    :cond_6
    :goto_0
    return-void

    .line 2333
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2336
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1202
    const-string v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1204
    .local v5, "stateExtra":Ljava/lang/String;
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState, sim state is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1210
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "absentReason":Ljava/lang/String;
    const-string v6, "PERM_DISABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1212
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1262
    .end local v0    # "absentReason":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1264
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1265
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 1214
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1218
    .end local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    const-string v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1219
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1221
    :cond_2
    const-string v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "IMSI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1224
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1226
    :cond_4
    const-string v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1227
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, "lockedReason":Ljava/lang/String;
    const-string v6, "PIN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1230
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1232
    :cond_5
    const-string v6, "PUK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1233
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1242
    :cond_6
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "NETWORK_LOCKED"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1248
    :goto_2
    :try_start_1
    const-class v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "PERSO_LOCKED"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1250
    :catch_0
    move-exception v2

    .line 1251
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateSimState:PERSO_LOCKED is not a constant in State"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1244
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1245
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateSimState:NETWORK_LOCKED is not a constant in State"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1255
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "lockedReason":Ljava/lang/String;
    :cond_7
    const-string v6, "NOT_READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1256
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1258
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1267
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState:mSimState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method protected updateWifiIcons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2419
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2420
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v1, :cond_2

    .line 2421
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2422
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2423
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 2427
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v1, :cond_0

    .line 2428
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2432
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v1, :cond_1

    .line 2433
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    if-eqz v1, :cond_1

    .line 2434
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2448
    :cond_1
    :goto_0
    return-void

    .line 2439
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_3

    .line 2440
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2441
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2446
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0235

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 2443
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    const v1, 0x7f020597

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2444
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_4

    const v2, 0x7f020165

    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    goto :goto_1

    :cond_5
    move v1, v2

    .line 2443
    goto :goto_2
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2370
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2372
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 2415
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 2416
    return-void

    :cond_1
    move v4, v5

    .line 2372
    goto :goto_0

    .line 2375
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2376
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 2378
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 2379
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 2381
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_6

    .line 2383
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 2384
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 2385
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2387
    :cond_3
    if-eqz v1, :cond_5

    .line 2388
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2393
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    .line 2394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkCarrierWifiIcon()V

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 2379
    goto :goto_2

    .line 2390
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 2397
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 2398
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 2400
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2410
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    .line 2411
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    goto :goto_1
.end method

.method protected updateWimaxIcons()V
    .locals 4

    .prologue
    .line 2609
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    .line 2610
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 2611
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2612
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    if-eqz v1, :cond_0

    .line 2613
    sget v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 2616
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    .line 2625
    .end local v0    # "inetCondition":I
    :goto_1
    return-void

    .line 2615
    .restart local v0    # "inetCondition":I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0

    .line 2619
    .end local v0    # "inetCondition":I
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 2620
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d023c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 2623
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_1
.end method

.method protected final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2583
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2584
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 2585
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2586
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2588
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 2603
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 2605
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 2606
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 2588
    goto :goto_0

    .line 2590
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2591
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    goto :goto_1

    .line 2592
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2593
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 2595
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 2598
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 2600
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 2598
    goto :goto_2

    :cond_5
    move v3, v4

    .line 2600
    goto :goto_3
.end method
