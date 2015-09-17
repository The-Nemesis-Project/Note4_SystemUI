.class public Lcom/android/systemui/qs/tiles/SBeamTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SBeamTile.java"


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
.field private static final DB_S_BEAM_ON:Ljava/lang/String; = "sbeam_mode"

.field private static final TAG:Ljava/lang/String; = "SBeamTile"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsProcessing:Z

.field private mSBeamState:Z

.field private final mSettingSB:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x2

    const/4 v7, -0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 53
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    .line 88
    new-instance v0, Lcom/android/systemui/qs/tiles/SBeamTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "sbeam_mode"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/SBeamTile$1;-><init>(Lcom/android/systemui/qs/tiles/SBeamTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    invoke-static {v0, v4, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    invoke-static {v0, v4, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 112
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v0, v3

    .line 109
    goto :goto_1

    :cond_2
    move v1, v2

    .line 111
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SBeamTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SBeamTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SBeamTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/SBeamTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SBeamTile;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    return p1
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "sbeam_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "turn_on"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 123
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mIsProcessing:Z

    if-eqz v8, :cond_1

    .line 124
    const-string v8, "SBeamTile"

    const-string v9, "onClick(): Processing..."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v9, "SBeamTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SBeam onClick("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-array v7, v12, [Ljava/lang/String;

    const-string v8, "true"

    aput-object v8, v7, v13

    .line 131
    .local v7, "selectionArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v10, "isNFCEnabledWithMsg"

    invoke-static {v8, v9, v10, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "isNFCEnabled":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v10, "isAndroidBeamAllowed"

    invoke-static {v8, v9, v10, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "isAndroidBeamAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v10, "isSBeamAllowed"

    invoke-static {v8, v9, v10, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 134
    .local v3, "isSamsungBeamAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v10, "isWifiEnabled"

    invoke-static {v8, v9, v10, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 135
    .local v5, "isWiFiEnabled":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v10, "isWifiDirectAllowed"

    invoke-static {v8, v9, v10, v7}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 136
    .local v6, "isWifiDirectAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v10, "isNFCStateChangeAllowed"

    invoke-static {v8, v9, v10}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "isNFCStateChangeAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v10, "isSettingsChangesAllowed"

    invoke-static {v8, v9, v10}, Lcom/android/systemui/qs/tiles/SBeamTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 138
    .local v4, "isSettingsChangesAllowed":I
    if-eq v4, v11, :cond_3

    if-eq v1, v11, :cond_3

    if-eq v0, v11, :cond_3

    if-eq v5, v11, :cond_3

    if-eq v6, v11, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v3, v11, :cond_3

    .line 139
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 140
    :cond_2
    const-string v8, "SBeamTile"

    const-string v9, "onClick(): SBeam state change is not allowed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v8, v12, :cond_4

    .line 151
    const-string v9, "SBeamTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Turning ON SBeam mSBeamState:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",mState.value:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, v13}, Lcom/android/systemui/qs/tiles/SBeamTile;->setMode(I)V

    goto/16 :goto_0

    .line 154
    :cond_4
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 155
    const-string v9, "SBeamTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Turning OFF mSBeamState:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSBeamState:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",mState.value:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/SBeamTile;->refreshState(Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, v12}, Lcom/android/systemui/qs/tiles/SBeamTile;->setMode(I)V

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 118
    return-void
.end method

.method public handleLongClick()V
    .locals 2

    .prologue
    .line 183
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SBeamSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleLongClick()V

    .line 179
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d035f

    .line 58
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d037f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_1
    return-void

    .line 58
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 64
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020649

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 65
    const v1, 0x7f0d033b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 70
    :pswitch_1
    const v1, 0x7f020648

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 71
    const v1, 0x7f0d033c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 76
    :pswitch_2
    const v1, 0x7f020647

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 77
    const v1, 0x7f0d033d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SBeamTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 62
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
    .line 41
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SBeamTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBeamTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
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

.method public userSwitched()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBeamTile;->mSettingSB:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 189
    return-void
.end method
