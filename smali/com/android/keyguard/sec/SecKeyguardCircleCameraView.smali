.class public Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;
.super Lcom/android/keyguard/sec/SecKeyguardCircleView;
.source "SecKeyguardCircleCameraView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$3;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_S_HEALTH_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleCameraView"


# instance fields
.field private mShortcutSetting:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.shealth"

    const-string v2, "com.sec.android.app.shealth.home.HomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->SECURE_S_HEALTH_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    .line 58
    sget v0, Lcom/android/keyguard/R$id;->circle_arrow_camera:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mArrowResId:I

    .line 59
    sget v0, Lcom/android/keyguard/R$id;->camera_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentResId:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissKeyguardOnNextActivity()V
    .locals 3

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecKeyguardCircleCameraView"

    const-string v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 4

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 208
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 209
    .local v0, "currentUserHasTrust":Z
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 211
    .local v1, "isSecure":Z
    :goto_0
    return v1

    .line 209
    .end local v1    # "isSecure":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    if-eqz p1, :cond_0

    .line 148
    const/high16 v1, 0x34000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V

    .line 153
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecKeyguardCircleCameraView"

    const-string v2, "launchActivity in secure "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_0

    .line 162
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->dismissKeyguardOnNextActivity()V

    .line 166
    :cond_2
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;Landroid/content/Intent;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v2, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)V

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method

.method private launchActivityJH(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 2

    .prologue
    .line 63
    const/4 v0, -0x1

    .line 64
    .local v0, "resId":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_camera:I

    .line 67
    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    .line 73
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    .line 79
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 80
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectLaunchCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivityJH(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 93
    :cond_2
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 94
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->SECURE_S_HEALTH_INTENT:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 2
    .param p1, "state"    # Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 101
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 102
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$3;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 114
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$3;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_hestia_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_hestia_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 122
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_hestia_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
