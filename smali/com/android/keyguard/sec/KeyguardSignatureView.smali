.class public Lcom/android/keyguard/sec/KeyguardSignatureView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;,
        Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DBG_TOUCH:Z

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x5

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSignatureView"

.field private static mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;


# instance fields
.field private mBackupPIN:Landroid/widget/ImageButton;

.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEngineStarted:Z

.field private mGuideText:Ljava/lang/String;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mTotalFailedSignatureAttempts:I

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSignatureView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSignatureView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .locals 0

    sput-object p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object p0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setUserInputEnabled(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSignatureView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private initSignView()V
    .locals 6

    const/4 v5, -0x1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sput-object v2, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    new-instance v2, Lcom/android/internal/widget/BeautySignView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/BeautySignView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->loadVerificationSettings()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureVerificationLevel()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/keyguard/sec/KeyguardSignatureView$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setFocusable(Z)V

    sget v2, Lcom/android/keyguard/R$id;->signature_signview_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setAdditionalPinButton()V
    .locals 2

    sget v0, Lcom/android/keyguard/R$id;->signature_additional_pin_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSignatureView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public bindToSignatureLock()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.signaturelock"

    const-string v3, "com.sec.android.signaturelock.SignService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttempts()I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    goto :goto_1
.end method

.method public hideBouncer(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public isSignatureRecognitionFailed()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onAttachedToWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to connect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onDetachedFromWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to disconnect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->initSignView()V

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unlock_text"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_signature_guide:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setAdditionalPinButton()V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setFocusableInTouchMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->clearFocus()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onResume(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->reset()V

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSignatureView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public showUsabilityHint()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Requested showUsabilityHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
