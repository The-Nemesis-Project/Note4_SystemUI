.class Lcom/android/systemui/volume/VolumePanel$8;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x5

    .line 1245
    const-string v1, "VolumePanel"

    const-string v2, "registerReceiver: onReceive start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    const-string v1, "VolumePanel"

    const-string v2, "registerReceiver ACTION_SCREEN_OFF start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1252
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1253
    const-string v1, "VolumePanel"

    const-string v2, "registerReceiver ACTION_SCREEN_OFF end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_0
    :goto_0
    const-string v1, "VolumePanel"

    const-string v2, "registerReceiver: onReceive end "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return-void

    .line 1254
    :cond_1
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1256
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
