.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;
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
.field private static final TW_TAG:Ljava/lang/String; = "WifiCallingTile"


# instance fields
.field private isRegistered:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsProcessing:Z

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStateLocal:Z

.field private mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isRegistered:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    .line 53
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    .line 108
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->init()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhone:Landroid/telephony/TelephonyManager;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mStateLocal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getMode()Z
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    .line 225
    .local v0, "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    :cond_0
    return-void
.end method

.method private setMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 231
    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 125
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v8, :cond_0

    .line 155
    :goto_0
    return-void

    .line 130
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v1, v3

    .line 131
    .local v1, "selectionArgsFalse":[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 133
    .local v2, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v4, v6, v7, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "isSettingsChangesAllowed":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-nez v0, :cond_1

    .line 138
    const-string v4, "WifiCallingTile"

    const-string v5, "onClick(): Wifi calling  state change is not allowed - isSettingsChangesAllowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    move v3, v5

    .line 144
    .local v3, "state":Z
    :cond_2
    const-string v4, "WifiCallingTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi calling handleClick("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    if-eqz v4, :cond_3

    .line 147
    const-string v4, "WifiCallingTile"

    const-string v5, "handleClick(): Processing..."

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsProcessing:Z

    .line 153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method protected handleLongClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v5

    .line 167
    .local v2, "selectionArgsFalse":[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "true"

    aput-object v4, v3, v5

    .line 169
    .local v3, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v4, v5, v6, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "isSettingsChangesAllowed":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_0

    .line 174
    const-string v4, "WifiCallingTile"

    const-string v5, "onClick(): Wifi calling  state change is not allowed - isSettingsChangesAllowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    :try_start_0
    const-string v4, "com.samsung.tmowfc.wfcpref"

    const-string v5, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "WifiCallingTile"

    const-string v5, "Cannot find WfcSettings!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleLongClick()V

    .line 160
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 188
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 191
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0377

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0356

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 193
    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_1
    return-void

    .line 188
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 195
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_1

    .line 196
    const v1, 0x7f02067b

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 198
    :cond_1
    const v1, 0x7f02067e

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 202
    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_2

    .line 203
    const v1, 0x7f02067a

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 205
    :cond_2
    const v1, 0x7f02067d

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 209
    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingTileIconOnlyForVZW:Z

    if-eqz v1, :cond_3

    .line 210
    const v1, 0x7f020679

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 212
    :cond_3
    const v1, 0x7f02067c

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 193
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
    .line 37
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;->onChange(Z)V

    .line 221
    return-void
.end method
