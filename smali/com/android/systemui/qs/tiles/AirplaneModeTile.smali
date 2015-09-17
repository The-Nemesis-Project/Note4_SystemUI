.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirplaneModeTile.java"


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
.field private static final REASON_USB30:Ljava/lang/String; = "airplane_mode_on_reason_usb3"

.field private static final TAG:Ljava/lang/String; = "AirplaneModeTile"

.field private static final sSupportMovialWFC:Z

.field private static final sSupportSecWFC:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertShowing:Z

.field private mIsWaitingForEcmExit:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    .line 79
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    .line 230
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 84
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 102
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on_reason_usb3"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportSecWFC:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->sSupportMovialWFC:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 283
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$Host;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mNotUseServiceStateForAirplaneCTC:Z

    if-nez v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 302
    .local v1, "mgr":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 304
    .end local v1    # "mgr":Landroid/telephony/TelephonyManager;
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "usb"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 308
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 315
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    iput v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 316
    return-void

    .line 315
    :cond_2
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 3

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 475
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 162
    return-void
.end method

.method private showConfirmCheckboxPopup(Z)V
    .locals 11
    .param p1, "state"    # Z

    .prologue
    .line 401
    const/4 v4, 0x0

    .line 403
    .local v4, "isVzwUsb30Popup":Z
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0400ca

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 404
    .local v0, "airPlaneMessageDataAlertView":Landroid/view/View;
    const v8, 0x7f0e03c7

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 405
    .local v2, "contentText":Landroid/widget/TextView;
    const v8, 0x7f0e03c8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 407
    .local v3, "disableAlertCheckBox":Landroid/widget/CheckBox;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0d0444

    .line 410
    .local v7, "resTitle":I
    if-eqz p1, :cond_2

    const v6, 0x7f0d0398

    .line 412
    .local v6, "resMsg":I
    :goto_0
    if-nez p1, :cond_0

    .line 413
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 416
    :cond_0
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v8}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v8

    if-eqz v8, :cond_1

    .line 419
    const v7, 0x7f0d045a

    .line 420
    const v6, 0x7f0d0459

    .line 421
    const/4 v4, 0x1

    .line 424
    :cond_1
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 427
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 428
    if-eqz v4, :cond_3

    const v8, 0x1040895

    :goto_1
    new-instance v9, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;

    invoke-direct {v9, p0, p1, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;ZLandroid/widget/CheckBox;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    const/high16 v8, 0x1040000

    new-instance v9, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$9;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 455
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$10;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 460
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v8}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 462
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 463
    .local v5, "kgm":Landroid/app/KeyguardManager;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 464
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 469
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 470
    return-void

    .line 410
    .end local v5    # "kgm":Landroid/app/KeyguardManager;
    .end local v6    # "resMsg":I
    :cond_2
    const v6, 0x7f0d0446

    goto/16 :goto_0

    .line 428
    .restart local v6    # "resMsg":I
    :cond_3
    if-eqz p1, :cond_4

    const v8, 0x1040738

    goto :goto_1

    :cond_4
    const v8, 0x1040737

    goto :goto_1

    .line 466
    .restart local v5    # "kgm":Landroid/app/KeyguardManager;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d8

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private showConfirmPopup(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const v4, 0x7f0d0446

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, "isVzwUsb30Popup":Z
    if-eqz p1, :cond_2

    const v3, 0x7f0d0443

    .line 324
    .local v3, "resTitle":I
    :goto_0
    const/4 v2, 0x0

    .line 331
    .local v2, "resMsg":I
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v5, :cond_4

    .line 332
    if-eqz p1, :cond_3

    const v2, 0x7f0d043f

    .line 337
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mNotUseServiceStateForAirplaneCTC:Z

    if-nez v4, :cond_0

    .line 338
    const-string v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    :cond_0
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    const v3, 0x7f0d045a

    .line 353
    const v2, 0x7f0d0459

    .line 355
    const/4 v0, 0x1

    .line 357
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-eqz v0, :cond_6

    const v4, 0x1040895

    :goto_2
    new-instance v6, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 384
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 389
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 391
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 392
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 393
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 397
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 398
    return-void

    .line 321
    .end local v1    # "kgm":Landroid/app/KeyguardManager;
    .end local v2    # "resMsg":I
    .end local v3    # "resTitle":I
    :cond_2
    const v3, 0x7f0d0444

    goto/16 :goto_0

    .restart local v2    # "resMsg":I
    .restart local v3    # "resTitle":I
    :cond_3
    move v2, v4

    .line 332
    goto/16 :goto_1

    .line 334
    :cond_4
    if-eqz p1, :cond_5

    const v2, 0x7f0d046f

    :goto_4
    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto :goto_4

    .line 357
    :cond_6
    if-eqz p1, :cond_7

    const v4, 0x1040738

    goto :goto_2

    :cond_7
    const v4, 0x1040737

    goto :goto_2

    .line 395
    .restart local v1    # "kgm":Landroid/app/KeyguardManager;
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_3
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0275

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0274

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleClick()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 125
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v2, v5

    .line 126
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isAirplaneModeAllowed"

    invoke-static {v3, v6, v7, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "isAirplaneModeAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, "isSettingsChangesAllowed":I
    if-eq v0, v8, :cond_2

    if-eq v1, v8, :cond_2

    .line 131
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 132
    :cond_0
    const-string v3, "AirplaneModeTile"

    const-string v4, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const-string v6, "AirplaneModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v3, v9, :cond_1

    .line 141
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    .line 142
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mAirplaneMsgOnlyForVZW:Z

    if-eqz v3, :cond_8

    .line 143
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "tw_globalactions_dont_show_again"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(Z)V

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    .line 146
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(Z)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_2

    .line 149
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_7

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_3

    .line 153
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-nez v3, :cond_9

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmPopup(Z)V

    goto :goto_0

    :cond_9
    move v4, v5

    goto :goto_4
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 480
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 483
    return-void
.end method

.method public handleLongClick()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 493
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 494
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isAirplaneModeAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 496
    .local v0, "isAirplaneModeAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 498
    .local v1, "isSettingsChangesAllowed":I
    if-eq v0, v6, :cond_1

    if-eq v1, v6, :cond_1

    .line 499
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 500
    :cond_0
    const-string v3, "AirplaneModeTile"

    const-string v4, "onClick(): AirplaneMode state change is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$AirplaneModeSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleLongClick()V

    .line 488
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d033a

    .line 174
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 178
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0339

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 194
    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_1
    return-void

    .line 174
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 196
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0205fc

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 197
    const v1, 0x7f0d033b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 202
    :pswitch_1
    const v1, 0x7f0205fb

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 203
    const v1, 0x7f0d033c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 208
    :pswitch_2
    const v1, 0x7f0205fa

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 209
    const v1, 0x7f0d033d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 194
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
    .line 66
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 228
    return-void
.end method
