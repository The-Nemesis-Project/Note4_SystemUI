.class public Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;
.super Landroid/widget/LinearLayout;
.source "SeckeyguardClockDualImageView.java"


# static fields
.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final MSG_SINGLE_CLOCK_SETTINGS_CHANGED:I = 0x66

.field public static TAG:Ljava/lang/String;


# instance fields
.field private DAYS_WEEK:[I

.field private DIGITS:[I

.field private HOME_ZONE:I

.field private MONTH_YEAR:[I

.field private ROAMING_ZONE:I

.field private mAMPM_home:Landroid/widget/ImageView;

.field private mAMPM_roam:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mDay10thView_home:Landroid/widget/ImageView;

.field private mDay10thView_roam:Landroid/widget/ImageView;

.field private mDay1thView_home:Landroid/widget/ImageView;

.field private mDay1thView_roam:Landroid/widget/ImageView;

.field private mDayView_home:Landroid/widget/ImageView;

.field private mDayView_roam:Landroid/widget/ImageView;

.field private mDualClockSettingsObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field mHomeClockViewContainer:Landroid/widget/LinearLayout;

.field private mHomeDateAndTimeContainerVisible:Z

.field private mHomeDateContainerVisible:Z

.field mHomeDateViewContainer:Landroid/widget/LinearLayout;

.field private mHomeText:Landroid/widget/TextView;

.field private mHour10th_home:Landroid/widget/ImageView;

.field private mHour10th_roam:Landroid/widget/ImageView;

.field private mHour1th_home:Landroid/widget/ImageView;

.field private mHour1th_roam:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMin10th_home:Landroid/widget/ImageView;

.field private mMin10th_roam:Landroid/widget/ImageView;

.field private mMin1th_home:Landroid/widget/ImageView;

.field private mMin1th_roam:Landroid/widget/ImageView;

.field private mMonthDescView_home:Landroid/widget/ImageView;

.field private mMonthDescView_roam:Landroid/widget/ImageView;

.field private mRoamDateAndTimeContainerVisible:Z

.field private mRoamDateContainerVisible:Z

.field mRoamingClockViewContainer:Landroid/widget/LinearLayout;

.field mRoamingDateViewContainer:Landroid/widget/LinearLayout;

.field private mRoamingText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SeckeyguardClockDualImageView"

    sput-object v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateContainerVisible:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateAndTimeContainerVisible:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateContainerVisible:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateAndTimeContainerVisible:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->day7:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->day1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->day2:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->day3:I

    aput v1, v0, v6

    sget v1, Lcom/android/keyguard/R$drawable;->day4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->day5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->day6:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DAYS_WEEK:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->month1:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->month2:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->month3:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->month4:I

    aput v1, v0, v6

    sget v1, Lcom/android/keyguard/R$drawable;->month5:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->month6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->month7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->month8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->month9:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->month10:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/keyguard/R$drawable;->month11:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/keyguard/R$drawable;->month12:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->MONTH_YEAR:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    iput v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    iput v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->updateClock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->isShowDateOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateContainerVisible:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateContainerVisible:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->isShowDateOn()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateAndTimeContainerVisible:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->isShowDateOn()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private isShowDateOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAMPM(II)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_home:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_0

    sget v0, Lcom/android/keyguard/R$drawable;->clock_pm:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->clock_am:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_roam:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_2

    sget v0, Lcom/android/keyguard/R$drawable;->clock_pm:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/keyguard/R$drawable;->clock_am:I

    goto :goto_2
.end method

.method private setDate(II)V
    .locals 4

    rem-int/lit8 v1, p1, 0xa

    div-int/lit8 v0, p1, 0xa

    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay1thView_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay10thView_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay1thView_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay10thView_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setDay(II)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDayView_home:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DAYS_WEEK:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDayView_roam:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DAYS_WEEK:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setHour(II)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v2, :cond_2

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v1, p1, 0xa

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    div-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    rem-int/lit8 v1, p1, 0xa

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    div-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(II)V
    .locals 4

    rem-int/lit8 v1, p1, 0xa

    div-int/lit8 v0, p1, 0xa

    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setMonth(II)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMonthDescView_home:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->MONTH_YEAR:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMonthDescView_roam:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->MONTH_YEAR:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateClock()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v22, "HOME CLOCK "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "min : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "hour : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "AM_PM : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "hour_day : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "day_of_week : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "date : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "month : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateAndTimeContainerVisible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(II)V

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMin(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setAMPM(II)V

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateContainerVisible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setDate(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setDay(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMonth(II)V

    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v21, 0xc

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v22, "Roaming Clock "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "min : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "hour : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "AM_PM : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "hour_day : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "day_of_week : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "date : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "month : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateAndTimeContainerVisible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(II)V

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMin(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v21

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setAMPM(II)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateContainerVisible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setDate(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setDay(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMonth(II)V

    :goto_6
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    :cond_1
    if-nez v12, :cond_2

    const/16 v21, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(II)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(II)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_home:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeClockViewContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateViewContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    if-nez v15, :cond_7

    const/16 v21, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(II)V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(II)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_roam:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v4, "24"

    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    return v5

    :cond_0
    const-string v4, "12"

    goto :goto_0

    :cond_1
    const-string v4, "12"

    goto :goto_0

    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeClockViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateAndTimeContainerVisible:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateAndTimeContainerVisible:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_home:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_roam:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->isShowDateOn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateContainerVisible:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamDateContainerVisible:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->updateClock()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_home:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_roam:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget-object v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v1, "On finish inflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeClockViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->hour_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->hour_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->am_pm_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_date_containerr:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeDateViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->day_view_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDayView_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->day_digit_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay10thView_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->day_digit_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay1thView_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->month_description_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMonthDescView_home:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingClockViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->hour_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->hour_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->minute_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->am_pm_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAMPM_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_date_containerr:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingDateViewContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->day_view_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDayView_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->day_digit_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay10thView_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->day_digit_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDay1thView_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->month_description_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMonthDescView_roam:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->roaming_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mRoamingText:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->home_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHomeText:Landroid/widget/TextView;

    return-void
.end method
