.class Lcom/android/systemui/qs/tiles/SmartPauseTile$4;
.super Ljava/lang/Object;
.source "SmartPauseTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartPauseTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 222
    const-string v1, "SmartPauseTile"

    const-string v2, "showConfirmPopup() - P"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$600(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->dismissKeyguard()V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$700(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SMotionGuideHub2014Activity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "type"

    const-string v2, "merged_mute_or_pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "hasAdvancedSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v1, "AdvancedSettingsIsTop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    # getter for: Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$800(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 239
    return-void
.end method
