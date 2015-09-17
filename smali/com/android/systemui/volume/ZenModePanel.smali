.class public Lcom/android/systemui/volume/ZenModePanel;
.super Landroid/widget/LinearLayout;
.source "ZenModePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ZenModePanel$Prefs;,
        Lcom/android/systemui/volume/ZenModePanel$ConditionTag;,
        Lcom/android/systemui/volume/ZenModePanel$Callback;,
        Lcom/android/systemui/volume/ZenModePanel$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field private static final FIRST_CONDITION_INDEX:I = 0x2

.field private static final FOREVER_CONDITION_INDEX:I = 0x0

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTES_MS:I = 0xea60

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field private static final SECONDS_MS:I = 0x3e8

.field private static final SILENT_HINT_PULSE_SCALE:F = 1.1f

.field private static final TAG:Ljava/lang/String; = "ZenModePanel"

.field private static final TIME_CONDITION_INDEX:I = 0x1

.field public static final ZEN_SETTINGS:Landroid/content/Intent;

.field private static final mCountryCode:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# instance fields
.field private final ITEM_IDS:[I

.field private mAttachedZen:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBucketIndex:I

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mConditions:[Landroid/service/notification/Condition;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionText:Ljava/lang/String;

.field private mExpanded:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

.field private mHidden:Z

.field private mHorizontalDividerUpSoundMode:Landroid/view/View;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

.field private mMoreSettings:Landroid/view/View;

.field private final mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

.field private mRequestingConditions:Z

.field private mSessionExitCondition:Landroid/service/notification/Condition;

.field private mSessionZen:I

.field private mSettingPanel:Landroid/widget/RelativeLayout;

.field private mSoundButtonClickListener:Landroid/view/View$OnClickListener;

.field private mSoundModeMuteButton:Landroid/widget/Button;

.field private mSoundModePanel:Landroid/widget/LinearLayout;

.field private mSoundModeSoundButton:Landroid/widget/Button;

.field private mSoundModeVibrateButton:Landroid/widget/Button;

.field private final mSubheadColor:I

.field private mSubheadDescription:Ljava/lang/String;

.field private mSubheadStringMutePrefix:Ljava/lang/String;

.field private mSubheadStringSoundPrefix:Ljava/lang/String;

.field private mSubheadStringVibratePrefix:Ljava/lang/String;

.field private final mSubheadWarningColor:I

.field private mTag:Ljava/lang/String;

.field private mTimeCondition:Landroid/service/notification/Condition;

.field private mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field private final mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private mZenConditions:Landroid/widget/LinearLayout;

.field private mZenSubhead:Landroid/view/View;

.field private mZenSubheadCollapsed:Landroid/widget/TextView;

.field private mZenSubheadCollapsedDesc:Landroid/widget/TextView;

.field private mZenSubheadExpanded:Landroid/widget/TextView;

.field private final mZenToast:Lcom/android/systemui/volume/ZenToast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "ZenModePanel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    .line 68
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    :goto_0
    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    .line 71
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    .line 72
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    .line 73
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 127
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->mSalesCode:Ljava/lang/String;

    .line 128
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenModePanel;->mCountryCode:Ljava/lang/String;

    return-void

    .line 68
    :cond_0
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0xf0
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v4, 0x7f0a003a

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/volume/ZenModePanel$H;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZenModePanel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    .line 123
    iput-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringMutePrefix:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringVibratePrefix:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringSoundPrefix:Ljava/lang/String;

    .line 254
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$2;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundButtonClickListener:Landroid/view/View$OnClickListener;

    .line 277
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->ITEM_IDS:[I

    .line 975
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$8;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 1101
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$9;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    .line 1118
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/ZenModePanel$10;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    .line 131
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    .line 132
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/volume/ZenModePanel$Prefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    .line 134
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadWarningColor:I

    .line 139
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadColor:I

    .line 140
    new-instance v1, Lcom/android/systemui/volume/ZenToast;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/ZenToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenToast:Lcom/android/systemui/volume/ZenToast;

    .line 141
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "new ZenModePanel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringMutePrefix:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringVibratePrefix:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringSoundPrefix:Ljava/lang/String;

    .line 149
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZenModePanel : mSubheadStringMutePrefix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringMutePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZenModePanel : mSubheadStringVibratePrefix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringVibratePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZenModePanel : mSubheadStringSoundPrefix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringSoundPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    return-void

    .line 277
    nop

    :array_0
    .array-data 4
        0x7f0e0052
        0x7f0e0053
        0x7f0e0054
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/ZenModePanel;I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/ZenModePanel;->onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/ZenModePanel$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHandler:Lcom/android/systemui/volume/ZenModePanel$H;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/ZenModePanel;[Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # [Landroid/service/notification/Condition;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions([Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleExitConditionChanged(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/ZenModePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireMoreSettings()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    return v0
.end method

.method static synthetic access$2200()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/ZenModePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->fireNotifyZen(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeMuteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeVibrateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/ZenModePanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeSoundButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/ZenModePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setRingerModeAsRingerIndex(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/ZenModePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    return v0
.end method

.method private announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    .prologue
    const/4 v5, 0x0

    .line 885
    invoke-direct {p0, v5}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    .line 887
    .local v1, "zen":I
    packed-switch v1, :pswitch_data_0

    .line 899
    :goto_0
    return-void

    .line 889
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02f4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "modeText":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0338

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 892
    .end local v0    # "modeText":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 893
    .restart local v0    # "modeText":Ljava/lang/String;
    goto :goto_1

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bind(Landroid/service/notification/Condition;Landroid/view/View;)V
    .locals 13
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 784
    sget-boolean v10, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "ZenModePanel"

    const-string v11, "***** Start bind *****"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    if-eqz p1, :cond_1

    iget v10, p1, Landroid/service/notification/Condition;->state:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    :cond_1
    const/4 v2, 0x1

    .line 787
    .local v2, "enabled":Z
    :goto_0
    if-nez p2, :cond_9

    .line 788
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f0400d7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 789
    .local v4, "row":Landroid/view/View;
    sget-boolean v10, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding new condition view for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 794
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-object v5, v10

    .line 796
    .local v5, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 797
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v10, :cond_3

    .line 798
    const v10, 0x1020001

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 800
    :cond_3
    iput-object p1, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 801
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v10, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 802
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    iget-object v11, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v10, v11}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 803
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 805
    :cond_4
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v11, Lcom/android/systemui/volume/ZenModePanel$4;

    invoke-direct {v11, p0, v5}, Lcom/android/systemui/volume/ZenModePanel$4;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 822
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    if-nez v10, :cond_5

    .line 823
    const v10, 0x1020016

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    .line 825
    :cond_5
    if-nez p1, :cond_b

    .line 826
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v12, 0x1040698

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_6
    :goto_3
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 833
    iget-object v11, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 835
    const v10, 0x1020019

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 836
    .local v0, "button1":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/systemui/volume/ZenModePanel$5;

    invoke-direct {v10, p0, v4, v5}, Lcom/android/systemui/volume/ZenModePanel$5;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    const v10, 0x102001a

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 844
    .local v1, "button2":Landroid/widget/ImageView;
    new-instance v10, Lcom/android/systemui/volume/ZenModePanel$6;

    invoke-direct {v10, p0, v4, v5}, Lcom/android/systemui/volume/ZenModePanel$6;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    new-instance v11, Lcom/android/systemui/volume/ZenModePanel$7;

    invoke-direct {v11, p0, v5}, Lcom/android/systemui/volume/ZenModePanel$7;-><init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v10}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 858
    .local v8, "time":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_14

    .line 859
    iget v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_f

    .line 860
    iget v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-lez v10, :cond_d

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 861
    iget v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    sget-object v11, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_e

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 869
    :goto_7
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_8
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 870
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 876
    :goto_a
    if-nez p2, :cond_7

    .line 877
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v10, v11}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 878
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v10, v11}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 879
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v0, v10}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 880
    iget-object v10, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v10}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 882
    :cond_7
    return-void

    .line 785
    .end local v0    # "button1":Landroid/widget/ImageView;
    .end local v1    # "button2":Landroid/widget/ImageView;
    .end local v2    # "enabled":Z
    .end local v4    # "row":Landroid/view/View;
    .end local v5    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .end local v8    # "time":J
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 792
    .restart local v2    # "enabled":Z
    :cond_9
    move-object v4, p2

    .restart local v4    # "row":Landroid/view/View;
    goto/16 :goto_1

    .line 794
    :cond_a
    new-instance v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    const/4 v10, 0x0

    invoke-direct {v5, v10}, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;-><init>(Lcom/android/systemui/volume/ZenModePanel$1;)V

    goto/16 :goto_2

    .line 828
    .restart local v5    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_b
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    iget-object v11, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v10, v5, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->title:Landroid/widget/TextView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 830
    sget-boolean v10, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bind : tag.title.setText : condition.summary = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 833
    :cond_c
    const v10, 0x3ecccccd    # 0.4f

    goto/16 :goto_4

    .line 860
    .restart local v0    # "button1":Landroid/widget/ImageView;
    .restart local v1    # "button2":Landroid/widget/ImageView;
    .restart local v8    # "time":J
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 861
    :cond_e
    const/4 v10, 0x0

    goto :goto_6

    .line 863
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 864
    .local v6, "span":J
    sget v10, Lcom/android/systemui/volume/ZenModePanel;->MIN_BUCKET_MINUTES:I

    const v11, 0xea60

    mul-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-lez v10, :cond_10

    const/4 v10, 0x1

    :goto_b
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 865
    sget v10, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v3

    .line 866
    .local v3, "maxCondition":Landroid/service/notification/Condition;
    iget-object v10, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v11, v3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    const/4 v10, 0x1

    :goto_c
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_7

    .line 864
    .end local v3    # "maxCondition":Landroid/service/notification/Condition;
    :cond_10
    const/4 v10, 0x0

    goto :goto_b

    .line 866
    .restart local v3    # "maxCondition":Landroid/service/notification/Condition;
    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    .line 869
    .end local v3    # "maxCondition":Landroid/service/notification/Condition;
    .end local v6    # "span":J
    :cond_12
    const/high16 v10, 0x3f000000    # 0.5f

    goto/16 :goto_8

    .line 870
    :cond_13
    const/high16 v10, 0x3f000000    # 0.5f

    goto/16 :goto_9

    .line 872
    :cond_14
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private checkForAttachedZenChange()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 357
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 358
    .local v0, "selectedZen":I
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedZen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    if-eq v0, v1, :cond_4

    .line 360
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachedZen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    if-ne v0, v4, :cond_2

    .line 362
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->trackNoneSelected()V

    .line 364
    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenToast:Lcom/android/systemui/volume/ZenToast;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/ZenToast;->show(I)V

    .line 369
    :cond_4
    return-void
.end method

.method private checkForDefault()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 754
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 755
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not selecting a default, checked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    :goto_1
    return-void

    .line 754
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v3, "Selecting a default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->getMinuteIndex()I

    move-result v0

    .line 763
    .local v0, "favoriteIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 764
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 766
    :cond_4
    sget-object v2, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 767
    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 768
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 769
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private static copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 457
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/Condition;->copy()Landroid/service/notification/Condition;

    move-result-object v0

    goto :goto_0
.end method

.method private fireExpanded()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onExpanded(Z)V

    .line 973
    :cond_0
    return-void
.end method

.method private fireInteraction()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_1

    .line 957
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "fireInteraction.. call mCallback.onInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onInteraction()V

    .line 960
    :cond_1
    return-void
.end method

.method private fireMoreSettings()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onMoreSettings()V

    .line 953
    :cond_0
    return-void
.end method

.method private fireNotifyZen(I)V
    .locals 2
    .param p1, "currentZen"    # I

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    if-eqz v0, :cond_1

    .line 964
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "fireNotifyZen.. call mCallback.onNotifyZen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/volume/ZenModePanel$Callback;->onNotifyZen(I)V

    .line 967
    :cond_1
    return-void
.end method

.method private static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 1
    .param p0, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 449
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    return-object v0
.end method

.method private getSelectedZen(I)I
    .locals 2
    .param p1, "defValue"    # I

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    .line 568
    .local v0, "zen":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "zen":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1    # "defValue":I
    :cond_0
    return p1
.end method

.method private handleExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 6
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 775
    sget-boolean v3, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExitConditionChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 777
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 778
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getConditionTagAt(I)Lcom/android/systemui/volume/ZenModePanel$ConditionTag;

    move-result-object v2

    .line 779
    .local v2, "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    iget-object v3, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    iget-object v4, v2, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v4, v5}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    .end local v2    # "tag":Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    :cond_1
    return-void
.end method

.method private handleUpdateConditions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 711
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZenModePanel"

    const-string v6, "***** Start handleUpdateConditions #2*****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    if-nez v5, :cond_2

    move v0, v4

    .line 713
    .local v0, "conditionCount":I
    :goto_0
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUpdateConditions conditionCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x2

    if-lt v2, v5, :cond_3

    .line 715
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 714
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 712
    .end local v0    # "conditionCount":I
    .end local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    array-length v0, v5

    goto :goto_0

    .line 718
    .restart local v0    # "conditionCount":I
    .restart local v2    # "i":I
    :cond_3
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "ZenModePanel"

    const-string v6, "handleUpdateConditions #2: call bind.. forerver #1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v8, v5}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 721
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "ZenModePanel"

    const-string v6, "handleUpdateConditions #2: call bind.. countdown #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "foundDowntime":Z
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    .line 726
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "ZenModePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUpdateConditions #2: i ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_6
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "ZenModePanel"

    const-string v6, "handleUpdateConditions #2: call bind.. provider conditions #3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 729
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel;->isDowntime(Landroid/service/notification/Condition;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 731
    :cond_8
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ZenModePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUpdateConditions #2: foundDowntime ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-static {v5}, Lcom/android/systemui/volume/ZenModePanel;->isDowntime(Landroid/service/notification/Condition;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v1, :cond_a

    .line 734
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v5, v8}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 737
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForDefault()V

    .line 739
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v3

    .line 740
    .local v3, "zen":I
    sget-boolean v4, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "ZenModePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateConditions #2 : call updateZenConditionLayoutParams().. zen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->updateZenConditionLayoutParams(I)V

    .line 742
    return-void
.end method

.method private handleUpdateConditions([Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 703
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "***** Start handleUpdateConditions #1*****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModePanel"

    const-string v1, "handleUpdateConditions #1 : set mConditions = conditions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 706
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZenModePanel"

    const-string v1, "handleUpdateConditions #1 : call handleUpdateConditions #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    .line 708
    return-void
.end method

.method private handleUpdateZen(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 518
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "***** Start handleUpdateZen *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    if-eq v0, p1, :cond_4

    .line 520
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModePanel"

    const-string v1, "handleUpdateZen : call setExpanded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ZenModePanel"

    const-string v1, "handleUpdateZen : Global.ZEN_MODE_OFF = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_2
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ZenModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateZen : zen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_3
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 524
    iput p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 526
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ZenModePanel"

    const-string v1, "handleUpdateZen : call setSelectecdValue.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Landroid/view/View;Ljava/lang/Object;)V

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 529
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "ZenModePanel"

    const-string v1, "handleUpdateZen : call updateZenConditionLayoutParams()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->updateZenConditionLayoutParams(I)V

    .line 531
    return-void

    .line 523
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDowntime(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p0, "c"    # Landroid/service/notification/Condition;

    .prologue
    .line 745
    invoke-static {p0}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private makeSubheadDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 483
    .local v1, "subheadDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 484
    .local v0, "ringerMode":I
    const-string v2, "ZenModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSubheadDescription : ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-nez v0, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringMutePrefix:Ljava/lang/String;

    .line 493
    :cond_0
    :goto_0
    const-string v2, "ZenModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSubheadDescription : subheadDescription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-object v1

    .line 488
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 489
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringVibratePrefix:Ljava/lang/String;

    goto :goto_0

    .line 490
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringSoundPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/systemui/volume/ZenModePanel$ConditionTag;Z)V
    .locals 18
    .param p1, "row"    # Landroid/view/View;
    .param p2, "tag"    # Lcom/android/systemui/volume/ZenModePanel$ConditionTag;
    .param p3, "up"    # Z

    .prologue
    .line 902
    const/4 v9, 0x0

    .line 903
    .local v9, "newCondition":Landroid/service/notification/Condition;
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    array-length v2, v14

    .line 904
    .local v2, "N":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_6

    .line 906
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v14}, Lcom/android/systemui/volume/ZenModePanel;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v6

    .line 907
    .local v6, "conditionId":Landroid/net/Uri;
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 908
    .local v12, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 909
    .local v10, "now":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 910
    if-eqz p3, :cond_4

    move v8, v7

    .line 911
    .local v8, "j":I
    :goto_1
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    aget v3, v14, v8

    .line 912
    .local v3, "bucketMinutes":I
    const v14, 0xea60

    mul-int/2addr v14, v3

    int-to-long v14, v14

    add-long v4, v10, v14

    .line 913
    .local v4, "bucketTime":J
    if-eqz p3, :cond_0

    cmp-long v14, v4, v12

    if-gtz v14, :cond_1

    :cond_0
    if-nez p3, :cond_5

    cmp-long v14, v4, v12

    if-gez v14, :cond_5

    .line 914
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 915
    invoke-static {v4, v5, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(JI)Landroid/service/notification/Condition;

    move-result-object v9

    .line 919
    .end local v3    # "bucketMinutes":I
    .end local v4    # "bucketTime":J
    .end local v8    # "j":I
    :cond_2
    if-nez v9, :cond_3

    .line 920
    sget v14, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 921
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v14, v14, v15

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v9

    .line 928
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "i":I
    .end local v10    # "now":J
    .end local v12    # "time":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 929
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/systemui/volume/ZenModePanel;->bind(Landroid/service/notification/Condition;Landroid/view/View;)V

    .line 930
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/volume/ZenModePanel;->select(Landroid/service/notification/Condition;)V

    .line 932
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->announceConditionSelection(Lcom/android/systemui/volume/ZenModePanel$ConditionTag;)V

    .line 933
    return-void

    .line 910
    .restart local v6    # "conditionId":Landroid/net/Uri;
    .restart local v7    # "i":I
    .restart local v10    # "now":J
    .restart local v12    # "time":J
    :cond_4
    add-int/lit8 v14, v2, -0x1

    sub-int v8, v14, v7

    goto :goto_1

    .line 909
    .restart local v3    # "bucketMinutes":I
    .restart local v4    # "bucketTime":J
    .restart local v8    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 925
    .end local v3    # "bucketMinutes":I
    .end local v4    # "bucketTime":J
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "now":J
    .end local v12    # "time":J
    :cond_6
    const/4 v15, 0x0

    add-int/lit8 v16, v2, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    move/from16 v17, v0

    if-eqz p3, :cond_7

    const/4 v14, 0x1

    :goto_3
    add-int v14, v14, v17

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 926
    sget-object v14, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v14, v14, v15

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v9

    goto :goto_2

    .line 925
    :cond_7
    const/4 v14, -0x1

    goto :goto_3
.end method

.method private parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 10
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 694
    if-nez p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-object v4

    .line 695
    :cond_1
    iget-object v5, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 696
    .local v2, "time":J
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 698
    .local v0, "span":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    sget v5, Lcom/android/systemui/volume/ZenModePanel;->MAX_BUCKET_MINUTES:I

    const v6, 0xea60

    mul-int/2addr v5, v6

    int-to-long v6, v5

    cmp-long v5, v0, v6

    if-gtz v5, :cond_0

    .line 699
    long-to-float v4, v0

    const v5, 0x476a6000    # 60000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(JI)Landroid/service/notification/Condition;

    move-result-object v4

    goto :goto_0
.end method

.method private refreshExitConditionText()V
    .locals 5

    .prologue
    .line 461
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModePanel"

    const-string v3, "***** Start refreshExitConditionText *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v3, 0x1040698

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "forever":Ljava/lang/String;
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ZenModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshExitConditionText : getSTring, forever = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    if-nez v2, :cond_5

    .line 465
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ZenModePanel"

    const-string v3, "refreshExitConditionText : set forever #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    .line 475
    .end local v1    # "forever":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->makeSubheadDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadDescription:Ljava/lang/String;

    .line 476
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ZenModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshExitConditionText : mSubheadDescription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ZenModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshExitConditionText : mExitConditionText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_4
    return-void

    .line 467
    .restart local v1    # "forever":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 468
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "ZenModePanel"

    const-string v3, "refreshExitConditionText : set summary or forever #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    .line 470
    .local v0, "condition":Landroid/service/notification/Condition;
    if-eqz v0, :cond_7

    iget-object v1, v0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .end local v1    # "forever":Ljava/lang/String;
    :cond_7
    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    goto :goto_0

    .line 472
    .end local v0    # "condition":Landroid/service/notification/Condition;
    .restart local v1    # "forever":Ljava/lang/String;
    :cond_8
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "ZenModePanel"

    const-string v3, "refreshExitConditionText : set summary #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    goto :goto_0
.end method

.method private static sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/service/notification/Condition;
    .param p1, "rhs"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v3, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private select(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v3, -0x1

    .line 936
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 940
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 941
    if-nez p1, :cond_3

    .line 942
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->setMinuteIndex(I)V

    .line 946
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 947
    return-void

    .line 943
    :cond_3
    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    if-eq v0, v3, :cond_2

    .line 944
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mPrefs:Lcom/android/systemui/volume/ZenModePanel$Prefs;

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel$Prefs;->setMinuteIndex(I)V

    goto :goto_0
.end method

.method private setExitCondition(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->sameConditionId(Landroid/service/notification/Condition;Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->refreshExitConditionText()V

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0
.end method

.method private setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "***** Start setExpanded *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-ne p1, v0, :cond_2

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setRequestingConditions(Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->fireExpanded()V

    .line 378
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRequestingConditions(Z)V
    .locals 3
    .param p1, "requesting"    # Z

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-ne v0, p1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 384
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestingConditions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->requestConditions(Z)V

    .line 389
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mRequestingConditions:Z

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->parseExistingTimeCondition(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    .line 391
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_4

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 397
    :goto_1
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial bucket index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mConditions:[Landroid/service/notification/Condition;

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateConditions()V

    goto :goto_0

    .line 394
    :cond_4
    sget v0, Lcom/android/systemui/volume/ZenModePanel;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    .line 395
    sget-object v0, Lcom/android/systemui/volume/ZenModePanel;->MINUTE_BUCKETS:[I

    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mBucketIndex:I

    aget v0, v0, v1

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(I)Landroid/service/notification/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTimeCondition:Landroid/service/notification/Condition;

    goto :goto_1

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method private setRingerModeAsRingerIndex(I)V
    .locals 3
    .param p1, "ringerModeIndex"    # I

    .prologue
    .line 280
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRingerMode : ringerModeIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    if-eqz p1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 287
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setSelectedRingerModeText(I)V

    .line 299
    return-void
.end method

.method private setSelectedRingerModeText(I)V
    .locals 5
    .param p1, "ringerModeIndex"    # I

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "child":Landroid/widget/Button;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 309
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seSelectedRingerModeText : i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 311
    .restart local v0    # "child":Landroid/widget/Button;
    if-ne v1, p1, :cond_2

    .line 312
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ZenModePanel"

    const-string v3, "seSelectedRingerModeText : call setSelected(true)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 308
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ZenModePanel"

    const-string v3, "seSelectedRingerModeText : call setSelected(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 319
    :cond_4
    sget-boolean v2, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ZenModePanel"

    const-string v3, "seSelectedRingerModeText : call updateRingerState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v2, p1}, Lcom/android/systemui/volume/SegmentedButtons;->updateRingerState(I)V

    .line 321
    return-void
.end method

.method private updateWidgets()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x1

    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 572
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ZenModePanel"

    const-string v11, "***** Start updateWidgets *****"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v3

    .line 574
    .local v3, "zen":I
    if-nez v3, :cond_11

    move v6, v7

    .line 575
    .local v6, "zenOff":Z
    :goto_0
    if-ne v3, v7, :cond_12

    move v4, v7

    .line 576
    .local v4, "zenImportant":Z
    :goto_1
    if-ne v3, v13, :cond_13

    move v5, v7

    .line 577
    .local v5, "zenNone":Z
    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-nez v9, :cond_14

    iget-boolean v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    if-eqz v9, :cond_14

    move v0, v7

    .line 583
    .local v0, "expanded":Z
    :goto_3
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : mHidden = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : zenOff = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : zenImportant = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_3
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : zenNone = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_4
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : expanded = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_5
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : mExpanded = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mExpanded:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    iget-boolean v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-nez v9, :cond_15

    move v9, v8

    :goto_4
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    move v9, v8

    :goto_5
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    if-nez v0, :cond_17

    move v9, v8

    :goto_6
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsedDesc:Landroid/widget/TextView;

    if-nez v0, :cond_18

    move v9, v8

    :goto_7
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    if-eqz v4, :cond_19

    if-eqz v0, :cond_19

    move v9, v8

    :goto_8
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mSettingPanel:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1a

    if-eqz v0, :cond_1a

    move v9, v8

    :goto_9
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    if-nez v6, :cond_1b

    if-eqz v0, :cond_1b

    move v9, v8

    :goto_a
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : setText, mExitConditionText = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_7
    if-eqz v5, :cond_1c

    .line 603
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v11, 0x7f0d04af

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 604
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsedDesc:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadDescription:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_8
    :goto_b
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 623
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v9, v11

    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 624
    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mZenSubhead.getWidth() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mZenSubhead.getPaddingLeft() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mZenSubhead.getPaddingRight() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mMoreSettings.getWidth() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : call updateZenSubheadLayoutParams..expanded = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->updateZenSubheadLayoutParams(Z)V

    .line 631
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "ZenModePanel"

    const-string v11, "updateWidgets : call updateZenConditionLayoutParams"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenModePanel;->updateZenConditionLayoutParams(I)V

    .line 637
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 638
    .local v2, "ringerMode":I
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "ZenModePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateWidgets : ringerMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_b
    if-nez v0, :cond_24

    .line 640
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-nez v9, :cond_20

    if-eq v2, v7, :cond_c

    if-ne v2, v13, :cond_20

    .line 643
    :cond_c
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string v7, "ZenModePanel"

    const-string v9, "updateWidgets : call mZenButtons is VISIBLE #1"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 650
    :goto_c
    if-eqz v6, :cond_22

    .line 651
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_e

    const-string v7, "ZenModePanel"

    const-string v9, "updateWidgets : call mZenSubhead is GONE #2-2"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_10

    .line 654
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "ZenModePanel"

    const-string v9, "updateWidgets : call mZenSubhead is VISIBLE #2-3"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :cond_10
    :goto_d
    return-void

    .end local v0    # "expanded":Z
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "ringerMode":I
    .end local v4    # "zenImportant":Z
    .end local v5    # "zenNone":Z
    .end local v6    # "zenOff":Z
    :cond_11
    move v6, v8

    .line 574
    goto/16 :goto_0

    .restart local v6    # "zenOff":Z
    :cond_12
    move v4, v8

    .line 575
    goto/16 :goto_1

    .restart local v4    # "zenImportant":Z
    :cond_13
    move v5, v8

    .line 576
    goto/16 :goto_2

    .restart local v5    # "zenNone":Z
    :cond_14
    move v0, v8

    .line 577
    goto/16 :goto_3

    .restart local v0    # "expanded":Z
    :cond_15
    move v9, v10

    .line 591
    goto/16 :goto_4

    :cond_16
    move v9, v10

    .line 592
    goto/16 :goto_5

    :cond_17
    move v9, v10

    .line 593
    goto/16 :goto_6

    :cond_18
    move v9, v10

    .line 594
    goto/16 :goto_7

    :cond_19
    move v9, v10

    .line 595
    goto/16 :goto_8

    :cond_1a
    move v9, v10

    .line 596
    goto/16 :goto_9

    :cond_1b
    move v9, v10

    .line 597
    goto/16 :goto_a

    .line 606
    :cond_1c
    if-eqz v4, :cond_1d

    .line 607
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v11, 0x7f0d02f4

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 608
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitConditionText:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsedDesc:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadDescription:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 610
    :cond_1d
    if-eqz v6, :cond_8

    if-nez v0, :cond_8

    .line 611
    sget-boolean v9, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v9, :cond_1e

    const-string v9, "ZenModePanel"

    const-string v11, "updateWidgets : mZenSubheadExpanded.setVisibility VISIBLE"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1e
    const-string v9, "USA"

    sget-object v11, Lcom/android/systemui/volume/ZenModePanel;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 613
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v11, 0x7f0d04b2

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 617
    :goto_e
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsedDesc:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 615
    :cond_1f
    iget-object v9, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    const v11, 0x7f0d04b0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_e

    .line 646
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "ringerMode":I
    :cond_20
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_21

    const-string v7, "ZenModePanel"

    const-string v9, "updateWidgets : call mZenButtons is GONE #2"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_21
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v7, v10}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    goto/16 :goto_c

    .line 657
    :cond_22
    if-eqz v5, :cond_10

    .line 658
    if-nez v2, :cond_10

    .line 659
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_23

    const-string v7, "ZenModePanel"

    const-string v8, "updateWidgets : call mZenButtons is GONE #3"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_23
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v7, v10}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    goto/16 :goto_d

    .line 664
    :cond_24
    if-nez v2, :cond_26

    .line 665
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_25

    const-string v7, "ZenModePanel"

    const-string v8, "updateWidgets : call mZenButtons is GONE #3"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_25
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v7, v10}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    goto/16 :goto_d

    .line 668
    :cond_26
    sget-boolean v7, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v7, :cond_27

    const-string v7, "ZenModePanel"

    const-string v9, "updateWidgets : call mZenButtons is VISIBLE #4"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_27
    iget-object v7, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    goto/16 :goto_d
.end method

.method private updateZenConditionLayoutParams(I)V
    .locals 8
    .param p1, "zen"    # I

    .prologue
    .line 534
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZenModePanel"

    const-string v6, "***** Start updateZenConditionLayoutParams *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 536
    .local v0, "childCount":I
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ZenModePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateZenConditionLayoutParams : childCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    const/4 v1, 0x0

    .line 538
    .local v1, "childView":Landroid/view/View;
    const/4 v3, 0x0

    .line 540
    .local v3, "leftMargin":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    .line 541
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "ZenModePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateZenConditionLayoutParams : i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 543
    instance-of v5, v1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_5

    .line 544
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "ZenModePanel"

    const-string v6, "updateZenConditionLayoutParams : childView is RelativeLayout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    .line 546
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "ZenModePanel"

    const-string v6, "updateZenConditionLayoutParams : ZEN_MODE_NO_INTERRUPTIONS #1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 554
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 555
    .local v4, "lparam":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 556
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    .end local v4    # "lparam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_6
    sget-boolean v5, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "ZenModePanel"

    const-string v6, "updateZenConditionLayoutParams : ZEN_MODE_IMPORTANT_INTERRUPTIONS or ZEN_MODE_OFF #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c03d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 559
    :cond_8
    return-void
.end method

.method private updateZenSubheadLayoutParams(Z)V
    .locals 5
    .param p1, "expanded"    # Z

    .prologue
    const v4, 0x7f0c03da

    .line 675
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModePanel"

    const-string v2, "***** Start updateZenSubheadLayoutParams *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 678
    .local v0, "lparams":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenSubheadLayoutParams : expanded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    if-eqz p1, :cond_3

    .line 680
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 690
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    return-void

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 684
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 685
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ZenModePanel"

    const-string v2, "updateZenSubheadLayoutParams : exception case #1.. mZenButtons is visible.. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ZenModePanel"

    const-string v2, "updateZenSubheadLayoutParams : exception case #1.. set height_expand.. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentZenMode()I
    .locals 2

    .prologue
    .line 562
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    .line 563
    .local v0, "zen":I
    return v0
.end method

.method public getHorizontalDividerUpSoundMode()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHorizontalDividerUpSoundMode:Landroid/view/View;

    return-object v0
.end method

.method public getSegmentedButtonsPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    return-object v0
.end method

.method public getSettingPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSettingPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSoundModePanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModePanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSubheadPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    return-object v0
.end method

.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 3
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 407
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getExitCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExitCondition(Landroid/service/notification/Condition;)V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->refreshExitConditionText()V

    .line 409
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 410
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "init: call handleUpdateZen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->handleUpdateZen(I)V

    .line 412
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mExitCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 415
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 325
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 326
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenToast:Lcom/android/systemui/volume/ZenToast;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenToast;->hide()V

    .line 328
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->getSelectedZen(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 329
    iget v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    iput v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 330
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->copy(Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->refreshExitConditionText()V

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    .line 334
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "onAttachedToWindow : call setSelectedRingerModeText()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 336
    .local v0, "ringerMode":I
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSelectedRingerModeText(I)V

    .line 337
    return-void
.end method

.method public onClickSubheadExpand()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SegmentedButtons;->setVisibility(I)V

    .line 232
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 341
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 342
    sget-boolean v0, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->checkForAttachedZenChange()V

    .line 344
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mAttachedZen:I

    .line 345
    iput v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionZen:I

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setExpanded(Z)V

    .line 348
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 158
    const v1, 0x7f0e03dd

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 159
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d02fe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 160
    const-string v1, "USA"

    sget-object v2, Lcom/android/systemui/volume/ZenModePanel;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d04b4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d04b3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 172
    const v1, 0x7f0e03d9

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubhead:Landroid/view/View;

    .line 174
    const v1, 0x7f0e03da

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f0e005c

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsedDesc:Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadCollapsed:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 184
    const v1, 0x7f0e03db

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenSubheadExpanded:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 187
    const v1, 0x7f0e03dc

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/ZenModePanel$1;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mInteractionCallback:Lcom/android/systemui/volume/Interaction$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 196
    const v1, 0x7f0e03de

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenConditions:Landroid/widget/LinearLayout;

    .line 198
    const v1, 0x7f0e0055

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSettingPanel:Landroid/widget/RelativeLayout;

    .line 200
    const v1, 0x7f0e0051

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModePanel:Landroid/widget/LinearLayout;

    .line 202
    const v1, 0x7f0e0052

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeMuteButton:Landroid/widget/Button;

    .line 203
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeMuteButton:Landroid/widget/Button;

    const v3, 0x7f0d0367

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/volume/SegmentedButtons;->setSegButtonClickListener(Landroid/widget/Button;ILjava/lang/Object;)V

    .line 206
    const v1, 0x7f0e0053

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeVibrateButton:Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeVibrateButton:Landroid/widget/Button;

    const v3, 0x7f0d0366

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/volume/SegmentedButtons;->setSegButtonClickListener(Landroid/widget/Button;ILjava/lang/Object;)V

    .line 210
    const v1, 0x7f0e0054

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeSoundButton:Landroid/widget/Button;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mSoundModeSoundButton:Landroid/widget/Button;

    const v3, 0x7f0d0365

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/volume/SegmentedButtons;->setSegButtonClickListener(Landroid/widget/Button;ILjava/lang/Object;)V

    .line 213
    const v1, 0x7f0e005b

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHorizontalDividerUpSoundMode:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 216
    .local v0, "ringerMode":I
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSelectedRingerModeText(I)V

    .line 226
    return-void

    .line 165
    .end local v0    # "ringerMode":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d0300

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d04b1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 499
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    if-ne v0, p1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/ZenModePanel;->mHidden:Z

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel;->updateWidgets()V

    goto :goto_0
.end method

.method public setSelectedRingerModeText()V
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 303
    .local v0, "ringerMode":I
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel;->setSelectedRingerModeText(I)V

    .line 304
    return-void
.end method

.method public showSilentHint()V
    .locals 4

    .prologue
    const v3, 0x3f8ccccd    # 1.1f

    .line 502
    sget-boolean v1, Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;

    const-string v2, "showSilentHint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "noneButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 506
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 507
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/ZenModePanel$3;-><init>(Lcom/android/systemui/volume/ZenModePanel;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public updateButtonText()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->removeAllViews()V

    .line 419
    const v1, 0x7f0e03dd

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/ZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 420
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d02fe

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 421
    const-string v1, "USA"

    sget-object v2, Lcom/android/systemui/volume/ZenModePanel;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d04b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 423
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d04b3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->udpateLocaleForSoundModeText()V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringMutePrefix:Ljava/lang/String;

    .line 435
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringVibratePrefix:Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mSubheadStringSoundPrefix:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0d026a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "settingsText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mMoreSettings:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void

    .line 426
    .end local v0    # "settingsText":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d0300

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const v2, 0x7f0d04b1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(ILjava/lang/Object;)V

    goto :goto_0
.end method
