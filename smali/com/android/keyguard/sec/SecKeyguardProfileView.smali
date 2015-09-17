.class public Lcom/android/keyguard/sec/SecKeyguardProfileView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardProfileView.java"


# static fields
.field private static final MSG_CLOCK_ON_SETTINGS_CHANGED:I = 0x66

.field private static final MSG_CONTENT_UPDATED:I = 0x64

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final NOTOSERIF_ITALIC:Ljava/lang/String; = "NotoSerif-Italic"

.field private static final TRAVEL_IMAGE_PATH:Ljava/lang/String; = "/com.samsung.android.service.travel/files/images/"

.field private static mDefaultProfile:Ljava/lang/String;

.field private static mDefaultProfileLifeCompanion:Ljava/lang/String;

.field private static sTypeFaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarm:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLocale:Ljava/util/Locale;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mProfileAmpm:Landroid/widget/TextClock;

.field private mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mProfileDefaultTypeface:Landroid/graphics/Typeface;

.field private mProfileText:Landroid/widget/TextView;

.field private mProfileTime:Landroid/widget/TextClock;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    const-string v0, "Personal message"

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    const-string v0, "Life companion"

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfileLifeCompanion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->handleClockOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V

    return-void
.end method

.method private handleClockOnSettngsChanged()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private handleDateOnSettngsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private refreshOwnerInfo()V
    .locals 6

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private updateProfile()V
    .locals 14

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v13, -0x2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfileLifeCompanion:Ljava/lang/String;

    sput-object v8, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Personal Banner"

    sput-object v8, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "my_profile_text_color"

    const/4 v12, -0x1

    invoke-static {v8, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "my_profile_background_color"

    invoke-static {v8, v11, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "my_profile_information"

    invoke-static {v8, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "my_profile_font_package"

    invoke-static {v8, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "my_profile_font_filename"

    invoke-static {v8, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v11, Lcom/android/keyguard/R$dimen;->kg_myprofile_text_size:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v6, v8

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "my_profile_text_size"

    invoke-static {v8, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    :cond_2
    if-eqz v3, :cond_3

    sget-object v8, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$string;->default_profile_string:I

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v8, v11, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v11, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v11, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    iget-object v11, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    iget-object v11, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    return-void

    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/keyguard/R$string;->default_profile_string_life_companion:I

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    move v8, v10

    goto :goto_1

    :cond_7
    move v8, v10

    goto :goto_2

    :cond_8
    move v9, v10

    goto :goto_3
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v5, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    const-string v6, "Lindsey"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v6, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sget-object v6, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Typeface Lindsey, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    const-string v6, "NotoSerif-Italic"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Ljava/io/File;

    const-string v6, "/system/fonts/NotoSerif-Italic.ttf"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "/system/fonts/NotoSerif-Italic.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sget-object v6, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v4

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v6, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v5, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sget-object v6, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load font package, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get Typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_text_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_background_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_information"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_font_package"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_text_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateProfile()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/16 v2, 0x64

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/keyguard/R$id;->profile_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->profile_time:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    sget v1, Lcom/android/keyguard/R$id;->profile_ampm:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    sget v1, Lcom/android/keyguard/R$id;->profile_date:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    const-string v1, "/system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mClockTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v1, "/system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDefaultTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    invoke-virtual {v1}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method
