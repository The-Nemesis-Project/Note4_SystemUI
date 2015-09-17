.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;ZLandroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->val$state:Z

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->val$state:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUsb3PopupForVZW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->val$state:Z

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingUSB30:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$8;->val$state:Z

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    .line 442
    return-void
.end method
