.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverDualClockWidget.java"


# static fields
.field private static final CLOCK_UPDATE_DELAY:J = 0x7d0L

.field private static TAG:Ljava/lang/String; = null

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mHomeAmPm:Landroid/widget/TextView;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeClock:Landroid/widget/LinearLayout;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeClockView:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingAmPm:Landroid/widget/TextView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClock:Landroid/widget/LinearLayout;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingClockView:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->MSG_CLOCK_UPDATE:I

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->initClock(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "DualClock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyyy"

    const-string v4, "MM"

    const-string v0, "dd"

    const-string v1, "-"

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    :cond_0
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 18

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    sget-object v14, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initClock() : TimeZone ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v14, "ja_JP"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "K:mm"

    sput-object v14, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v14

    const-string v15, "homecity_timezone"

    invoke-virtual {v14, v15}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v14, :cond_e

    const-string v14, "kk:mm"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v14, :cond_2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x31

    if-ne v14, v15, :cond_3

    :try_start_0
    const-string v14, "UTF-8"

    invoke-static {v11, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v14, :cond_5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const-string v15, "AA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v14, :cond_8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v14, :cond_10

    const-string v14, "kk:mm"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x31

    if-ne v14, v15, :cond_7

    :try_start_1
    const-string v14, "UTF-8"

    invoke-static {v3, v14}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const-string v15, "AA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_8
    :goto_6
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    sget v7, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v8, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v14, :cond_12

    sget v7, Lcom/sec/android/sviewcover/R$string;->clear_cover_month_day_no_year:I

    sget v8, Lcom/sec/android/sviewcover/R$string;->clear_cover_day_month_no_year:I

    :goto_7
    const-string v14, "yyyy-MM-dd"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "MM-dd-yyyy"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v16, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v2, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v2, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    return-void

    :cond_d
    const-string v14, "h:mm"

    sput-object v14, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    sget-object v14, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v12

    goto/16 :goto_1

    :catch_0
    move-exception v9

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    sget-object v14, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_4

    :catch_1
    move-exception v9

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    sget v7, Lcom/sec/android/sviewcover/R$string;->sview_cover_dual_wday_month_day_no_year:I

    sget v8, Lcom/sec/android/sviewcover/R$string;->sview_cover_dual_wday_day_month_no_year:I

    goto/16 :goto_7

    :cond_13
    sget v7, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v8, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto/16 :goto_7

    :cond_14
    const-string v14, "dd-MM-yyyy"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_3

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_clock:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_clock:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->refreshClock()V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshClock()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
