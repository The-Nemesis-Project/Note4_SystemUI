.class Lcom/android/systemui/qs/tiles/TorchLightTile$3;
.super Ljava/lang/Object;
.source "TorchLightTile.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/TorchLightTile;->showSecondaryMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    add-int/lit8 v1, p2, 0x1

    # setter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1102(Lcom/android/systemui/qs/tiles/TorchLightTile;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Quickpanel_torch_brightness_level"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1100(Lcom/android/systemui/qs/tiles/TorchLightTile;)I

    move-result v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1100(Lcom/android/systemui/qs/tiles/TorchLightTile;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->cfmsService:Landroid/os/CustomFrequencyManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1200(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/os/CustomFrequencyManager;

    move-result-object v0

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$3;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchLevel:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1100(Lcom/android/systemui/qs/tiles/TorchLightTile;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
