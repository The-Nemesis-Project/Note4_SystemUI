.class Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "intentAction":Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 258
    :cond_0
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    const/4 v1, 0x5

    .line 266
    .local v1, "simNetWorkBoosterState":I
    const-string v3, "NetworkBoosterTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simNetWorkBoosterState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    .line 273
    .end local v1    # "simNetWorkBoosterState":I
    :cond_1
    :goto_0
    return-void

    .line 268
    .restart local v1    # "simNetWorkBoosterState":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;->this$0:Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    # getter for: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->access$2100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V

    goto :goto_0
.end method
