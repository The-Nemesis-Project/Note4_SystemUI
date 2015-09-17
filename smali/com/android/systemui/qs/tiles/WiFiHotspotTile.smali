.class public Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WiFiHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field private static final KEY_LAST_USED_DATE:Ljava/lang/String; = "lastUsedDate"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "HotspotTile"

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_AP_STATE_DISABLED:I = 0xb

.field private static final WIFI_AP_STATE_ENABLED:I = 0xd

.field private static final WIFI_AP_STATE_FAILED:I = 0xe

.field private static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private final mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mDefaultSSIDPwd:Ljava/lang/String;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 78
    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    .line 107
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 116
    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 120
    new-instance v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->init()V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateTetherState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method private dimClick()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method private generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 18
    .param p1, "wifiMgr"    # Landroid/net/wifi/WifiManager;
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 815
    const/4 v8, 0x0

    .line 816
    .local v8, "number":Ljava/lang/String;
    const-string v3, ""

    .line 817
    .local v3, "defaultNumber":Ljava/lang/String;
    const-string v2, ""

    .line 818
    .local v2, "SSID":Ljava/lang/String;
    const-string v4, ""

    .line 820
    .local v4, "defaultSSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 821
    .local v7, "mgr":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_0

    .line 822
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    .line 824
    :cond_0
    if-nez v8, :cond_1

    .line 825
    const-string v8, ""

    .line 828
    :cond_1
    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 829
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d041f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 835
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 836
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x4

    const/16 v17, 0x4

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, "last4digitNum":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 838
    move-object v3, v6

    .line 846
    .end local v6    # "last4digitNum":Ljava/lang/String;
    :goto_1
    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 847
    .restart local p2    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p2

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 848
    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 850
    const-string v15, "WPA2/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "WPA/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 851
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 853
    .local v10, "randomUUID":Ljava/lang/String;
    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 854
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x9

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 871
    :cond_3
    :goto_2
    const-string v15, "WPA2/PSK"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 872
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 881
    .end local v10    # "randomUUID":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 882
    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 886
    :goto_4
    return-void

    .line 831
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 832
    .local v14, "splitSSID":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v2, v14, v15

    goto/16 :goto_0

    .line 840
    .end local v14    # "splitSSID":[Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 841
    .local v11, "rnd":Ljava/util/Random;
    const/16 v15, 0x2327

    invoke-virtual {v11, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int/lit16 v12, v15, 0x3e8

    .line 842
    .local v12, "sequence":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 843
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 856
    .end local v11    # "rnd":Ljava/util/Random;
    .end local v12    # "sequence":I
    .restart local v10    # "randomUUID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 857
    .local v13, "splitPwd":[Ljava/lang/String;
    array-length v15, v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 858
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x9

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 860
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .local v9, "pwd":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_5
    array-length v15, v13

    if-ge v5, v15, :cond_3

    .line 862
    const-string v15, "LAST4DIGIT"

    aget-object v16, v13, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 863
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 861
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 865
    :cond_8
    aget-object v15, v13, v5

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 874
    .end local v5    # "i":I
    .end local v9    # "pwd":Ljava/lang/StringBuilder;
    .end local v13    # "splitPwd":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 877
    .end local v10    # "randomUUID":Ljava/lang/String;
    :cond_a
    const-string v15, ""

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 878
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 884
    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_4
.end method

.method private init()V
    .locals 4

    .prologue
    .line 426
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 427
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v2, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v2, :cond_0

    .line 434
    const-string v2, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 443
    .local v1, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .line 444
    return-void

    .line 436
    .end local v1    # "mgr":Landroid/net/ConnectivityManager;
    :cond_0
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 4

    .prologue
    .line 544
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 546
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "HotspotTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getReadySimCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isMSim()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 553
    :cond_2
    const/4 v1, 0x0

    .line 555
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v8, -0x2

    const/4 v4, 0x1

    .line 447
    const/4 v2, 0x0

    .line 449
    .local v2, "wifiState":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 450
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 452
    const-string v3, "HotspotTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v9, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 457
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v3, :cond_1

    if-ne p1, v4, :cond_1

    .line 458
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    const-string v3, "HotspotTile"

    const-string v4, "send WIFIAP_ENABLE_WARNING"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    if-ne p1, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-ne v2, v9, :cond_3

    .line 464
    :cond_2
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 466
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 467
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 468
    const-string v3, "wifi_ap_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 470
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    const/4 v6, 0x0

    if-ne p1, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 473
    if-nez p1, :cond_0

    .line 474
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_saved_state"

    invoke-static {v3, v6, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 476
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    new-instance v4, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/qs/QSTile$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v3, v5

    .line 470
    goto :goto_1
.end method

.method private showAttentionDialog(Z)V
    .locals 9
    .param p1, "state"    # Z

    .prologue
    .line 612
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 701
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 617
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 618
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ja"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v2, "ja"

    .line 619
    .local v2, "language":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<!DOCTYPE html><html lang=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<head><meta charset=\"UTF-8\" /><style>.center { text-align: center; }</style></head>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<body><p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d0419

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</p><p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d041a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</p><p class=\"center\"><a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".html\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0d041b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</a></p>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</body></html>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "summary":Ljava/lang/String;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "attentionView":Landroid/webkit/WebView;
    new-instance v6, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 648
    const-string v6, "text/html; charset=utf-8"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$13;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$13;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$12;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$12;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 686
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$14;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 692
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 694
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 695
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 696
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 700
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 618
    .end local v0    # "attentionView":Landroid/webkit/WebView;
    .end local v1    # "kgm":Landroid/app/KeyguardManager;
    .end local v2    # "language":Ljava/lang/String;
    .end local v5    # "summary":Ljava/lang/String;
    :cond_1
    const-string v2, "en"

    goto/16 :goto_1

    .line 698
    .restart local v0    # "attentionView":Landroid/webkit/WebView;
    .restart local v1    # "kgm":Landroid/app/KeyguardManager;
    .restart local v2    # "language":Ljava/lang/String;
    .restart local v5    # "summary":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private showBatteryUsageWarningDialog(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 704
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d041d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d041c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$16;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$15;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 739
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$18;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 745
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 747
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 748
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 754
    return-void

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private showWarningDialog(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :goto_0
    return-void

    .line 563
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0417

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0418

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 594
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 600
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 602
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 603
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 608
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private updateState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 492
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 503
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iput p1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 504
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->refreshState()V

    .line 505
    return-void
.end method

.method private updateTetherState(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 508
    const/4 v13, 0x0

    .line 509
    .local v13, "tethered":Z
    const/4 v5, 0x0

    .line 511
    .local v5, "errored":Z
    const-string v14, "activeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 513
    .local v3, "arrayActiveTether":[Ljava/lang/Object;
    const-string v14, "erroredArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 516
    .local v4, "arrayErroredTether":[Ljava/lang/Object;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v10, v1, v7

    .local v10, "o":Ljava/lang/Object;
    move-object v12, v10

    .line 517
    check-cast v12, Ljava/lang/String;

    .line 518
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v11, v2, v6

    .line 519
    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 520
    const/4 v13, 0x1

    .line 518
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 516
    .end local v11    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 524
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "o":Ljava/lang/Object;
    .end local v12    # "s":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v10, v1, v7

    .restart local v10    # "o":Ljava/lang/Object;
    move-object v12, v10

    .line 525
    check-cast v12, Ljava/lang/String;

    .line 526
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v11, v2, v6

    .line 527
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 528
    const/4 v5, 0x1

    .line 526
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 524
    .end local v11    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_2

    .line 533
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "o":Ljava/lang/Object;
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_6

    .line 534
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 536
    :cond_6
    const-string v14, "HotspotTile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTetherState():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d028b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d028a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleClick()V
    .locals 15

    .prologue
    .line 164
    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "false"

    aput-object v13, v9, v12

    .line 165
    .local v9, "selectionArgs":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v14, "isWifiTetheringEnabled"

    invoke-static {v12, v13, v14, v9}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, "isWifiTetheringEnabled":I
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v14, "isSettingsChangesAllowed"

    invoke-static {v12, v13, v14, v9}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, "isSettingsChangesAllowed":I
    const/4 v12, -0x1

    if-eq v5, v12, :cond_2

    const/4 v12, -0x1

    if-eq v3, v12, :cond_2

    .line 170
    if-eqz v5, :cond_0

    if-nez v3, :cond_2

    .line 171
    :cond_0
    const-string v12, "HotspotTile"

    const-string v13, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    const/4 v10, 0x1

    .line 178
    .local v10, "state":Z
    :goto_1
    const-string v12, "HotspotTile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleClick : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->dimClick()V

    goto :goto_0

    .line 176
    .end local v10    # "state":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 184
    .restart local v10    # "state":Z
    :cond_4
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v12}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v12

    if-eqz v12, :cond_5

    .line 185
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v13, 0x7f0d039f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :cond_5
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v12, :cond_6

    .line 191
    :try_start_0
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "toddler_mode_switch"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 193
    .local v4, "isToddlerMode":I
    const/4 v12, 0x1

    if-ne v4, v12, :cond_6

    .line 194
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v13, 0x7f0d03a0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v4    # "isToddlerMode":I
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 204
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotUSA:Z

    if-eqz v12, :cond_8

    .line 205
    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 206
    if-eqz v10, :cond_7

    const/4 v12, 0x1

    :goto_2
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    goto :goto_0

    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 211
    :cond_8
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 214
    .local v7, "mgr":Landroid/telephony/TelephonyManager;
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 216
    .local v11, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->isSimReady()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_c

    .line 217
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-nez v12, :cond_1

    .line 220
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "operator":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v12, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v12, :cond_a

    .line 226
    const v12, 0x7f0d0386

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v12, 0x7f0d0387

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 233
    :goto_3
    const v12, 0x104000a

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v1, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v12}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 241
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, "alert":Landroid/app/AlertDialog;
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v13, "keyguard"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 243
    .local v6, "kgm":Landroid/app/KeyguardManager;
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d9

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    .line 248
    :goto_4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 249
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 250
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$3;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "kgm":Landroid/app/KeyguardManager;
    :cond_a
    const v12, 0x7f0d0384

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 230
    const v12, 0x7f0d0385

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 246
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    .restart local v6    # "kgm":Landroid/app/KeyguardManager;
    :cond_b
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x7d8

    invoke-virtual {v12, v13}, Landroid/view/Window;->setType(I)V

    goto :goto_4

    .line 264
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "kgm":Landroid/app/KeyguardManager;
    .end local v8    # "operator":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 266
    if-eqz v10, :cond_f

    .line 267
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto/16 :goto_0

    .line 271
    :cond_d
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f

    .line 272
    iget-object v12, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v12, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v12, v12, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    :goto_5
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showWarningDialog(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto :goto_5

    .line 276
    :cond_f
    const/4 v12, 0x3

    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->updateState(I)V

    .line 277
    if-eqz v10, :cond_10

    const/4 v12, 0x1

    :goto_6
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->setMode(I)V

    goto/16 :goto_0

    :cond_10
    const/4 v12, 0x0

    goto :goto_6
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/WiFiHotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 138
    return-void
.end method

.method public handleLongClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 764
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "true"

    aput-object v5, v4, v6

    .line 765
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isWifiTetheringEnabled"

    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 767
    .local v3, "isWifiTetheringEnabled":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 769
    .local v1, "isSettingsChangesAllowed":I
    if-eq v3, v8, :cond_1

    if-eq v1, v8, :cond_1

    .line 770
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 771
    :cond_0
    const-string v5, "HotspotTile"

    const-string v6, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :goto_0
    return-void

    .line 777
    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v5, :cond_2

    .line 779
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 781
    .local v2, "isToddlerMode":I
    if-ne v2, v9, :cond_2

    .line 782
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0d03a0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    .end local v2    # "isToddlerMode":I
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 791
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mMobileHotspotSetting:Z

    if-eqz v5, :cond_3

    .line 792
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_3
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleLongClick()V

    .line 759
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const v3, 0x7f0d0351

    .line 293
    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0372

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 297
    .local v0, "value":I
    :cond_0
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 298
    packed-switch v0, :pswitch_data_0

    .line 334
    :goto_1
    return-void

    .line 296
    .end local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 300
    .restart local v0    # "value":I
    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_2

    .line 301
    const v1, 0x7f020678

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 306
    :goto_2
    const v1, 0x7f0d033b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 304
    :cond_2
    const v1, 0x7f020685

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_2

    .line 311
    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_3

    .line 312
    const v1, 0x7f020677

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 317
    :goto_3
    const v1, 0x7f0d033c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 315
    :cond_3
    const v1, 0x7f020684

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_3

    .line 322
    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_4

    .line 323
    const v1, 0x7f020676

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 328
    :goto_4
    const v1, 0x7f0d033d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 326
    :cond_4
    const v1, 0x7f020683

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_4

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 155
    return-void
.end method
