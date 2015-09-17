.class public Lcom/android/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NfcTile.java"


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
.field private static final ADAPTER_BOOT_ACTION:Ljava/lang/String; = "android.nfc.action.ADAPTER_BOOT_COMPLETED"

.field private static final LOCKSTATUS_LOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_LOCK"

.field private static final LOCKSTATUS_UNLOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

.field private static final TAG:Ljava/lang/String; = "NfcTile"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/android/systemui/qs/tiles/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NfcTile;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    return-void
.end method

.method private handleStateChanged(I)I
    .locals 3

    const/4 v0, 0x2

    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshButtonState(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleClick()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v6, "NfcTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_2
    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "false"

    aput-object v5, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "true"

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v5, v6, v7, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isNFCEnabledWithMsg"

    invoke-static {v5, v6, v7, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v7, "isNFCStateChangeAllowed"

    invoke-static {v5, v6, v7, v3}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v2, v8, :cond_4

    if-eq v0, v8, :cond_4

    if-eq v1, v8, :cond_4

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const-string v5, "NfcTile"

    const-string v6, "onClick(): Bluetooth state change is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v5, :cond_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v5, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v5, v5, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public handleLongClick()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "true"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v6, v7, v8, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v8, "isNFCEnabledWithMsg"

    invoke-static {v6, v7, v8, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v8, "isNFCStateChangeAllowed"

    invoke-static {v6, v7, v8, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v2, v9, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v1, v9, :cond_1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v6, "NfcTile"

    const-string v7, "onClick(): Bluetooth state change is not allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KDDI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "DCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/tiles/NfcTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/tiles/NfcTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d0368

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0389

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v1, :cond_1

    const v1, 0x7f020639

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_2
    const v1, 0x7f0d0356

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v1, 0x7f02063c

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_2

    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v1, :cond_2

    const v1, 0x7f020638

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_3
    const v1, 0x7f0d0357

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const v1, 0x7f02063b

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_3

    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020637

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_4
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const v1, 0x7f02063a

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_4

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

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready - init"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
