.class Lcom/android/systemui/volume/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V
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
    .line 1187
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2300(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->access$2302(Lcom/android/systemui/volume/VolumePanel;Z)Z

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2400(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1227
    const-string v0, "VolumePanel"

    const-string v1, "initZenModePanel : onExpanded : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)V

    goto :goto_0
.end method

.method public onInteraction()V
    .locals 2

    .prologue
    .line 1197
    const-string v0, "VolumePanel"

    const-string v1, "initZenModePanel : onInteraction : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1199
    return-void
.end method

.method public onMoreSettings()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onZenSettings()V

    .line 1193
    :cond_0
    return-void
.end method

.method public onNotifyZen(I)V
    .locals 7
    .param p1, "currentZen"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1203
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1204
    .local v0, "ringerMode":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$2200(Lcom/android/systemui/volume/VolumePanel;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1206
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteraction : currentZen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_0
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInteraction : ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_1
    if-ne v0, v6, :cond_3

    .line 1210
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080a5b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1211
    if-ne p1, v5, :cond_2

    .line 1212
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080a5f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1220
    :cond_2
    :goto_0
    return-void

    .line 1214
    :cond_3
    if-ne v0, v5, :cond_2

    .line 1215
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080a61

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1216
    if-ne p1, v5, :cond_2

    .line 1217
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080a63

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
