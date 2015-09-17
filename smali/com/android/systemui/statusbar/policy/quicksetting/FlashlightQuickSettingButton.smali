.class public Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "FlashlightQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FlashlightQuickSettingButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashlight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v2, 0x7f0b027b

    const v1, 0x7f0b027b

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const v3, 0x7f020368

    const v4, 0x7f020367

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->initLayout(IIIIIII)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void

    :cond_0
    const v0, 0x7f020367

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    return-void
.end method

.method public onClick(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    rem-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v1, "com.sec.samsung.torchwidget.torch_on_3"

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "com.sec.samsung.torchwidget.torch_off"

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 0

    return-void
.end method
