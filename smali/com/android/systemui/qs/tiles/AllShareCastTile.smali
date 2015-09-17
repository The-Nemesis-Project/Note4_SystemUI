.class public Lcom/android/systemui/qs/tiles/AllShareCastTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AllShareCastTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field private static final TAG:Ljava/lang/String; = "AllShareCastTile"


# instance fields
.field private INFO_TYPE_DPM_WIFI:I

.field private isRegistered:Z

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->INFO_TYPE_DPM_WIFI:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->isRegistered:Z

    .line 130
    new-instance v0, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile$2;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "wifi_display_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile$1;-><init>(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/AllShareCastTile;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplayStatus;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AllShareCastTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AllShareCastTile;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AllShareCastTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AllShareCastTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private checkAndShowToastMessage()V
    .locals 4

    .prologue
    .line 283
    :try_start_0
    const-string v2, "AllShareCastTile"

    const-string v3, "WiFi restricted by Device Management."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "wifiToastIntent":Landroid/content/Intent;
    const-string v2, "info_type"

    iget v3, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->INFO_TYPE_DPM_WIFI:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "wifiToastIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AllShareCastTile"

    const-string v3, "checkAndShowToastMessage"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private hasPendingDialogs()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 157
    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActivityRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 265
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 267
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 268
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    const/4 v5, 0x1

    .line 273
    .end local v2    # "className":Ljava/lang/String;
    :goto_1
    return v5

    .line 267
    .restart local v2    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleClick()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 162
    const-string v6, "AllShareCastTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-array v3, v9, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v3, v8

    .line 169
    .local v3, "selectionArgs":[Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "true"

    aput-object v5, v4, v8

    .line 170
    .local v4, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v5, v6, v7, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "isSettingsChangesAllowed":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isWifiEnabled"

    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, "isWifiAllowed":I
    if-eq v2, v10, :cond_2

    .line 176
    if-nez v2, :cond_2

    .line 177
    const-string v5, "AllShareCastTile"

    const-string v6, "onClick(): AllShareCast state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->checkAndShowToastMessage()V

    goto :goto_0

    .line 182
    :cond_2
    if-eq v1, v10, :cond_3

    .line 183
    if-nez v1, :cond_3

    .line 184
    const-string v5, "AllShareCastTile"

    const-string v6, "onClick(): AllShareCast state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v5, v11, :cond_b

    .line 191
    const-string v5, "AllShareCastTile"

    const-string v6, "Enable Wifi display"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v5, "wlan.wfd.settingontop"

    const-string v6, "-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "wlan.wfd.settingontop"

    const-string v6, "-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->hasPendingDialogs()Z

    move-result v5

    if-nez v5, :cond_9

    .line 196
    const-string v5, "wlan.wfd.pickerdialogontop"

    const-string v6, "-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "wlan.wfd.pickerdialogontop"

    const-string v6, "-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 197
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "show_dialog_once"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v5, "tag_write_if_success"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const/high16 v5, 0x14800000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 222
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto/16 :goto_0

    .line 206
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 207
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_1

    .line 212
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-nez v5, :cond_a

    .line 213
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5, v9}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    goto :goto_1

    .line 215
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    goto :goto_1

    .line 217
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v5, v11, :cond_6

    .line 218
    const-string v5, "AllShareCastTile"

    const-string v6, "Disable wifi display"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 95
    return-void
.end method

.method public handleLongClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 236
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "true"

    aput-object v2, v1, v5

    .line 237
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 240
    if-nez v0, :cond_0

    .line 241
    const-string v2, "AllShareCastTile"

    const-string v3, "onClick(): BlockingMode state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiDisplaySettingsActivity"

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->isActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    :cond_2
    const-string v2, "wlan.wfd.pickerdialogontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-eq v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 254
    :cond_4
    const-string v2, "AllShareCastTile"

    const-string v3, "PickDialog on the top onPause status and long click to launch setting"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    :cond_5
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiDisplaySettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleLongClick()V

    .line 231
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d034c

    .line 104
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 108
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 110
    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_1
    return-void

    .line 104
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 112
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f02064c

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 113
    const v1, 0x7f0d033b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 118
    :pswitch_1
    const v1, 0x7f02064b

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 119
    const v1, 0x7f0d033c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 124
    :pswitch_2
    const v1, 0x7f02064a

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 125
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 110
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
    .line 48
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mSettingSM:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AllShareCastTile;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 88
    return-void

    :cond_0
    move v2, v3

    .line 86
    goto :goto_0
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AllShareCastTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
