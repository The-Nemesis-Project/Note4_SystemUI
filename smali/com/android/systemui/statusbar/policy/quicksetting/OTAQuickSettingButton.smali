.class public Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "OTAQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-OTAQuickSettingButton"


# instance fields
.field private mBattery:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const v2, 0x7f0b0289

    const v1, 0x7f0b0288

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "toggle_icon_type"

    const v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const v10, 0x1

    if-eq v10, v9, :cond_0

    const v10, 0x2

    if-eq v10, v9, :cond_1

    const v10, 0x3

    if-eq v10, v9, :cond_2

    const v10, 0x4

    if-eq v10, v9, :cond_3

    const v10, 0x5

    if-eq v10, v9, :cond_4

    const v3, 0x7f020365

    const v4, 0x7f020365

    goto :goto_0

    :cond_0
    const v3, 0x5020d32

    const v4, 0x5020d32

    goto :goto_0

    :cond_1
    const v3, 0x5020d32

    const v4, 0x5020d32

    goto :goto_0

    :cond_2
    const v3, 0x5020d32

    const v4, 0x5020d32

    goto :goto_0

    :cond_3
    const v3, 0x5020fb9

    const v4, 0x5020fb9

    goto :goto_0

    :cond_4
    const v3, 0x5021049

    const v4, 0x5021048

    :goto_0
    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->initLayout(IIIIIII)V

    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    return-void

    :cond_5
    const v0, 0x7f020365

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->initLayout(III)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 1

    return-void
.end method

.method public init()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->mBattery:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->mBattery:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 2

    const-string v0, "com.otaupdater"

    const-string v1, "com.otaupdater.OTAUpdaterActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/OTAQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLongClick()V
    .locals 2

    return-void
.end method
