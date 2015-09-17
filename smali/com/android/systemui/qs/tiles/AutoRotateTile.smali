.class public Lcom/android/systemui/qs/tiles/AutoRotateTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AutoRotateTile.java"


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
.field private static final ACCELEROMETER_ROTATION_GALLERY_VIDEO:Ljava/lang/String; = "accelerometer_rotation_gallery_video"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AutoRotateQuickSettingButton"


# instance fields
.field private mAutoRotation:Z

.field private mKeyboardHidden:I

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mSupportFolderType:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "accelerometer_rotation"

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "accelerometer_rotation_second"

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v3, :cond_0

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    return-void

    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AutoRotateTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleRotationValueChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setGalleryVideoRotation(Z)V

    return-void
.end method

.method private getAutoRotation()Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotationSecond()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAutoRotationSecond()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation_second"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getGalleryVideoRotation()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation_gallery_video"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private handleRotationValueChanged(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private isFolderOpen()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAutoRotation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setGalleryVideoRotation(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation_gallery_video"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showSecondaryMenu()V
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040067

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0e01f6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v6, 0x7f0e01f7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f0e01f9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getGalleryVideoRotation()Z

    move-result v4

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->showDetailviewPanel(Landroid/view/View;I)Z

    return-void

    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v5, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "STATUSBAR-AutoRotateQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v3, v5, v6, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_1

    const-string v3, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v4, "onClick(): Rotation state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method

.method public handleLongClick()V
    .locals 5

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_0

    const-string v2, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v3, "onClick(): Rotation state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0d0363

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0384

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :pswitch_0
    const v1, 0x7f02064d

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const v1, 0x7f0d0356

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f02064c

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    const v1, 0x7f0d0357

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method
