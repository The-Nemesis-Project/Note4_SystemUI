.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# static fields
.field public static final ACTION_DND_OFF:Ljava/lang/String; = "com.android.systemui.action.dnd_off"

.field private static final DEBUG:Z

.field private static final SHOW_SYNC_ICON:Z = false

.field private static final SLOT_ALARM_CLOCK:Ljava/lang/String; = "alarm_clock"

.field private static final SLOT_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final SLOT_CAST:Ljava/lang/String; = "cast"

.field private static final SLOT_CDMA_ERI:Ljava/lang/String; = "cdma_eri"

.field private static final SLOT_SYNC_ACTIVE:Ljava/lang/String; = "sync_active"

.field private static final SLOT_TTY:Ljava/lang/String; = "tty"

.field private static final SLOT_VOLUME:Ljava/lang/String; = "volume"

.field private static final SLOT_ZEN:Ljava/lang/String; = "zen"

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarPolicy"


# instance fields
.field private isPreviousVersion:Z

.field private mBluetoothEnabled:Z

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mVolumeVisible:Z

.field private mZen:I

.field private mZenVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cast"    # Lcom/android/systemui/statusbar/policy/CastController;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 92
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    .line 95
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 97
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isPreviousVersion:Z

    .line 99
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 139
    const-string v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v3, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v3, "com.android.systemui.action.dnd_off"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "emergency_mode"

    const/4 v7, -0x2

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    .line 160
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 163
    .local v2, "numPhones":I
    new-array v3, v2, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v3, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "numPhones":I
    :cond_0
    move v3, v5

    .line 156
    goto :goto_0

    .line 169
    .restart local v1    # "i":I
    .restart local v2    # "numPhones":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "tty"

    const v7, 0x7f020577

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "tty"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    const v7, 0x7f02045f

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cdma_eri"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "alarm_clock"

    const v7, 0x7f020358

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "alarm_clock"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 184
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "sync_active"

    const v7, 0x7f020576

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "sync_active"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "zen"

    const v7, 0x7f020598

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "zen"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 193
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    const v7, 0x7f02045e

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cast"

    const v7, 0x7f02035a

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "cast"

    invoke-virtual {v3, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    .line 203
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isPreviousVersion:Z

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method private updateAlarm()V
    .locals 4

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 221
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 222
    .local v1, "alarmSet":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "alarm_clock"

    invoke-virtual {v2, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 223
    return-void

    .line 221
    .end local v1    # "alarmSet":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final updateBluetooth()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 393
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const v2, 0x7f02036f

    .line 394
    .local v2, "iconId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0222

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 398
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 399
    const v2, 0x7f020370

    .line 400
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0221

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "bluetooth"

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 408
    return-void

    :cond_1
    move v3, v4

    .line 397
    goto :goto_0

    .line 403
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    goto :goto_1
.end method

.method private updateCast()V
    .locals 9

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, "isCasting":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 433
    .local v0, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 435
    :cond_1
    const/4 v2, 0x1

    .line 439
    .end local v0    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCast: isCasting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_3
    if-eqz v2, :cond_4

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    const v5, 0x7f02035a

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0262

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 444
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "cast"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 445
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 233
    const-string v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v6, "subscription"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 237
    .local v4, "subId":J
    const-string v6, "PhoneStatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState for subId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    .line 239
    .local v1, "phoneId":I
    const-string v6, "PhoneStatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState for phoneId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v6, "PhoneStatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState for Slot :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-ltz v1, :cond_0

    .line 242
    const-string v6, "ABSENT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 266
    .local v2, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v6, v1

    .line 268
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    return-void

    .line 245
    :cond_1
    const-string v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 248
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 249
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 251
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v6, "LOCKED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 252
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v6, "PIN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 255
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 257
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    const-string v6, "PUK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 258
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 261
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 264
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v2    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 411
    const-string v4, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, "currentTtyMode":I
    if-eqz v0, :cond_2

    move v1, v2

    .line 415
    .local v1, "enabled":Z
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTTY: enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    if-eqz v1, :cond_3

    .line 419
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "PhoneStatusBarPolicy"

    const-string v5, "updateTTY: set TTY on"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "tty"

    const v6, 0x7f020577

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f0d025f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v3, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 428
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_2
    move v1, v3

    .line 413
    goto :goto_0

    .line 425
    .restart local v1    # "enabled":Z
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "PhoneStatusBarPolicy"

    const-string v4, "updateTTY: set TTY off"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v4, "tty"

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateVolumeZen()V
    .locals 23

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 273
    .local v4, "audioManager":Landroid/media/AudioManager;
    const/16 v18, 0x0

    .line 274
    .local v18, "zenVisible":Z
    const/16 v17, 0x0

    .line 275
    .local v17, "zenIconId":I
    const/16 v16, 0x0

    .line 277
    .local v16, "zenDescription":Ljava/lang/String;
    const/4 v14, 0x0

    .line 278
    .local v14, "volumeVisible":Z
    const/4 v13, 0x0

    .line 279
    .local v13, "volumeIconId":I
    const/4 v12, 0x0

    .line 283
    .local v12, "volumeDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "notification"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 287
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 288
    new-instance v19, Landroid/content/ComponentName;

    const-string v20, "com.android.settings"

    const-string v21, "com.android.settings.Settings$ZenModeDNDSettingsActivity"

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 291
    .local v7, "dndSettingIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 294
    .local v8, "dndSettingPendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v5, "dndOffIntent":Landroid/content/Intent;
    const-string v19, "com.android.systemui.action.dnd_off"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x10000000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 299
    .local v6, "dndOffPendingIntent":Landroid/app/PendingIntent;
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d04b6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    const v20, 0x7f020341

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d04b8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 308
    .local v10, "notiBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 309
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 314
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v15

    .line 315
    .local v15, "zenConfig":Landroid/service/notification/ZenModeConfig;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    iget-boolean v0, v15, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 317
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d04b7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v15    # "zenConfig":Landroid/service/notification/ZenModeConfig;
    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 325
    .local v11, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x7f020341

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 350
    .end local v5    # "dndOffIntent":Landroid/content/Intent;
    .end local v6    # "dndOffPendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "dndSettingIntent":Landroid/content/Intent;
    .end local v8    # "dndSettingPendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v11    # "notification":Landroid/app/Notification;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->isPreviousVersion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 351
    :cond_3
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 352
    const/4 v14, 0x1

    .line 353
    const v13, 0x7f02045e

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0d0260

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 358
    :cond_4
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    if-nez v19, :cond_5

    .line 359
    const/4 v14, 0x1

    .line 360
    const v13, 0x7f02045d

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0d0261

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 382
    :cond_5
    if-eqz v14, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v19, v0

    const-string v20, "volume"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v13, v2, v12}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 385
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v14, v0, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    move-object/from16 v19, v0

    const-string v20, "volume"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 387
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 389
    :cond_7
    return-void

    .line 311
    .restart local v5    # "dndOffIntent":Landroid/content/Intent;
    .restart local v6    # "dndOffPendingIntent":Landroid/app/PendingIntent;
    .restart local v7    # "dndSettingIntent":Landroid/content/Intent;
    .restart local v8    # "dndSettingPendingIntent":Landroid/app/PendingIntent;
    .restart local v10    # "notiBuilder":Landroid/app/Notification$Builder;
    :cond_8
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v9

    .line 320
    .local v9, "e":Ljava/lang/Exception;
    const-string v19, "PhoneStatusBarPolicy"

    const-string v20, "updateVolumeZen : Failed to get zenconfig"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 327
    .end local v5    # "dndOffIntent":Landroid/content/Intent;
    .end local v6    # "dndOffPendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "dndSettingIntent":Landroid/content/Intent;
    .end local v8    # "dndSettingPendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "notiBuilder":Landroid/app/Notification$Builder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const v21, 0x7f020341

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v19 .. v22}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public setEmergencyMode(Z)V
    .locals 0
    .param p1, "emergencyMode"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mEmergencyMode:Z

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 216
    return-void
.end method

.method public setZenMode(I)V
    .locals 0
    .param p1, "zen"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZen:I

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 209
    return-void
.end method
