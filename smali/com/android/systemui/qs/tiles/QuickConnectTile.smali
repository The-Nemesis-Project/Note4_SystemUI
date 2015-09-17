.class public Lcom/android/systemui/qs/tiles/QuickConnectTile;
.super Lcom/android/systemui/qs/QSTile;
.source "QuickConnectTile.java"


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
.field private static final DB_QUICK_CONNECT_ON:Ljava/lang/String; = "scon_is_running"

.field private static final Q_CONNECT_ENABLE:Ljava/lang/String; = "com.sec.android.sconnect.service.ENABLED"

.field private static final TAG:Ljava/lang/String; = "QuickConnectTile"


# instance fields
.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mQConnectEnable:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mQConnectEnable:Z

    .line 52
    new-instance v0, Lcom/android/systemui/qs/tiles/QuickConnectTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/QuickConnectTile$2;-><init>(Lcom/android/systemui/qs/tiles/QuickConnectTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 41
    new-instance v0, Lcom/android/systemui/qs/tiles/QuickConnectTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "scon_is_running"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/QuickConnectTile$1;-><init>(Lcom/android/systemui/qs/tiles/QuickConnectTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/QuickConnectTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/QuickConnectTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f02063a

    .line 100
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 101
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 115
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    const v0, 0x7f02063b

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 108
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 111
    :pswitch_2
    const v0, 0x7f020639

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected handleClick()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQuickConnectButton()V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d033f

    .line 73
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 76
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0380

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 80
    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_1
    return-void

    .line 73
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/QuickConnectTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 82
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0d033b

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 87
    :pswitch_1
    const v1, 0x7f0d033c

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 92
    :pswitch_2
    const v1, 0x7f0d033d

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 80
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
    .line 24
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/QuickConnectTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 125
    :cond_0
    return-void
.end method
