.class Lcom/android/systemui/volume/VolumePanel$3;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
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
    .line 809
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 812
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$902(Lcom/android/systemui/volume/VolumePanel;I)I

    .line 813
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$900(Lcom/android/systemui/volume/VolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setZenPanelVisible(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumePanel;->access$1000(Lcom/android/systemui/volume/VolumePanel;Z)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mMoreButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 817
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "setOnDismissListener : onDismiss : call insertLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const-string v1, "com.android.systemui.volume"

    const-string v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mExtraForRingerMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$3;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mValueForHwSwKey:J
    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->access$1300(Lcom/android/systemui/volume/VolumePanel;)J

    move-result-wide v4

    # invokes: Lcom/android/systemui/volume/VolumePanel;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/VolumePanel;->access$1400(Lcom/android/systemui/volume/VolumePanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 819
    return-void
.end method
