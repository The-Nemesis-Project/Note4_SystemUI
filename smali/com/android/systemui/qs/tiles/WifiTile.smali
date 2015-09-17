.class public Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
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
.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiQuickSettingButton"

.field private static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field private static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1


# instance fields
.field private INFO_TYPE_DPM_WIFI:I

.field private INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

.field private isRegistered:Z

.field private final mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_DPM_WIFI:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->isRegistered:Z

    .line 68
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 294
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->getWiFiState(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/WifiTile;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->getWiFiState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/tiles/WifiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_DPM_WIFI:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_UNABLE_TO_TURNON_WIFI:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private checkAndShowToastMessage()V
    .locals 4

    .prologue
    .line 285
    :try_start_0
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    const-string v3, "WiFi restricted by Device Management."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "wifiToastIntent":Landroid/content/Intent;
    const-string v2, "info_type"

    iget v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->INFO_TYPE_DPM_WIFI:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v1    # "wifiToastIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "STATUSBAR-WifiQuickSettingButton"

    const-string v3, "checkAndShowToastMessage"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getWiFiState(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 135
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 132
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    .line 171
    const-string v8, "STATUSBAR-WifiQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleClick : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v12, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v3, v7

    .line 176
    .local v3, "selectionArgsFalse":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "true"

    aput-object v5, v4, v7

    .line 178
    .local v4, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v9, "isWifiStateChangeAllowed"

    invoke-static {v5, v8, v9}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "isWifiStateChangeAllowed":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v9, "isWifiEnabled"

    invoke-static {v5, v8, v9, v4}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "isWifiAllowed":I
    if-eq v1, v10, :cond_3

    if-eq v2, v10, :cond_3

    .line 185
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 186
    :cond_2
    const-string v5, "STATUSBAR-WifiQuickSettingButton"

    const-string v6, "onClick(): Wifi state change is not allowed - isWifiAllowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->checkAndShowToastMessage()V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v9, "isSettingsChangesAllowed"

    invoke-static {v5, v8, v9, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "isSettingsChangesAllowed":I
    if-eq v0, v10, :cond_4

    if-nez v0, :cond_4

    .line 196
    const-string v5, "STATUSBAR-WifiQuickSettingButton"

    const-string v6, "onClick(): Wifi state change is not allowed - isSettingsChangesAllowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v11, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 201
    const-string v5, "STATUSBAR-WifiQuickSettingButton"

    const-string v7, "onClick setWifiEnabled"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V

    .line 207
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v11, :cond_0

    .line 208
    invoke-static {v6}, Lcom/android/systemui/wifi/WifiStatusReceiver;->enableToShowWifiPickerDialog(Z)V

    .line 209
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    .line 210
    const-string v5, "STATUSBAR-WifiQuickSettingButton"

    const-string v6, "startScan()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 200
    goto :goto_1

    .line 204
    :cond_6
    const-string v5, "STATUSBAR-WifiQuickSettingButton"

    const-string v7, "!setWifiEnabled"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mCallback:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 167
    return-void
.end method

.method public handleLongClick()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 261
    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v5

    .line 262
    .local v2, "selectionArgsFalse":[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v3, v5

    .line 264
    .local v3, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider2/WifiPolicy"

    const-string v6, "isWifiStateChangeAllowed"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "isWifiAllowed":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/systemui/qs/tiles/WifiTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "isSettingsChangesAllowed":I
    if-eq v1, v7, :cond_1

    if-eq v0, v7, :cond_1

    .line 273
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    const-string v4, "STATUSBAR-WifiQuickSettingButton"

    const-string v5, "onClick(): Wifi state change is not allowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/WifiTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->handleLongClick()V

    .line 255
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0d0341

    .line 220
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 221
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 222
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    .line 224
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0361

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 225
    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 220
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 227
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020681

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 228
    const v1, 0x7f0d033b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 231
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 232
    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    .line 233
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    .line 237
    :pswitch_1
    const v1, 0x7f020680

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 238
    const v1, 0x7f0d033c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 243
    :pswitch_2
    const v1, 0x7f02067f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 244
    const v1, 0x7f0d033d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 225
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
    .line 52
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 160
    return-void
.end method
